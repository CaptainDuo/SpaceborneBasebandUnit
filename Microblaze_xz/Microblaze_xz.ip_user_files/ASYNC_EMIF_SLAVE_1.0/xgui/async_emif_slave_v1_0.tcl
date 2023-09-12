# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CAPACITANCE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DIFF_TERM" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "DRIVE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FPGA_SERIES" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "IBUF_LOW_PWR" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "IOSTANDARD" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "PHYSICS_MODE" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "RD_SAMPLING_LOC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RD_VILD_LOC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SLEW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WR_SAMPLING_LOC" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.CAPACITANCE { PARAM_VALUE.CAPACITANCE } {
	# Procedure called to update CAPACITANCE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CAPACITANCE { PARAM_VALUE.CAPACITANCE } {
	# Procedure called to validate CAPACITANCE
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DIFF_TERM { PARAM_VALUE.DIFF_TERM } {
	# Procedure called to update DIFF_TERM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIFF_TERM { PARAM_VALUE.DIFF_TERM } {
	# Procedure called to validate DIFF_TERM
	return true
}

proc update_PARAM_VALUE.DRIVE { PARAM_VALUE.DRIVE } {
	# Procedure called to update DRIVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DRIVE { PARAM_VALUE.DRIVE } {
	# Procedure called to validate DRIVE
	return true
}

proc update_PARAM_VALUE.FPGA_SERIES { PARAM_VALUE.FPGA_SERIES } {
	# Procedure called to update FPGA_SERIES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FPGA_SERIES { PARAM_VALUE.FPGA_SERIES } {
	# Procedure called to validate FPGA_SERIES
	return true
}

proc update_PARAM_VALUE.IBUF_LOW_PWR { PARAM_VALUE.IBUF_LOW_PWR } {
	# Procedure called to update IBUF_LOW_PWR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IBUF_LOW_PWR { PARAM_VALUE.IBUF_LOW_PWR } {
	# Procedure called to validate IBUF_LOW_PWR
	return true
}

proc update_PARAM_VALUE.IOSTANDARD { PARAM_VALUE.IOSTANDARD } {
	# Procedure called to update IOSTANDARD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IOSTANDARD { PARAM_VALUE.IOSTANDARD } {
	# Procedure called to validate IOSTANDARD
	return true
}

proc update_PARAM_VALUE.PHYSICS_MODE { PARAM_VALUE.PHYSICS_MODE } {
	# Procedure called to update PHYSICS_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PHYSICS_MODE { PARAM_VALUE.PHYSICS_MODE } {
	# Procedure called to validate PHYSICS_MODE
	return true
}

proc update_PARAM_VALUE.RD_SAMPLING_LOC { PARAM_VALUE.RD_SAMPLING_LOC } {
	# Procedure called to update RD_SAMPLING_LOC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RD_SAMPLING_LOC { PARAM_VALUE.RD_SAMPLING_LOC } {
	# Procedure called to validate RD_SAMPLING_LOC
	return true
}

proc update_PARAM_VALUE.RD_VILD_LOC { PARAM_VALUE.RD_VILD_LOC } {
	# Procedure called to update RD_VILD_LOC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RD_VILD_LOC { PARAM_VALUE.RD_VILD_LOC } {
	# Procedure called to validate RD_VILD_LOC
	return true
}

proc update_PARAM_VALUE.SLEW { PARAM_VALUE.SLEW } {
	# Procedure called to update SLEW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SLEW { PARAM_VALUE.SLEW } {
	# Procedure called to validate SLEW
	return true
}

proc update_PARAM_VALUE.WR_SAMPLING_LOC { PARAM_VALUE.WR_SAMPLING_LOC } {
	# Procedure called to update WR_SAMPLING_LOC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WR_SAMPLING_LOC { PARAM_VALUE.WR_SAMPLING_LOC } {
	# Procedure called to validate WR_SAMPLING_LOC
	return true
}


proc update_MODELPARAM_VALUE.WR_SAMPLING_LOC { MODELPARAM_VALUE.WR_SAMPLING_LOC PARAM_VALUE.WR_SAMPLING_LOC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WR_SAMPLING_LOC}] ${MODELPARAM_VALUE.WR_SAMPLING_LOC}
}

proc update_MODELPARAM_VALUE.RD_SAMPLING_LOC { MODELPARAM_VALUE.RD_SAMPLING_LOC PARAM_VALUE.RD_SAMPLING_LOC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RD_SAMPLING_LOC}] ${MODELPARAM_VALUE.RD_SAMPLING_LOC}
}

proc update_MODELPARAM_VALUE.RD_VILD_LOC { MODELPARAM_VALUE.RD_VILD_LOC PARAM_VALUE.RD_VILD_LOC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RD_VILD_LOC}] ${MODELPARAM_VALUE.RD_VILD_LOC}
}

proc update_MODELPARAM_VALUE.ADDR_WIDTH { MODELPARAM_VALUE.ADDR_WIDTH PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_WIDTH}] ${MODELPARAM_VALUE.ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.FPGA_SERIES { MODELPARAM_VALUE.FPGA_SERIES PARAM_VALUE.FPGA_SERIES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FPGA_SERIES}] ${MODELPARAM_VALUE.FPGA_SERIES}
}

proc update_MODELPARAM_VALUE.PHYSICS_MODE { MODELPARAM_VALUE.PHYSICS_MODE PARAM_VALUE.PHYSICS_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PHYSICS_MODE}] ${MODELPARAM_VALUE.PHYSICS_MODE}
}

proc update_MODELPARAM_VALUE.IOSTANDARD { MODELPARAM_VALUE.IOSTANDARD PARAM_VALUE.IOSTANDARD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IOSTANDARD}] ${MODELPARAM_VALUE.IOSTANDARD}
}

proc update_MODELPARAM_VALUE.DRIVE { MODELPARAM_VALUE.DRIVE PARAM_VALUE.DRIVE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DRIVE}] ${MODELPARAM_VALUE.DRIVE}
}

proc update_MODELPARAM_VALUE.SLEW { MODELPARAM_VALUE.SLEW PARAM_VALUE.SLEW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SLEW}] ${MODELPARAM_VALUE.SLEW}
}

proc update_MODELPARAM_VALUE.DIFF_TERM { MODELPARAM_VALUE.DIFF_TERM PARAM_VALUE.DIFF_TERM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIFF_TERM}] ${MODELPARAM_VALUE.DIFF_TERM}
}

proc update_MODELPARAM_VALUE.IBUF_LOW_PWR { MODELPARAM_VALUE.IBUF_LOW_PWR PARAM_VALUE.IBUF_LOW_PWR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IBUF_LOW_PWR}] ${MODELPARAM_VALUE.IBUF_LOW_PWR}
}

proc update_MODELPARAM_VALUE.CAPACITANCE { MODELPARAM_VALUE.CAPACITANCE PARAM_VALUE.CAPACITANCE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CAPACITANCE}] ${MODELPARAM_VALUE.CAPACITANCE}
}

