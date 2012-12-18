--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:16:02 12/14/2012
-- Design Name:   
-- Module Name:   /home/pin3da/Repos/shrinking_generator/tb_encode_ram.vhd
-- Project Name:  shrinking_generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Encode_ram
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
 
ENTITY tb_encode_ram IS
END tb_encode_ram;
 
ARCHITECTURE behavior OF tb_encode_ram IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Encode_ram
    PORT(
         status_ram : IN  std_logic_vector(127 downto 0);
         current_data : IN  std_logic_vector(7 downto 0);
         current_block : IN  std_logic_vector(3 downto 0);
         out_ram : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal status_ram : std_logic_vector(127 downto 0) := (others => '0');
   signal current_data : std_logic_vector(7 downto 0) := (others => '0');
   signal current_block : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal out_ram : std_logic_vector(127 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Encode_ram PORT MAP (
          status_ram => status_ram,
          current_data => current_data,
          current_block => current_block,
          out_ram => out_ram
        );

    -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      status_ram <= X"00000000000000000000000000000000";
      current_data <= X"FF";
      current_block <= X"2";

      -- insert stimulus here 

      wait;
   end process;

END;
