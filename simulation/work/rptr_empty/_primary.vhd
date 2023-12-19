library verilog;
use verilog.vl_types.all;
entity rptr_empty is
    generic(
        ADDR            : integer := 3
    );
    port(
        rclk            : in     vl_logic;
        rrst_n          : in     vl_logic;
        rinc            : in     vl_logic;
        rq2_wptr        : in     vl_logic_vector;
        rptr            : out    vl_logic_vector;
        rempty          : out    vl_logic;
        raddr           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end rptr_empty;
