--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:45:42 12/13/2012
-- Design Name:   
-- Module Name:   /home/pin3da/Repos/shrinking_generator/tb_lfsr.vhd
-- Project Name:  shrinking_generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lfsr
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_lfsr IS
END tb_lfsr;
 
ARCHITECTURE behavior OF tb_lfsr IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lfsr
    PORT(
         lfsr_in : IN  std_logic_vector(127 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         lfsr_out : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal lfsr_in : std_logic_vector(127 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal lfsr_out : std_logic_vector(127 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lfsr PORT MAP (
          lfsr_in => lfsr_in,
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
		reset <= '1';
		lfsr_in <= X"A0040014000088000000380000001950";
      wait for 50 ns;	
		reset<='0';
      

      -- insert stimulus here 

      wait;
   end process;

END;
