
-- VHDL Instantiation Created from source file lfsr_127.vhd -- 01:25:13 12/14/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT lfsr_127
	PORT(
		lfsr_in : IN std_logic_vector(127 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;          
		lfsr_out : OUT std_logic_vector(127 downto 0)
		);
	END COMPONENT;

	Inst_lfsr_127: lfsr_127 PORT MAP(
		lfsr_in => ,
		clk => ,
		reset => ,
		lfsr_out => 
	);


