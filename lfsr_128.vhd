 -- +-Module--------------------------------------------+
 -- |                   LFSR CORE                       |
 -- +-Author--------------------------------------------+
 -- |                                                   |
 -- | + Manuel Pineda                                   |
 -- | + Website : github.com/pin3da                     |
 -- | + Email : manuel.felipe.pineda@gmail.com          |
 -- | + Carlos Gonz�lez                                 |
 -- | + Website : github.com/caal-15                    |
 -- | + Email : caal.0522@gmail.com                     |
 -- |                                                   |
 -- +-Information---------------------------------------+
 -- |                                                   |
 -- | + Implements linear feedback shift register to be |
 -- |   used in a shrinking generator which lenght is   |
 -- |   128 bits                                        |
 -- |                                                   |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + clk                : IN - 50MHz Clock           |
 -- | + reset              : IN - Reset (Active High)   |
 -- | + lfsr_in            : IN - Seed of lfsr          |
 -- | + lfsr_out           : OUT - final state of lfsr  |
 -- +---------------------------------------------------+

library ieee;
use ieee.std_logic_1164.all;
entity lfsr_128 is

  generic(constant N: integer := 128);

  port (
	 lfsr_in   :  in std_logic_vector (N-1 downto 0);
     clk       :  in  std_logic;
     reset     :  in  std_logic;
     lfsr_out  :  out std_logic
  );
end entity;

architecture arhc_lfsr of lfsr_128 is
   signal lfsr_tmp    :  std_logic_vector (N-1 downto 0):= (0=>'1',others=>'0');
   constant polynome  :  std_logic_vector (N-1 downto 0):= X"A0000014000000000000000000000000";
begin
   	process (clk, reset, lfsr_in, lfsr_tmp) 
    	variable lsb        : std_logic;   
     	variable ext_inbit  : std_logic_vector (N-1 downto 0) ;
 	begin 
  		lsb := lfsr_tmp(0);
    	for i in 0 to N-1 loop   
        	ext_inbit(i):= lsb;   
    	end loop;
  		if (reset = '1') then
    		lfsr_tmp <= lfsr_in;
  		elsif (rising_edge(clk)) then
    		lfsr_tmp <= ( '0' & lfsr_tmp(N-1 downto 1) ) xor ( ext_inbit and polynome );
  		end if;
  	end process;
    lfsr_out <= lfsr_tmp(N-1);
end architecture;
