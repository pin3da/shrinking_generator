
-- VHDL Instantiation Created from source file decode_ram.vhd -- 02:49:35 12/14/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT decode_ram
	PORT(
		current_block : IN std_logic_vector(3 downto 0);
		ram_data : IN std_logic_vector(127 downto 0);          
		out_data_rx : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_decode_ram: decode_ram PORT MAP(
		current_block => ,
		ram_data => ,
		out_data_rx => 
	);


