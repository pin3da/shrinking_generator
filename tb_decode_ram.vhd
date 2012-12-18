--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:44:55 12/14/2012
-- Design Name:   
-- Module Name:   /home/pin3da/Repos/shrinking_generator/tb_decode_ram.vhd
-- Project Name:  shrinking_generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decode_ram
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
 
ENTITY tb_decode_ram IS
END tb_decode_ram;
 
ARCHITECTURE behavior OF tb_decode_ram IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decode_ram
    PORT(
         current_block : IN  std_logic_vector(3 downto 0);
         ram_data : IN  std_logic_vector(127 downto 0);
         out_data_rx : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal current_block : std_logic_vector(3 downto 0) := (others => '0');
   signal ram_data : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal out_data_rx : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decode_ram PORT MAP (
          current_block => current_block,
          ram_data => ram_data,
          out_data_rx => out_data_rx
        );

  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      current_block<=X"F";
      ram_data<=X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF";

  

      -- insert stimulus here 

      wait;
   end process;

END;
