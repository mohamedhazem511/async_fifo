library verilog;
use verilog.vl_types.all;
entity fifo_mem is
    generic(
        WIDTH           : integer := 8;
        ADDR            : integer := 3
    );
    port(
        wclk            : in     vl_logic;
        wrst_n          : in     vl_logic;
        wclken          : in     vl_logic;
        wfull           : in     vl_logic;
        wdata           : in     vl_logic_vector;
        waddr           : in     vl_logic_vector;
        raddr           : in     vl_logic_vector;
        rdata           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end fifo_mem;
