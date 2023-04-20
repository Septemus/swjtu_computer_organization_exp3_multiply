library verilog;
use verilog.vl_types.all;
entity keymodule_vlg_sample_tst is
    port(
        KEY_R           : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end keymodule_vlg_sample_tst;
