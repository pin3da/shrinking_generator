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
           serial_in : in  STD_LOGIC;
           serial_out : out  STD_LOGIC);
end Prng;

architecture arch_prng of Prng is

COMPONENT lfsr_127
	PORT(
		lfsr_in : IN std_logic_vector(127 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;          
		lfsr_out : OUT std_logic_vector(127 downto 0)
		);
	END COMPONENT;
  
COMPONENT lfsr_128
	PORT(
		lfsr_in : IN std_logic_vector(127 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;          
		lfsr_out : OUT std_logic_vector(127 downto 0)
		);
	END COMPONENT;
   
COMPONENT ram
	PORT(
		clk : IN std_logic;
		we : IN std_logic;
		en : IN std_logic;
		addr : IN std_logic_vector(3 downto 0);
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

begin

	Inst_lfsr_127: lfsr_127 PORT MAP(
		lfsr_in => ,
		clk => ,
		reset => ,
		lfsr_out => 
	);
   
   Inst_lfsr_128: lfsr_128 PORT MAP(
		lfsr_in => ,
		clk => ,
		reset => ,
		lfsr_out => 
	);
   
   Inst_ram_receiver: ram PORT MAP(
		clk => ,
		we => ,
		en => ,
		addr => ,
		di => ,
		do => 
	);
   
   Inst_ram_trans: ram PORT MAP(
		clk => ,
		we => ,
		en => ,
		addr => ,
		di => ,
		do => 
	);
   
  	Inst_modulorx: modulorx PORT MAP(
		reset => ,
		enable115200 => ,
		enableRecep => ,
		serialIn => ,
		recepOk => ,
		rxout => 
	);
	
   Inst_modulotx: modulotx PORT MAP(
		reset => ,
		enable115200 => ,
		enableTrans => ,
		transOk => ,
		data => ,
		serialOut => 
	);


end arch_prng;

