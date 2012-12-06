 -- +-Module--------------------------------------------+
 -- |                   LFSR CORE                       |
 -- +-Author--------------------------------------------+
 -- |                                                   |
 -- | + Manuel Pineda                                   |
 -- | + Email : manuel.felipe.pineda@gmail.com          |
 -- | + Website : github.com/pin3da                     |
 -- |                                                   |
 -- +-Information---------------------------------------+
 -- |                                                   |
 -- | + Implements linear feedback shif register to be  |
 -- |   use in a shrinking generator                    |
 -- |                                                   |
 -- |                                                   |
 -- |                                                   |
 -- +-IO Description------------------------------------+
 -- |                                                   |
 -- | + clk                : IN - 50MHz Clock           |
 -- | + reset              : IN - Reset (Active High)   |
 -- | + lfsr_out           : OUT - final state of lfsr  |
 -- +---------------------------------------------------+

library ieee;
use ieee.std_logic_1164.all;
entity lfsr is

  generic(constant N: integer := 16);

  port (
    clk       :    in  std_logic;
    reset     :  in  std_logic;                    
    lfsr_out   :  out std_logic_vector (N-1 downto 0)
  );
end entity;

architecture arhc_lfsr of lfsr is
   signal lfsr_tmp     : std_logic_vector (N-1 downto 0):= (0=>'1',others=>'0');
   constant polynome  : std_logic_vector (N-1 downto 0):= "1011010000000000";
begin
   process (clk, reset) 
    variable lsb    :std_logic;   
     variable ext_inbit  :std_logic_vector (N-1 downto 0) ;
  begin 
    lsb := lfsr_tmp(0);
    for i in 0 to N-1 loop   
        ext_inbit(i):= lsb;   
    end loop;
  if (reset = '1') then
    lfsr_tmp <= (0=>'1', others=>'0');
  elsif (rising_edge(clk)) then
    lfsr_tmp <= ( '0' & lfsr_tmp(N-1 downto 1) ) xor ( ext_inbit and polynome );
  end if;
  end process;
      lfsr_out <= lfsr_tmp;
end architecture;
