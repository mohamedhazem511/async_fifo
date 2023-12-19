library verilog;
use verilog.vl_types.all;
entity sync_r2w is
    generic(
        ADDR            : integer := 3
    );
    port(
        wclk            : in     vl_logic;
        wrst_n          : in     vl_logic;
        rptr            : in     vl_logic_vector;
        wq2_rptr        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end sync_r2w;
