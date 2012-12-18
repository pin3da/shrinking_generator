-- +-Module--------------------------------------------+
 -- |                   RECEPTION CORE                  |
 -- +-Author--------------------------------------------+
 -- |                                                   |
 -- | +                                                 |
 -- | + Email :                                         |
 -- | + Website :                                       |
 -- |                                                   |
 -- +-Information---------------------------------------+
 -- |                                                   |
 -- | + Module of reception of rs232                    |
 -- |                                                   |
 -- |                                                   |
 -- |                                                   |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + enable115200       : IN - Clock		            |
 -- | + reset              : IN - Reset (Active High)   |
 -- | + enableRecep        : IN - Ready for receive     |
 -- | + serialIn           : IN - serial data to receive|
 -- | + rxOut              : OUT - Parallel data received|
 -- | + receOk             : OUT - reception over ok    |
 -- +---------------------------------------------------+
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulorx is
    Port (   reset : in  STD_LOGIC; -- Dejar el dispositivo en un estado inicial
             clk_115200 : in  STD_LOGIC; -- reloj del divisor de frecuencia
             enableRecep : in  STD_LOGIC; -- habilitar recepcion de datos
             serialIn : in  STD_LOGIC; -- entrada serial de datos
             recepOk : out  STD_LOGIC:='0'; -- recepcion completada
             rxout : out  STD_LOGIC_VECTOR (7 downto 0)); -- datos de salida
end modulorx;

architecture Behavioral of modulorx is
signal indice: integer range 0 to 8; -- para llenar el vector de datos
signal tarea: integer range 1 to 2; -- 1: no se ha completado recepcion, 2: recepcion completa
signal datatmp: std_logic_vector (7 downto 0);

  begin
    process(reset, clk_115200, serialIn,enableRecep)begin
        if reset = '1' then
          indice <= 0;
          recepOk <= '0';
		  tarea <= 1;
		  datatmp <= X"00";
        else
          if rising_edge(clk_115200) then
            if(enableRecep = '1')then 
              if tarea = 1 then
                if(indice>=0 and indice<=7)then
                  datatmp(indice) <= serialIn;
                  recepOk <= '0';
                  indice<=indice+1;
                end if;
                if(indice = 8)then
                    tarea <= 2;
                    recepOk <= '1';
                end if;
              end if;
              if tarea = 2 then
                recepOk <= '0';
                indice <= 0;
                tarea <= 1;
              end if;
            end if;
          end if;
        end if;
    end process;
	rxout<=datatmp;
end Behavioral;

