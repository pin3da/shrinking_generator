
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY tb_lfsr IS
END tb_lfsr;
 
ARCHITECTURE behavior OF tb_lfsr IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lfsr
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         lfsr_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal lfsr_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lfsr PORT MAP (
          clk => clk,
          reset => reset,
          lfsr_out => lfsr_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      reset<='1';
      wait for 100 ns;	
      reset<='0';
      wait ;
   end process;

END;
