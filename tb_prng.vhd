
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY tb_prng IS
END tb_prng;
 
ARCHITECTURE behavior OF tb_prng IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Prng
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         serial_in : IN  std_logic;
         serial_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal serial_in : std_logic := '0';

 	--Outputs
   signal serial_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Prng PORT MAP (
          clk => clk,
          reset => reset,
          serial_in => serial_in,
          serial_out => serial_out
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
      reset <= '1';
      wait for 100 ns;	
      reset <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '0';
      wait for 4330 ns;
      serial_in <= '1';
      wait for 4330 ns;
      serial_in <= '1';      
      -- insert stimulus here 

      wait;
   end process;

END;
