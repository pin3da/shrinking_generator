 -- +-Module--------------------------------------------+
 -- |                   RAM 128 TO 8 DECODER            |
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
 -- | + Takes 8 bits out of the 128 bits retrieved from |    
 -- | + RAM and sends them to the tx to be transmitted  |
 -- | + serially                                        |
 -- |                                                   |
 -- |                                                   |
 -- |                                                   |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + ram_data   : IN - Data to be sent               |
 -- | + current_block  : IN - Block of the 128 bits to  |
 -- |                    be sent, 8 bits each           |
 -- | + out_data       : OUT - 8 bit data to be sent    | 
 -- |                    to the tx                      |
 -- +---------------------------------------------------+
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decode_ram is
    Port ( current_block : in  STD_LOGIC_VECTOR (3 downto 0);
           ram_data : in  STD_LOGIC_VECTOR (127 downto 0);
           out_data_tx : out  STD_LOGIC_VECTOR (7 downto 0));
end decode_ram;

architecture arch_decode_ram of decode_ram is

begin
   process(current_block, ram_data) begin
      case current_block is
         when X"0" => out_data_tx <= ram_data(127 downto 120);
         when X"1" => out_data_tx <= ram_data(119 downto 112);
         when X"2" => out_data_tx <= ram_data(111 downto 104);
         when X"3" => out_data_tx <= ram_data(103 downto 96);
         when X"4" => out_data_tx <= ram_data(95 downto 88);
         when X"5" => out_data_tx <= ram_data(87 downto 80);
         when X"6" => out_data_tx <= ram_data(79 downto 72);
         when X"7" => out_data_tx <= ram_data(71 downto 64);
         when X"8" => out_data_tx <= ram_data(63 downto 56);
         when X"9" => out_data_tx <= ram_data(55 downto 48);
         when X"A" => out_data_tx <= ram_data(47 downto 40);
         when X"B" => out_data_tx <= ram_data(39 downto 32);
         when X"C" => out_data_tx <= ram_data(31 downto 24);
         when X"D" => out_data_tx <= ram_data(23 downto 16);
         when X"E" => out_data_tx <= ram_data(15 downto 8);
         when others => out_data_tx <= ram_data(7 downto 0);
      end case;
   end process;

end arch_decode_ram;

