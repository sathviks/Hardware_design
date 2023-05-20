// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 20 14:48:36 2023
// Host        : DESKTOP-5K80045 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode pin_planning -force -port_diff_buffers D:/Projects_Verilog/project_4/io_1.v
// Design      : ios
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
module ios(a, b, y);
  input a;
  input b;
  output y;

  // internal wires associated with differential buffers
assign y = a & b;

  // differential buffers


endmodule
