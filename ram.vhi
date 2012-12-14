
-- VHDL Instantiation Created from source file ram.vhd -- 01:26:14 12/14/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ram
	PORT(
		clk : IN std_logic;
		we : IN std_logic;
		en : IN std_logic;
		addr : IN std_logic_vector(3 downto 0);
		di : IN std_logic_vector(127 downto 0);          
		do : OUT std_logic_vector(127 downto 0)
		);
	END COMPONENT;

	Inst_ram: ram PORT MAP(
		clk => ,
		we => ,
		en => ,
		addr => ,
		di => ,
		do => 
	);


