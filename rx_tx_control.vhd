 -- +-Module--------------------------------------------+
 -- |                  CONTROL RX TX                    |
 -- +-Author--------------------------------------------+
 -- |                                                   |
 -- | + Manuel Pineda                                   |
 -- | + Email : manuel.felipe.pineda@gmail.com          |
 -- | + Website : github.com/pin3da                     |
 -- |                                                   |
 -- +-Information---------------------------------------+
 -- |                                                   |
 -- | + Determines the control for the transmition      |
 -- |                                                   |
 -- |                                                   |
 -- |                                                   |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + TODO                                            |
 -- +---------------------------------------------------+
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rx_tx_control is
    Port ( data : in  STD_LOGIC;
           recepOk : in  STD_LOGIC;
           transOk : in  STD_LOGIC;
           enable115200 : in  STD_LOGIC;
           enableRecep : out  STD_LOGIC:='0';
           enableTrans : out  STD_LOGIC:='0');
end rx_tx_control;

architecture arch_rx_tx_control of rx_tx_control is
begin
process(enable115200)
		begin
			if Rising_edge(enable115200) then
				if data = '0' then -- Si el primer bit de dato es 0 habilita la recepcion
					enableRecep <= '1';
				end if;
				
				if recepOk = '1' then -- Si ya se recibio el dato deshabilita la recepcion y habilita la transferencia
					enableTrans <= '1';
					enableRecep <= '0';
				end if;

				if transOk = '1' then -- Si terminó la transferencia se deshabilita el para transferir
					enableTrans <= '0';
				end if; 
			end if;
	end process;
end arch_rx_tx_control;

