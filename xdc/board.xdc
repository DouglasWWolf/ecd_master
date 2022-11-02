
# ---------------------------------------------------------------------------
# Pin definitions
# ---------------------------------------------------------------------------

 
#######################################
#  Clocks & system signals
#######################################

set_property -dict {PACKAGE_PIN  C4  IOSTANDARD LVDS_25} [ get_ports clk_100mhz_clk_p ]
set_property -dict {PACKAGE_PIN  C3  IOSTANDARD LVDS_25} [ get_ports clk_100mhz_clk_n ]

set_property -dict {PACKAGE_PIN AH12} [ get_ports pci_refclk_clk_p ] ;# PCIE endpoint refclk#2
set_property -dict {PACKAGE_PIN AH11} [ get_ports pci_refclk_clk_n ]  

create_clock -period 10.000 -name sysclk100   [get_ports clk_100mhz_clk_p]
create_clock -period 10.000 -name pcie_sysclk [get_ports pci_refclk_clk_p]
set_clock_groups -name sys_clk_100 -asynchronous -group [get_clocks sysclk100]

# Disable timing analysis for these pins
set_disable_timing [get_ports pb_rst_n        ]
set_disable_timing [get_ports led_pci_link_up ]




#######################################
#  Miscellaneous
#######################################
 set_property -dict {PACKAGE_PIN B5  IOSTANDARD LVCMOS33}  [get_ports { qsfp0_up         }] ;# USER_LED0
 set_property -dict {PACKAGE_PIN A5  IOSTANDARD LVCMOS33}  [get_ports { qsfp1_up         }] ;# USER_LED1
 set_property -dict {PACKAGE_PIN A4  IOSTANDARD LVCMOS33}  [get_ports { c2c_link_status  }] ;# USER_LED2
#set_property -dict {PACKAGE_PIN C5  IOSTANDARD LVCMOS33}  [get_ports {  led[3]          }] ;# USER_LED3
#set_property -dict {PACKAGE_PIN C6  IOSTANDARD LVCMOS33}  [get_ports {  led[4]          }] ;# USER_LED4
#set_property -dict {PACKAGE_PIN C1  IOSTANDARD LVCMOS33}  [get_ports {  led[5]          }] ;# USER_LED5
#set_property -dict {PACKAGE_PIN D2  IOSTANDARD LVCMOS33}  [get_ports {  led[6]          }] ;# USER_LED6
#set_property -dict {PACKAGE_PIN D3  IOSTANDARD LVCMOS33}  [get_ports {  led[7]          }] ;# USER_LED7
#set_property -dict {PACKAGE_PIN D4  IOSTANDARD LVCMOS33}  [get_ports {  led[8]          }] ;# USER_LED8
 set_property -dict {PACKAGE_PIN D1  IOSTANDARD LVCMOS33}  [get_ports { led_pci_link_up  }] ;# USER_LED9




set_property  -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports pb_rst_n]  ;# PB_SW0
#set_property  -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports pb_go   ]  ;# PB_SW1
#set_property  -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS33} [get_ports pb_read ]  ;# PB_SW


#set_property  PACKAGE_PIN  B5    [get_ports {  led[0]                    }]
#set_property  PACKAGE_PIN  A5    [get_ports {  led[1]                    }]
#set_property  PACKAGE_PIN  A4    [get_ports {  led[2]                    }]
#set_property  PACKAGE_PIN  C5    [get_ports {  led[3]                    }]
#set_property  PACKAGE_PIN  C6    [get_ports {  led[4]                    }]
#set_property  PACKAGE_PIN  C1    [get_ports {  led[5]                    }]
#set_property  PACKAGE_PIN  D2    [get_ports {  led[6]                    }]
#set_property  PACKAGE_PIN  D3    [get_ports {  led[7]                    }]
#set_property  PACKAGE_PIN  D4    [get_ports {  led[8]                    }]
#set_property  PACKAGE_PIN  D1    [get_ports {  led[9]                    }]


#===============================================================================
#                           <<<  QSFP 0  >>>
#===============================================================================
#
# Clock inputs for QSFP 0
#
set_property PACKAGE_PIN R33 [get_ports qsfp0_clk_clk_n]
set_property PACKAGE_PIN R32 [get_ports qsfp0_clk_clk_p]

create_clock -period 3.103 -name clock_qsfp0 [get_ports qsfp0_clk_clk_p]

#
# QSFP0 transciever connections
#
set_property PACKAGE_PIN L41 [get_ports qsfp0_rx_rxp[0]]
set_property PACKAGE_PIN L42 [get_ports qsfp0_rx_rxn[0]]
set_property PACKAGE_PIN K39 [get_ports qsfp0_rx_rxp[1]]
set_property PACKAGE_PIN K40 [get_ports qsfp0_rx_rxn[1]]
set_property PACKAGE_PIN J41 [get_ports qsfp0_rx_rxp[2]]
set_property PACKAGE_PIN J42 [get_ports qsfp0_rx_rxn[2]]
set_property PACKAGE_PIN H39 [get_ports qsfp0_rx_rxp[3]]
set_property PACKAGE_PIN H40 [get_ports qsfp0_rx_rxn[3]]

set_property PACKAGE_PIN M34 [get_ports qsfp0_tx_txp[0]]
set_property PACKAGE_PIN M35 [get_ports qsfp0_tx_txn[0]]
set_property PACKAGE_PIN L36 [get_ports qsfp0_tx_txp[1]]
set_property PACKAGE_PIN L37 [get_ports qsfp0_tx_txn[1]]
set_property PACKAGE_PIN K34 [get_ports qsfp0_tx_txp[2]]
set_property PACKAGE_PIN K35 [get_ports qsfp0_tx_txn[2]]
set_property PACKAGE_PIN J36 [get_ports qsfp0_tx_txp[3]]
set_property PACKAGE_PIN J37 [get_ports qsfp0_tx_txn[3]]
#===============================================================================



#===============================================================================
#                           <<<  QSFP 1  >>>
#===============================================================================
#
# Clock inputs for QSFP 1
#
set_property PACKAGE_PIN L33 [get_ports qsfp1_clk_clk_n]
set_property PACKAGE_PIN L32 [get_ports qsfp1_clk_clk_p]

create_clock -period 3.103 -name clock_qsfp1 [get_ports qsfp1_clk_clk_p]

#
# QSFP1 tranceiver connections
#
set_property PACKAGE_PIN G41 [get_ports qsfp1_rx_rxp[0]]
set_property PACKAGE_PIN G42 [get_ports qsfp1_rx_rxn[0]]
#set_property PACKAGE_PIN F39 [get_ports qsfp1_rx_rxp[1]]
#set_property PACKAGE_PIN F40 [get_ports qsfp1_rx_rxn[1]]
#set_property PACKAGE_PIN E41 [get_ports qsfp1_rx_rxp[2]]
#set_property PACKAGE_PIN E42 [get_ports qsfp1_rx_rxn[2]]
#set_property PACKAGE_PIN D39 [get_ports qsfp1_rx_rxp[3]]
#set_property PACKAGE_PIN D40 [get_ports qsfp1_rx_rxn[3]]

set_property PACKAGE_PIN H34 [get_ports qsfp1_tx_txp[0]]
set_property PACKAGE_PIN H35 [get_ports qsfp1_tx_txn[0]]
#set_property PACKAGE_PIN G36 [get_ports qsfp1_tx_txp[1]]
#set_property PACKAGE_PIN G37 [get_ports qsfp1_tx_txn[1]]
#set_property PACKAGE_PIN F34 [get_ports qsfp1_tx_txp[2]]
#set_property PACKAGE_PIN F35 [get_ports qsfp1_tx_txn[2]]
#set_property PACKAGE_PIN E36 [get_ports qsfp1_tx_txp[3]]
#set_property PACKAGE_PIN E37 [get_ports qsfp1_tx_txn[3]]
#===============================================================================

