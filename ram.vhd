 -- +-Module--------------------------------------------+
 -- |                   RAM CORE                        |
 -- +-Author--------------------------------------------+
 -- |                                                   |
 -- | + XST, chapter 3, hdl coding techniques           |
 -- |                                                   |
 -- +-Information---------------------------------------+
 -- |                                                   |
 -- | + Hardware description of RAM, read-first mode    |
 -- |   for Spartan 3e compatibility                    |
 -- |                                                   |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + clk          : IN - 50MHz Clock                 |
 -- | + we           : IN - Write enable (Active High)  |
 -- | + en           : IN - clock enable (Active High)  |
 -- | + di           : IN - data input                  |
 -- | + do           : OUT - data output                |
 -- +---------------------------------------------------+

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity ram is
    port (clk : in std_logic;
          we   : in std_logic;
          en   : in std_logic;
          di   : in std_logic_vector(127 downto 0);
          do   : out std_logic_vector(127 downto 0));
end ram;
architecture arch_ram of ram is
    signal RAM: std_logic_vector (127 downto 0) := (others => '0');
begin
    process (clk,we,en,di)
    begin
         if clk'event and clk = '1' then
             if en = '1' then
                 if we = '1' then
                     RAM <= di;
                 end if;
                 do <= RAM;
             end if;
         end if;
    end process;
end arch_ram;
