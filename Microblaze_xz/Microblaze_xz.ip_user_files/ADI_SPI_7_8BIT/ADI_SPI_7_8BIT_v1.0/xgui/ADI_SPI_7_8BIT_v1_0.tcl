# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_FRE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCLK_FRE" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_FRE { PARAM_VALUE.CLK_FRE } {
	# Procedure called to update CLK_FRE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_FRE { PARAM_VALUE.CLK_FRE } {
	# Procedure called to validate CLK_FRE
	return true
}

proc update_PARAM_VALUE.SCLK_FRE { PARAM_VALUE.SCLK_FRE } {
	# Procedure called to update SCLK_FRE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCLK_FRE { PARAM_VALUE.SCLK_FRE } {
	# Procedure called to validate SCLK_FRE
	return true
}


proc update_MODELPARAM_VALUE.CLK_FRE { MODELPARAM_VALUE.CLK_FRE PARAM_VALUE.CLK_FRE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FRE}] ${MODELPARAM_VALUE.CLK_FRE}
}

proc update_MODELPARAM_VALUE.SCLK_FRE { MODELPARAM_VALUE.SCLK_FRE PARAM_VALUE.SCLK_FRE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCLK_FRE}] ${MODELPARAM_VALUE.SCLK_FRE}
}

