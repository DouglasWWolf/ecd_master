# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LANE_COUNT" -parent ${Page_0}


}

proc update_PARAM_VALUE.LANE_COUNT { PARAM_VALUE.LANE_COUNT } {
	# Procedure called to update LANE_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LANE_COUNT { PARAM_VALUE.LANE_COUNT } {
	# Procedure called to validate LANE_COUNT
	return true
}


proc update_MODELPARAM_VALUE.LANE_COUNT { MODELPARAM_VALUE.LANE_COUNT PARAM_VALUE.LANE_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LANE_COUNT}] ${MODELPARAM_VALUE.LANE_COUNT}
}

