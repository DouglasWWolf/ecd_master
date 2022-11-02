//===================================================================================================
//                            ------->  Revision History  <------
//===================================================================================================
//
//   Date     Who   Ver  Changes
//===================================================================================================
// 06-Oct-22  DWW  1000  Initial creation
//===================================================================================================


module axis_switch #
(
    parameter DATA_WIDTH  = 256
) 
(
    input clk,

    input ENABLE_STREAM,



    //========================  AXI Stream interface for the input side  ============================
    input[DATA_WIDTH-1:0]   AXIS_RX_TDATA,
    input                   AXIS_RX_TVALID,
    output                  AXIS_RX_TREADY,
    //===============================================================================================


    //========================  AXI Stream interface for the output side  ===========================
    output[DATA_WIDTH-1:0]  AXIS_TX_TDATA,
    output                  AXIS_TX_TVALID,
    input                   AXIS_TX_TREADY
    //===============================================================================================

);


assign  AXIS_TX_TDATA  = ENABLE_STREAM ? AXIS_RX_TDATA  : 0;
assign  AXIS_TX_TVALID = ENABLE_STREAM ? AXIS_RX_TVALID : 0;
assign  AXIS_RX_TREADY = ENABLE_STREAM ? AXIS_TX_TREADY : 0;

endmodule