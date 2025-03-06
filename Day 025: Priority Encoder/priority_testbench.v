`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 07:50:01 AM
// Design Name: 
// Module Name: priority_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//this will be the testbench for priority testbench
module priority_testbench();
    reg [7:0]in;
  wire [2:0]out;
  
  priority_encoder dut(in, out); //instantiating 8x3 priority encoder design module
  
  always begin
  in= $random;
  #10;
  end
  
  initial begin
  #80 $finish;
  end
endmodule
