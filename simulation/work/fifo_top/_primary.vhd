library verilog;
use verilog.vl_types.all;
entity fifo_top is
    generic(
        WIDTH           : integer := 8;
        DEPTH           : integer := 8;
        ADDR            : integer := 3
    );
    port(
        wclk            : in     vl_logic;
        rclk            : in     vl_logic;
        wrst_n          : in     vl_logic;
        rrst_n          : in     vl_logic;
        winc            : in     vl_logic;
        rinc            : in     vl_logic;
        wdata           : in     vl_logic_vector;
        wfull           : out    vl_logic;
        rempty          : out    vl_logic;
        rdata           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end fifo_top;
