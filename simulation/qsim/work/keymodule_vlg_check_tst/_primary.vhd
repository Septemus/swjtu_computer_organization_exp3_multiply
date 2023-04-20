library verilog;
use verilog.vl_types.all;
entity keymodule_vlg_check_tst is
    port(
        KEY_C           : in     vl_logic_vector(3 downto 0);
        \out\           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end keymodule_vlg_check_tst;
