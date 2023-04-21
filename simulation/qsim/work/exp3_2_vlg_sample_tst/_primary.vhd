library verilog;
use verilog.vl_types.all;
entity exp3_2_vlg_sample_tst is
    port(
        KEY_R           : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        en              : in     vl_logic;
        flag1           : in     vl_logic;
        flag2           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exp3_2_vlg_sample_tst;
