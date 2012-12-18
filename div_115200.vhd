library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity div_115200 is
    Port ( clkfpga : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable115200 : out  STD_LOGIC);
end div_115200;

architecture arch_11520 of div_115200 is
signal contador: integer range 0 to 433;
begin
   process(clkfpga,reset) begin
      if(reset ='1') then
         enable115200 <= '0';
         contador <= 0;
      else
         if(rising_edge(clkfpga))then
            contador<=contador+1;
            if(contador>=433)then
               enable115200<= '1';
               contador<= 0;
            else
            enable115200<= '0';
            end if;
         end if;
      end if;
   end process;
end arch_11520;

