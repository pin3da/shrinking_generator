
-- VHDL Instantiation Created from source file modulorx.vhd -- 01:26:41 12/14/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT modulorx
	PORT(
		reset : IN std_logic;
		enable115200 : IN std_logic;
		enableRecep : IN std_logic;
		serialIn : IN std_logic;          
		recepOk : OUT std_logic;
		rxout : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_modulorx: modulorx PORT MAP(
		reset => ,
		enable115200 => ,
		enableRecep => ,
		serialIn => ,
		recepOk => ,
		rxout => 
	);


