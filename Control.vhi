
-- VHDL Instantiation Created from source file Control.vhd -- 18:24:16 12/17/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control
	PORT(
		reset : IN std_logic;
		serial_in : IN std_logic;
		clk : IN std_logic;
		recep_ok : IN std_logic;
		fill_ok : IN std_logic;
		trans_ok : IN std_logic;          
		enable_rec : OUT std_logic;
		current_block_encode : OUT std_logic_vector(3 downto 0);
		we_ram_rec : OUT std_logic;
		en_ram_rec : OUT std_logic;
		we_ram_trans : OUT std_logic;
		en_ram_trans : OUT std_logic;
		reset_lfsr1 : OUT std_logic;
		reset_lfsr2 : OUT std_logic;
		reset_fill : OUT std_logic;
		reset_tx : OUT std_logic;
		current_block_decode : OUT std_logic_vector(3 downto 0);
		enable_trans : OUT std_logic
		);
	END COMPONENT;

	Inst_Control: Control PORT MAP(
		reset => ,
		serial_in => ,
		clk => ,
		recep_ok => ,
		fill_ok => ,
		trans_ok => ,
		enable_rec => ,
		current_block_encode => ,
		we_ram_rec => ,
		en_ram_rec => ,
		we_ram_trans => ,
		en_ram_trans => ,
		reset_lfsr1 => ,
		reset_lfsr2 => ,
		reset_fill => ,
		reset_tx => ,
		current_block_decode => ,
		enable_trans => 
	);


