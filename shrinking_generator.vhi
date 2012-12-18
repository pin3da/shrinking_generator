
-- VHDL Instantiation Created from source file shrinking_generator.vhd -- 19:35:55 12/17/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT shrinking_generator
	PORT(
		reset : IN std_logic;
		lfsr1 : IN std_logic_vector(127 downto 0);
		lfsr2 : IN std_logic_vector(126 downto 0);
		ram_state : IN std_logic_vector(127 downto 0);          
		to_ram : OUT std_logic_vector(127 downto 0);
		fill_ok : OUT std_logic
		);
	END COMPONENT;

	Inst_shrinking_generator: shrinking_generator PORT MAP(
		reset => ,
		lfsr1 => ,
		lfsr2 => ,
		ram_state => ,
		to_ram => ,
		fill_ok => 
	);


