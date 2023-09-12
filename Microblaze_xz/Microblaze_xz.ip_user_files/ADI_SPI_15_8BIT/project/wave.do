onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /spi_driver_common_test/clk
add wave -noupdate /spi_driver_common_test/rst_n
add wave -noupdate /spi_driver_common_test/csb
add wave -noupdate /spi_driver_common_test/sclk
add wave -noupdate /spi_driver_common_test/sdio
add wave -noupdate /spi_driver_common_test/sdio_vlg
add wave -noupdate /spi_driver_common_test/dir
add wave -noupdate /spi_driver_common_test/user_wr_en
add wave -noupdate -radix hexadecimal /spi_driver_common_test/user_wr_addr
add wave -noupdate -radix hexadecimal /spi_driver_common_test/user_wr_data
add wave -noupdate /spi_driver_common_test/user_rd_en
add wave -noupdate -radix hexadecimal /spi_driver_common_test/user_rd_addr
add wave -noupdate -radix hexadecimal /spi_driver_common_test/user_rd_data
add wave -noupdate /spi_driver_common_test/user_op_busy
add wave -noupdate /glbl/GSR
add wave -noupdate /spi_driver_common_test/uut/CLK_FRE
add wave -noupdate /spi_driver_common_test/uut/SCLK_FRE
add wave -noupdate /spi_driver_common_test/uut/clk
add wave -noupdate /spi_driver_common_test/uut/rst_n
add wave -noupdate -radix hexadecimal /spi_driver_common_test/uut/wr_addr_s
add wave -noupdate -radix hexadecimal /spi_driver_common_test/uut/wr_data_s
add wave -noupdate -radix hexadecimal /spi_driver_common_test/uut/rd_addr_s
add wave -noupdate -radix hexadecimal /spi_driver_common_test/uut/rd_data_s
add wave -noupdate /spi_driver_common_test/uut/csb
add wave -noupdate /spi_driver_common_test/uut/sclk
add wave -noupdate /spi_driver_common_test/uut/sdio
add wave -noupdate -radix unsigned /spi_driver_common_test/uut/baud_cnt
add wave -noupdate /spi_driver_common_test/uut/add_baud_cnt
add wave -noupdate /spi_driver_common_test/uut/end_baud_cnt
add wave -noupdate -radix unsigned /spi_driver_common_test/uut/bit_cnt
add wave -noupdate /spi_driver_common_test/uut/add_bit_cnt
add wave -noupdate /spi_driver_common_test/uut/end_bit_cnt
add wave -noupdate -radix unsigned /spi_driver_common_test/uut/byte_cnt
add wave -noupdate /spi_driver_common_test/uut/add_byte_cnt
add wave -noupdate /spi_driver_common_test/uut/end_byte_cnt
add wave -noupdate -radix hexadecimal /spi_driver_common_test/uut/byte1
add wave -noupdate -radix hexadecimal /spi_driver_common_test/uut/byte2
add wave -noupdate -radix hexadecimal /spi_driver_common_test/uut/byte3
add wave -noupdate /spi_driver_common_test/uut/flag_add
add wave -noupdate /spi_driver_common_test/uut/flag_sel
add wave -noupdate /spi_driver_common_test/uut/sdio_out
add wave -noupdate /spi_driver_common_test/uut/sdio_in_q1
add wave -noupdate /spi_driver_common_test/uut/sdio_in_q2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {56695387 ps} 0}
configure wave -namecolwidth 311
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {63253050 ps}
