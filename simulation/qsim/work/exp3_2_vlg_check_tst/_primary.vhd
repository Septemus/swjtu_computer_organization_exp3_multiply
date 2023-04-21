library verilog;
use verilog.vl_types.all;
entity exp3_2_vlg_check_tst is
    port(
        KEY_C           : in     vl_logic_vector(3 downto 0);
        N               : in     vl_logic_vector(31 downto 0);
        a               : in     vl_logic_vector(8 downto 0);
        ans             : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic_vector(7 downto 0);
        codeout         : in     vl_logic_vector(7 downto 0);
        cr_reg          : in     vl_logic_vector(3 downto 0);
        flag3           : in     vl_logic;
        hassetnum       : in     vl_logic;
        pt              : in     vl_logic_vector(2 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end exp3_2_vlg_check_tst;
