 -- +-Module--------------------------------------------+
 -- |                   TRANSMISSION CORE               |
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
 -- | + Transmission module for RS232                   |
 -- |                                                   |
 -- |                                                   |
 -- |                                                   |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + enable115200   : IN - Clock		                 |
 -- | + reset          : IN - Reset (Active High)       |
 -- | + enableTrans    : IN - Ready to transmit         |
 -- | + data           : IN - Parallel data to send     |
 -- | + serialOut      : OUT - Serial data sent	        |
 -- | + transOk        : OUT - transmission successful  |
 -- +---------------------------------------------------+
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulotx is
    Port (   reset : in  STD_LOGIC;
             enable115200 : in  STD_LOGIC;
             enableTrans : in  STD_LOGIC;
             transOk : out  STD_LOGIC:='0';
             data : in  STD_LOGIC_VECTOR (7 downto 0);
             serialOut : out  STD_LOGIC);
end modulotx;

architecture arqModulotx of modulotx is

signal indice: integer range 0 to 8;
signal tarea: integer range 1 to 3 := 1; 
  begin
    process(reset, enable115200, data)
      begin
        if reset = '1' then
          serialOut <= '0';
          indice <= 8;
          transOk <= '0';
        else
          if(rising_edge(enable115200))then
              if(enableTrans = '1')then          
                  if tarea = 1 then
                    serialOut <= '0';
                    transOk <= '0';
                    tarea <= 2;
                  end if;
                  if tarea = 2 then
                    if(indice>=1 and indice<=8)then
                      serialOut <= data(indice-1);
                      indice <= indice - 1;
                      transOk <= '0';
                    end if;
                    if indice = 0 then
                        tarea <= 3;
                        transOk <= '1';
                    end if;
                  end if;
                  
                  if tarea = 3 then
                    serialOut <= '1';
                    indice <= 8;
                    transOk <= '0';
                    tarea <= 1;
                  end if;
              end if;      
          end if;
        end if;
    end process;      
end arqModulotx;

