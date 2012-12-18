 -- +-Module--------------------------------------------+
 -- |         MAIN CORE - SHRINKING GENERATOR           |
 -- +-Author--------------------------------------------+
 -- |                                                   |
 -- | + Manuel Pineda                                   |
 -- | + Email : manuel.felipe.pineda@gmail.com          |
 -- | + Website : github.com/pin3da                     |
 -- |                                                   |
 -- +-Information---------------------------------------+
 -- |                                                   |
 -- | + Contols dataflow for shrinking generator        |
 -- | + Store bits until fill the transmition ram       |
 -- | + Information and references in documentation.    | 
 -- +-IO Description------------------------------------+
 -- | + reset      : IN - Defines an initial state      |
 -- | + lfsr1      : IN - Data from lfsr1 (128 bits)    |
 -- | + lfsr2      : IN - Data from lfsr1 (127 bits)    |
 -- | + ram_state  : IN - Current state of ram          |
 -- | + to_ram     : OUT - Data to ram (128 bits)       |
 -- | + fill_ok    : OUT - Indicates that ram is full   |
 -- +---------------------------------------------------+
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity shrinking_generator is
    Port ( reset      : in  STD_LOGIC;
           lfsr1      : in  STD_LOGIC;
           lfsr2      : in  STD_LOGIC;
           ram_state : in  STD_LOGIC_VECTOR (127 downto 0);
           to_ram     : out  STD_LOGIC_VECTOR (127 downto 0);
           fill_ok    : out  STD_LOGIC);
end shrinking_generator;

architecture arch_shrinking_generator of shrinking_generator is

signal counter : integer range 0 to 127;
signal tmp: std_logic_vector (127 downto 0) := (others => '0');

begin 
   process(reset,lfsr1,lfsr2,ram_state) begin
      if(reset = '1')then
         counter <= 0;
         fill_ok <= '0';
		 tmp <= (others => '0');
      else
         tmp <= ram_state;
         if(counter = 127)then
            fill_ok <= '1';
         elsif(lfsr2 = '1')then
            tmp(counter)<= lfsr1;
            counter <= counter +1;
         end if;
      end if;
   end process;
   to_ram<=tmp;
end arch_shrinking_generator;

