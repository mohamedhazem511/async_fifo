library verilog;
use verilog.vl_types.all;
entity fifo_tb is
    generic(
        WIDTH           : integer := 8;
        DEPTH           : integer := 8;
        ADDR            : integer := 3
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end fifo_tb;
