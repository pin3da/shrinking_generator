 -- +-Module--------------------------------------------+
 -- |                  CONTROL UNIT                     |
 -- +-Author--------------------------------------------+
 -- |                                                   |
 -- | + Manuel Pineda                                   |
 -- | + Website : github.com/pin3da                     |
 -- | + Email : manuel.felipe.pineda@gmail.com          |
 -- | + Carlos González                                 |
 -- | + Website : github.com/caal-15                    |
 -- | + Email : caal.0522@gmail.com                     |
 -- |                                                   |
 -- +-Information---------------------------------------+
 -- |                                                   |
 -- | + Determines the control for the aplication       |
 -- |   That is, determines the blocks for Ram decoders |
 -- |   and encoders, the ram address, and when should  |
 -- |   the rx and tx receive and transmit              |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + reset     : IN - Reset (Active High)            |
 -- | + serial_in : IN - Serial input (seed for lfsr)   |
 -- | + clk       : IN - 50Mhz Clock                    |
 -- | + recep_ok  : IN - Reception successful           |
 -- | + fill_ok   : IN - Fill successfull (8bit from SG)|
 -- | + trans_ok  : IN - Transmission successful        |
 -- | + enable_rec: OUT - Enables data reception        |
 -- | + current_block_encode: OUT - current block for   |
 -- |                         Ram encoder               |
 -- | + we_ram_trans: OUT - write enable for RAM        |
 -- | + en_ram_trans: OUT - Clock Enable for Ram        |
 -- | + reset_lfsr1: OUT - resets lfsr1 (Active High)   |
 -- | + reset_lfsr2: OUT - resets lfsr2 (Active High)   |
 -- | + rset_fill : OUT - Resets the shrinking generator|
 -- | + reset_tx  : OUT - Resets the tx (Active High)   |
 -- | + reset_rx  : OUT - Resets the rx (Active High)   |
 -- | + current_block_decode: OUT - current block for   |
 -- |                         Ram decoder               |
 -- | + enable_trans: OUT - Enables data transmission   |
 -- +---------------------------------------------------+

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity Control is
    Port ( reset : in  STD_LOGIC;
		     serial_in: in STD_LOGIC;
           clk : in  STD_LOGIC;
           recep_ok : in  STD_LOGIC;
           fill_ok : in  STD_LOGIC;
           trans_ok : in  STD_LOGIC;
           enable_rec : out  STD_LOGIC;
           current_block_encode : out  STD_LOGIC_VECTOR (3 downto 0);
           we_ram_trans : out  STD_LOGIC;
           en_ram_trans : out  STD_LOGIC;
           reset_lfsr1 : out  STD_LOGIC;
           reset_lfsr2 : out  STD_LOGIC;
           reset_fill : out  STD_LOGIC;
           reset_tx : out STD_LOGIC;
           reset_rx : out STD_LOGIC;
           current_block_decode : out  STD_LOGIC_VECTOR (3 downto 0);
           enable_trans : out  STD_LOGIC);
end Control;

architecture arch_control of Control is

TYPE states IS (receiving, store, shrinking,send);
signal state : states;
signal rec_counter: integer range 0 to 16; -- due to input size + one state invalid
signal trans_counter: integer range 0 to 16; -- same rec_counter
signal only_once : std_logic;
signal tmp : std_logic;
signal transmitting : std_logic;
   

begin
	process(reset,clk,serial_in,recep_ok,fill_ok,trans_ok)begin
		if(reset = '1')then
			state <= receiving;
			current_block_encode <= X"0";
			current_block_decode <= X"0";
			enable_trans <= '0';
			enable_rec <= '0';
			reset_lfsr1 <= '1';
			reset_lfsr1 <= '1';
			reset_fill <= '1';
			reset_tx <= '1';
			rec_counter <= 0;
			trans_counter <= 0;
			only_once <= '0';
			we_ram_trans <= '0';
			en_ram_trans <= '0';
            tmp<='0';
			transmitting <= '0';
		elsif (rising_edge(clk)) then
			if(state = receiving) then
				if(rec_counter < 16) then
					current_block_encode <= conv_std_logic_vector(rec_counter,4);
		            reset_rx <= '0';
					if(serial_in = '0' and tmp = '0')then
						enable_rec <= '1';
                  		reset_rx <= '1';
 		                tmp <= '1';
					end if;
					if(recep_ok = '1') then 
						enable_rec <= '0';
						rec_counter <= rec_counter + 1;
                        tmp<='0';
					end if;
				else
					state <= store;
				end if;
			elsif (state = store) then
				reset_lfsr1 <= '1';
				reset_lfsr2 <= '1';
				state <= shrinking;
			elsif (state = shrinking) then
				reset_lfsr1 <= '0';
				reset_lfsr2 <= '0';
				we_ram_trans <= '1';
				en_ram_trans <= '1';
				if (only_once = '0') then
					reset_fill <= '1';
					only_once <= '1';
				else
					reset_fill <= '0';
					if(fill_ok = '1') then
						state<= send;
						we_ram_trans <= '0';
						transmitting <= '0';
					end if;
				end if;	
			elsif (state = send)then
				if(trans_counter < 16) then
					current_block_decode <=	conv_std_logic_vector(trans_counter,4);
					en_ram_trans <= '1';
					if(transmitting = '0')then
						reset_tx <= '1';
						enable_trans <= '1';
						transmitting <= '1';
					elsif (transmitting = '1') then
						reset_tx <= '0';
						if (trans_ok = '1') then
							trans_counter <= trans_counter +1;
							enable_trans<='0';
							transmitting <= '0';
						end if;
					end if;
				else
					only_once <= '0';
					reset_fill<= '1';
					trans_counter <= 0;
					state <= shrinking;
				end if;
			end if;
		end if;
	end process;


end arch_control;
