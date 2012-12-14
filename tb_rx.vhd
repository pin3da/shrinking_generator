--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:49:08 12/14/2012
-- Design Name:   
-- Module Name:   /home/pin3da/Repos/shrinking_generator/tb_rx.vhd
-- Project Name:  shrinking_generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modulorx
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
 
ENTITY tb_rx IS
END tb_rx;
 
ARCHITECTURE behavior OF tb_rx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modulorx
    PORT(
         reset : IN  std_logic;
         enable115200 : IN  std_logic;
         enableRecep : IN  std_logic;
         serialIn : IN  std_logic;
         recepOk : OUT  std_logic;
         rxout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal enable115200 : std_logic := '0';
   signal enableRecep : std_logic := '0';
   signal serialIn : std_logic := '0';

 	--Outputs
   signal recepOk : std_logic;
   signal rxout : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modulorx PORT MAP (
          reset => reset,
          enable115200 => enable115200,
          enableRecep => enableRecep,
          serialIn => serialIn,
          recepOk => recepOk,
          rxout => rxout
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset<='1';
      wait for 100 ns;	
		reset<='0';

      -- insert stimulus here 

      wait;
   end process;

END;
