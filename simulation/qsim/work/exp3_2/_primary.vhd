library verilog;
use verilog.vl_types.all;
entity exp3_2 is
    port(
        clk             : in     vl_logic;
        hassetnum       : out    vl_logic;
        KEY_R           : in     vl_logic_vector(3 downto 0);
        clr             : in     vl_logic;
        flag1           : in     vl_logic;
        flag2           : in     vl_logic;
        en              : in     vl_logic;
        flag3           : out    vl_logic;
        KEY_C           : out    vl_logic_vector(3 downto 0);
        ans             : out    vl_logic_vector(15 downto 0);
        a               : out    vl_logic_vector(8 downto 0);
        b               : out    vl_logic_vector(7 downto 0);
        c               : out    vl_logic_vector(7 downto 0);
        cr_reg          : out    vl_logic_vector(3 downto 0);
        N               : out    vl_logic_vector(31 downto 0);
        codeout         : out    vl_logic_vector(7 downto 0);
        sel             : out    vl_logic_vector(2 downto 0);
        pt              : out    vl_logic_vector(2 downto 0)
    );
end exp3_2;
