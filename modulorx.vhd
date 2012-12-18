-- +-Module--------------------------------------------+
-- |                   RECEPTION CORE                  |
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
 -- | + Reception module for RS232                      |
 -- |                                                   |
 -- |                                                   |
 -- |                                                   |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + enable115200      : IN - Clock		              |
 -- | + reset             : IN - Reset (Active High)    |
 -- | + enableRecep       : IN - Ready to receive       |
 -- | + serialIn          : IN - serial data to receive |
 -- | + rxOut             : OUT - Parallel data received|
 -- | + receOk            : OUT - reception successful  |
 -- +---------------------------------------------------+
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulorx is
    Port (   reset : in  STD_LOGIC; -- Dejar el dispositivo en un estado inicial
             enable115200 : in  STD_LOGIC; -- reloj del divisor de frecuencia
             enableRecep : in  STD_LOGIC; -- habilitar recepcion de datos
             serialIn : in  STD_LOGIC; -- entrada serial de datos
             recepOk : out  STD_LOGIC:='0'; -- recepcion completada
             rxout : out  STD_LOGIC_VECTOR (7 downto 0):= "00000000"); -- datos de salida
end modulorx;

architecture Behavioral of modulorx is
signal indice: integer range 0 to 7; -- para llenar el vector de datos
signal tarea: integer range 1 to 2 := 1; -- 1: no se ha completado recepcion, 2: recepcion completa
 
  begin
    process(reset, enable115200, serialIn)begin
        if reset = '1' then
          indice <= 7;
          recepOk <= '0';
        else
          if rising_edge(enable115200) then
            if(enableRecep = '1')then 
              if tarea = 1 then
                if(indice>=0 and indice<=7)then
                  rxout(indice)<= serialIn;
                  recepOk <= '0';
                  indice<=indice-1;
                end if;
                if(indice = 0)then
                    tarea <= 2;
                    recepOk <= '1';
                end if;
              end if;
              if tarea = 2 then
                recepOk <= '0';
                indice <= 7;
                tarea <= 1;
              end if;
            end if;
          end if;
        end if;
    end process;
end Behavioral;
