onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /fifo_tb/fifo_tb/ADDR
add wave -noupdate -radix binary /fifo_tb/fifo_tb/wclk
add wave -noupdate -radix binary /fifo_tb/fifo_tb/rclk
add wave -noupdate -radix binary /fifo_tb/fifo_tb/wrst_n
add wave -noupdate -radix binary /fifo_tb/fifo_tb/rrst_n
add wave -noupdate -radix binary /fifo_tb/fifo_tb/winc
add wave -noupdate -radix binary /fifo_tb/fifo_tb/rinc
add wave -noupdate -radix ascii /fifo_tb/fifo_tb/wdata
add wave -noupdate -radix binary /fifo_tb/fifo_tb/wfull
add wave -noupdate -radix binary /fifo_tb/fifo_tb/rempty
add wave -noupdate -radix ascii /fifo_tb/fifo_tb/rdata
add wave -noupdate -radix binary /fifo_tb/fifo_tb/raddr
add wave -noupdate -radix binary -childformat {{{/fifo_tb/fifo_tb/waddr[2]} -radix binary} {{/fifo_tb/fifo_tb/waddr[1]} -radix binary} {{/fifo_tb/fifo_tb/waddr[0]} -radix binary}} -subitemconfig {{/fifo_tb/fifo_tb/waddr[2]} {-height 15 -radix binary} {/fifo_tb/fifo_tb/waddr[1]} {-height 15 -radix binary} {/fifo_tb/fifo_tb/waddr[0]} {-height 15 -radix binary}} /fifo_tb/fifo_tb/waddr
add wave -noupdate -radix binary /fifo_tb/fifo_tb/rq2_wptr
add wave -noupdate -radix binary /fifo_tb/fifo_tb/wq2_rptr
add wave -noupdate -radix binary /fifo_tb/fifo_tb/wptr
add wave -noupdate -radix binary /fifo_tb/fifo_tb/rptr
add wave -noupdate -radix binary -childformat {{{/fifo_tb/fifo_tb/U0_fifo_mem/mem[0]} -radix ascii} {{/fifo_tb/fifo_tb/U0_fifo_mem/mem[1]} -radix ascii} {{/fifo_tb/fifo_tb/U0_fifo_mem/mem[2]} -radix ascii} {{/fifo_tb/fifo_tb/U0_fifo_mem/mem[3]} -radix ascii} {{/fifo_tb/fifo_tb/U0_fifo_mem/mem[4]} -radix ascii} {{/fifo_tb/fifo_tb/U0_fifo_mem/mem[5]} -radix ascii} {{/fifo_tb/fifo_tb/U0_fifo_mem/mem[6]} -radix ascii} {{/fifo_tb/fifo_tb/U0_fifo_mem/mem[7]} -radix ascii}} -subitemconfig {{/fifo_tb/fifo_tb/U0_fifo_mem/mem[0]} {-height 15 -radix ascii} {/fifo_tb/fifo_tb/U0_fifo_mem/mem[1]} {-height 15 -radix ascii} {/fifo_tb/fifo_tb/U0_fifo_mem/mem[2]} {-height 15 -radix ascii} {/fifo_tb/fifo_tb/U0_fifo_mem/mem[3]} {-height 15 -radix ascii} {/fifo_tb/fifo_tb/U0_fifo_mem/mem[4]} {-height 15 -radix ascii} {/fifo_tb/fifo_tb/U0_fifo_mem/mem[5]} {-height 15 -radix ascii} {/fifo_tb/fifo_tb/U0_fifo_mem/mem[6]} {-height 15 -radix ascii} {/fifo_tb/fifo_tb/U0_fifo_mem/mem[7]} {-height 15 -radix ascii}} /fifo_tb/fifo_tb/U0_fifo_mem/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12573 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {256 ns}
