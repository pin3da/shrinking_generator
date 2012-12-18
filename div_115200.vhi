
-- VHDL Instantiation Created from source file div_115200.vhd -- 18:34:02 12/17/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT div_115200
	PORT(
		clkfpga : IN std_logic;
		reset : IN std_logic;          
		enable115200 : OUT std_logic
		);
	END COMPONENT;

	Inst_div_115200: div_115200 PORT MAP(
		clkfpga => ,
		reset => ,
		enable115200 => 
	);


