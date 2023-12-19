library verilog;
use verilog.vl_types.all;
entity wptr_full is
    generic(
        ADDR            : integer := 3
    );
    port(
        wclk            : in     vl_logic;
        wrst_n          : in     vl_logic;
        winc            : in     vl_logic;
        wq2_rptr        : in     vl_logic_vector;
        wptr            : out    vl_logic_vector;
        wfull           : out    vl_logic;
        waddr           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end wptr_full;
