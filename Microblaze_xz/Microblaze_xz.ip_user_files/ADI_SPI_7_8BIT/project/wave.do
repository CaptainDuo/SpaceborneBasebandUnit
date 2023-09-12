onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /adi_spi_driver_7_8bit_test/clk
add wave -noupdate /adi_spi_driver_7_8bit_test/rst_n
add wave -noupdate /adi_spi_driver_7_8bit_test/user_wr_en
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/user_wr_addr
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/user_wr_data
add wave -noupdate /adi_spi_driver_7_8bit_test/user_rd_en
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/user_rd_addr
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/user_rd_data
add wave -noupdate /adi_spi_driver_7_8bit_test/user_op_busy
add wave -noupdate /adi_spi_driver_7_8bit_test/user_wr_vild
add wave -noupdate /adi_spi_driver_7_8bit_test/user_rd_vild
add wave -noupdate -color Maroon /adi_spi_driver_7_8bit_test/rst_spi_pin
add wave -noupdate /adi_spi_driver_7_8bit_test/scb
add wave -noupdate /adi_spi_driver_7_8bit_test/sclk
add wave -noupdate /adi_spi_driver_7_8bit_test/sdio
add wave -noupdate /adi_spi_driver_7_8bit_test/sdio_vlg
add wave -noupdate /adi_spi_driver_7_8bit_test/i
add wave -noupdate /glbl/GSR
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/clk
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/rst_n
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/user_wr_en
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/user_wr_addr
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/user_wr_data
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/user_rd_en
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/user_rd_addr
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/user_rd_data
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/user_op_busy
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/user_wr_vild
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/user_rd_vild
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/rst_spi_pin
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/scb
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/sclk
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/sdio
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/wr_addr_s
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/wr_data_s
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/rd_addr_s
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/rd_data_s
add wave -noupdate -radix unsigned /adi_spi_driver_7_8bit_test/uut/baud_cnt
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/add_baud_cnt
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/end_baud_cnt
add wave -noupdate -radix unsigned /adi_spi_driver_7_8bit_test/uut/bit_cnt
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/add_bit_cnt
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/end_bit_cnt
add wave -noupdate -radix unsigned /adi_spi_driver_7_8bit_test/uut/byte_cnt
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/add_byte_cnt
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/end_byte_cnt
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/byte1
add wave -noupdate -radix hexadecimal /adi_spi_driver_7_8bit_test/uut/byte2
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/flag_add
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/flag_sel
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/sdio_out
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/sdio_in_q1
add wave -noupdate /adi_spi_driver_7_8bit_test/uut/sdio_in_q2
add wave -noupdate -radix unsigned /adi_spi_driver_7_8bit_test/uut/pulse_cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {398907010 ps} 0} {{Cursor 2} {1600070000 ps} 0}
configure wave -namecolwidth 372
configure wave -valuecolwidth 98
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
WaveRestoreZoom {0 ps} {46327050 ps}
