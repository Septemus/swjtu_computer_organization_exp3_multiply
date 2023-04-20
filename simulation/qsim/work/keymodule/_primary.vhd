library verilog;
use verilog.vl_types.all;
entity keymodule is
    port(
        clk             : in     vl_logic;
        KEY_R           : in     vl_logic_vector(3 downto 0);
        clr             : in     vl_logic;
        KEY_C           : out    vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end keymodule;
