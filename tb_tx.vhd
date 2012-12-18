--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:54:28 12/14/2012
-- Design Name:   
-- Module Name:   /home/pin3da/Repos/shrinking_generator/tb_tx.vhd
-- Project Name:  shrinking_generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modulotx
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
 
ENTITY tb_tx IS
END tb_tx;
 
ARCHITECTURE behavior OF tb_tx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modulotx
    PORT(
         reset : IN  std_logic;
         enable115200 : IN  std_logic;
         enableTrans : IN  std_logic;
         transOk : OUT  std_logic;
         data : IN  std_logic_vector(7 downto 0);
         serialOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal enable115200 : std_logic := '0';
   signal enableTrans : std_logic := '0';
   signal data : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal transOk : std_logic;
   signal serialOut : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modulotx PORT MAP (
          reset => reset,
          enable115200 => enable115200,
          enableTrans => enableTrans,
          transOk => transOk,
          data => data,
          serialOut => serialOut
        );

   -- Clock process definitions
   enable115200_process :process
   begin
		enable115200 <= '0';
		wait for clock_period/2;
		enable115200 <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset<= '1';
      wait for 100 ns;	
		reset <='0';
      enableTrans<='1';
		data<="01100111";

      -- insert stimulus here 

      wait;
   end process;

END;
