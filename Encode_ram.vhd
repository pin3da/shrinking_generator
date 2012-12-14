-- Copia lo que lee el rx a la ram.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encode_ram is
    Port ( status_ram : in  STD_LOGIC_VECTOR (127 downto 0);
           current_data : in  STD_LOGIC_VECTOR (7 downto 0);
           current_block : in  STD_LOGIC_VECTOR (3 downto 0);
           out_ram : out  STD_LOGIC_VECTOR (127 downto 0));
end Encode_ram;

architecture arch_en_ram of Encode_ram is


begin
   process(status_ram,current_data,current_block) begin
      out_ram<=status_ram;
      case current_block is
         when X"0" => out_ram(127 downto 120)<=current_data;
         when X"1" => out_ram(119 downto 112)<=current_data;
         when X"2" => out_ram(111 downto 104)<=current_data;
         when X"3" => out_ram(103 downto 96)<=current_data;
         when X"4" => out_ram(95 downto 88)<=current_data;
         when X"5" => out_ram(87 downto 80)<=current_data;
         when X"6" => out_ram(79 downto 72)<=current_data;
         when X"7" => out_ram(71 downto 64)<=current_data;
         when X"8" => out_ram(63 downto 56)<=current_data;
         when X"9" => out_ram(55 downto 48)<=current_data;
         when X"A" => out_ram(47 downto 40)<=current_data;
         when X"B" => out_ram(39 downto 32)<=current_data;
         when X"C" => out_ram(31 downto 24)<=current_data;
         when X"D" => out_ram(23 downto 16)<=current_data;
         when X"E" => out_ram(15 downto 8)<=current_data;
         when others => out_ram(7 downto 0)<=current_data;
       end case;
   end process;


end arch_en_ram;

