
-- VHDL Instantiation Created from source file Encode_ram.vhd -- 09:12:34 12/14/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Encode_ram
	PORT(
		status_ram : IN std_logic_vector(127 downto 0);
		current_data : IN std_logic_vector(7 downto 0);
		current_block : IN std_logic_vector(3 downto 0);          
		out_ram : OUT std_logic_vector(127 downto 0)
		);
	END COMPONENT;

	Inst_Encode_ram: Encode_ram PORT MAP(
		status_ram => ,
		current_data => ,
		current_block => ,
		out_ram => 
	);


