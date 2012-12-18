 -- +-Module--------------------------------------------+
 -- |                   PRNG CORE                       |
 -- +-Author--------------------------------------------+
 -- |                                                   |
 -- | + Manuel Pineda                                   |
 -- | + Email : manuel.felipe.pineda@gmail.com          |
 -- | + Website : github.com/pin3da                     |
 -- |                                                   |
 -- +-Information---------------------------------------+
 -- |                                                   |
 -- | + Pseudorandom number generator bassed on         |
 -- |   shrinking generator                             |
 -- | + Provides the necessary control to generate      |
 -- |   pseudorandom numbers, and send them through     |
 -- |   rs232.                                          |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + clk          : IN - 50MHz Clock                 |
 -- | + serial_in    : IN - Seed for shrinking generator|
 -- | + serial_out   : OUT - pseudo random data(bits)   |
 -- +---------------------------------------------------+
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Prng is
    Port ( clk : in  STD_LOGIC;
		   reset : in STD_LOGIC;	
           serial_in : in  STD_LOGIC;
           serial_out : out  STD_LOGIC);
end Prng;

architecture arch_prng of Prng is

COMPONENT lfsr_127
	PORT(
		lfsr_in : IN std_logic_vector(126 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;          
		lfsr_out : OUT std_logic
		);
	END COMPONENT;
  
COMPONENT lfsr_128
	PORT(
		lfsr_in : IN std_logic_vector(127 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;          
		lfsr_out : OUT std_logic
		);
	END COMPONENT;
   
COMPONENT ram
	PORT(
		clk : IN std_logic;
		we : IN std_logic;
		en : IN std_logic;
		di : IN std_logic_vector(127 downto 0);          
		do : OUT std_logic_vector(127 downto 0)
		);
	END COMPONENT;

COMPONENT modulorx
	PORT(
		reset : IN std_logic;
		enable115200 : IN std_logic;
		enableRecep : IN std_logic;
		serialIn : IN std_logic;          
		recepOk : OUT std_logic;
		rxout : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;   
   
COMPONENT modulotx
	PORT(
		reset : IN std_logic;
		enable115200 : IN std_logic;
		enableTrans : IN std_logic;
		data : IN std_logic_vector(7 downto 0);          
		transOk : OUT std_logic;
		serialOut : OUT std_logic
		);
	END COMPONENT;
   
COMPONENT decode_ram
	PORT(
		current_block : IN std_logic_vector(3 downto 0);
		ram_data : IN std_logic_vector(127 downto 0);          
		out_data_rx : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
   
COMPONENT Encode_ram
	PORT(
		current_data : IN std_logic_vector(7 downto 0);
		current_block : IN std_logic_vector(3 downto 0);          
		out_ram : OUT std_logic_vector(127 downto 0)
		);
	END COMPONENT;
   
COMPONENT div_115200
	PORT(
		clkfpga : IN std_logic;
		reset : IN std_logic;          
		enable115200 : OUT std_logic
		);
	END COMPONENT;
   
COMPONENT Control
	PORT(
		reset : IN std_logic;
		serial_in : IN std_logic;
		clk : IN std_logic;
		recep_ok : IN std_logic;
		fill_ok : IN std_logic;
		trans_ok : IN std_logic;          
		enable_rec : OUT std_logic;
		current_block_encode : OUT std_logic_vector(3 downto 0);
		we_ram_trans : OUT std_logic;
		en_ram_trans : OUT std_logic;
		reset_lfsr1 : OUT std_logic;
		reset_lfsr2 : OUT std_logic;
		reset_fill : OUT std_logic;
		reset_tx : OUT std_logic;
		reset_rx : OUT std_logic;
		current_block_decode : OUT std_logic_vector(3 downto 0);
		enable_trans : OUT std_logic
		);
	END COMPONENT;
   
COMPONENT shrinking_generator
	PORT(
		reset : IN std_logic;
		lfsr1 : IN std_logic;
		lfsr2 : IN std_logic;
		ram_state : IN std_logic_vector(127 downto 0);          
		to_ram : OUT std_logic_vector(127 downto 0);
		fill_ok : OUT std_logic
		);
	END COMPONENT;

-- Internal signals 

signal cu_reset_lfsr1     : std_logic; 
signal lfsr1_to_sg        : std_logic;
signal cu_reset_lfsr2     : std_logic; 
signal lfsr2_to_sg        : std_logic;
signal cu_trans_we        : std_logic;
signal cu_trans_en        : std_logic;
signal encoder_to_ram     : std_logic_vector (127 downto 0);
signal sg_to_ram          : std_logic_vector (127 downto 0);
signal ram_to_dec         : std_logic_vector (127 downto 0);
signal cu_reset_rx        : std_logic;
signal clk_115200         : std_logic;
signal cu_enable_rx       : std_logic;
signal rx_recepok_cu      : std_logic;
signal rx_to_encode       : std_logic_vector (7 downto 0);
signal cu_reset_tx        : std_logic;
signal cu_enable_tx       : std_logic;
signal tx_transok_cu      : std_logic;
signal dec_data_tx        : std_logic_vector (7 downto 0);
signal cu_current_encode  : std_logic_vector (3 downto 0);
signal cu_current_decode  : std_logic_vector (3 downto 0);
signal sg_fillok_cu       : std_logic;
signal cu_reset_sg        : std_logic;

-- Intergal signals

begin
    

    
	Inst_lfsr_127: lfsr_127 PORT MAP(
		lfsr_in => encoder_to_ram(126 downto 0),
		clk => clk,
		reset => cu_reset_lfsr2,
		lfsr_out => lfsr2_to_sg
	);
   
   Inst_lfsr_128: lfsr_128 PORT MAP(
		lfsr_in => encoder_to_ram,
		clk => clk,
		reset => cu_reset_lfsr1,
		lfsr_out => lfsr1_to_sg
	);
   
   Inst_ram_trans: ram PORT MAP(
		clk => clk,
		we => cu_trans_we,
		en => cu_trans_en,
		di => sg_to_ram,
		do => ram_to_dec
	);
   
  	Inst_modulorx: modulorx PORT MAP(
		reset => cu_reset_rx,
		enable115200 => clk_115200,
		enableRecep => cu_enable_rx,
		serialIn => serial_in,
		recepOk => rx_recepok_cu,
		rxout => rx_to_encode
	);
	
   Inst_modulotx: modulotx PORT MAP(
		reset => cu_reset_tx ,
		enable115200 => clk_115200,
		enableTrans => cu_enable_tx,
		transOk => tx_transok_cu,
		data => dec_data_tx,
		serialOut => serial_out
	);
   
   Inst_Encode_ram: Encode_ram PORT MAP(
		current_data => rx_to_encode,
		current_block => cu_current_encode,
		out_ram => encoder_to_ram
	);
   
   Inst_decode_ram: decode_ram PORT MAP(
		current_block => cu_current_decode,
		ram_data => ram_to_dec,
		out_data_rx => dec_data_tx
	);
   
  	Inst_div_115200: div_115200 PORT MAP(
		clkfpga => clk,
		reset => reset,
		enable115200 => clk_115200
	);

   
   Inst_Control: Control PORT MAP(
		reset => reset,
		serial_in => serial_in,
		clk => clk,
		recep_ok => rx_recepok_cu ,
		fill_ok => sg_fillok_cu,
		trans_ok => tx_transok_cu,
		enable_rec => cu_enable_rx,
		current_block_encode => cu_current_encode,
		we_ram_trans => cu_trans_we,
		en_ram_trans => cu_trans_en,
		reset_lfsr1 => cu_reset_lfsr1,
		reset_lfsr2 => cu_reset_lfsr2,
		reset_fill => cu_reset_sg,
		reset_tx => cu_reset_tx,
		reset_rx => cu_reset_rx,
		current_block_decode => cu_current_decode,
		enable_trans => cu_enable_tx
	);
	Inst_shrinking_generator: shrinking_generator PORT MAP(
		reset => cu_reset_sg ,
		lfsr1 => lfsr1_to_sg,
		lfsr2 => lfsr2_to_sg,
		ram_state => ram_to_dec,
		to_ram => sg_to_ram,
		fill_ok => sg_fillok_cu
	);   

end arch_prng;

