-- Copia lo que lee el rx a la ram.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encode_ram is
    Port ( current_data : in  STD_LOGIC_VECTOR (7 downto 0);
           current_block : in  STD_LOGIC_VECTOR (3 downto 0);
           out_ram : out  STD_LOGIC_VECTOR (127 downto 0));
end Encode_ram;

architecture arch_en_ram of Encode_ram is

signal tmp : std_logic_vector(127 downto 0) := (others => '1');

begin
   process(current_data,current_block) begin
      case current_block is
         when X"0" => tmp(127 downto 120)<=current_data;
         when X"1" => tmp(119 downto 112)<=current_data;
         when X"2" => tmp(111 downto 104)<=current_data;
         when X"3" => tmp(103 downto 96)<=current_data;
         when X"4" => tmp(95 downto 88)<=current_data;
         when X"5" => tmp(87 downto 80)<=current_data;
         when X"6" => tmp(79 downto 72)<=current_data;
         when X"7" => tmp(71 downto 64)<=current_data;
         when X"8" => tmp(63 downto 56)<=current_data;
         when X"9" => tmp(55 downto 48)<=current_data;
         when X"A" => tmp(47 downto 40)<=current_data;
         when X"B" => tmp(39 downto 32)<=current_data;
         when X"C" => tmp(31 downto 24)<=current_data;
         when X"D" => tmp(23 downto 16)<=current_data;
         when X"E" => tmp(15 downto 8)<=current_data;
         when others => tmp(7 downto 0)<=current_data;
       end case;
   end process;
   out_ram <= tmp;
end arch_en_ram;

