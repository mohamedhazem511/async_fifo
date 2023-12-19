library verilog;
use verilog.vl_types.all;
entity sync_w2r is
    generic(
        ADDR            : integer := 3
    );
    port(
        rclk            : in     vl_logic;
        rrst_n          : in     vl_logic;
        wptr            : in     vl_logic_vector;
        rq2_wptr        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end sync_w2r;
