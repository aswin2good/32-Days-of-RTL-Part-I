`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2025 11:59:38 AM
// Design Name: 
// Module Name: full_adder_mux_tb
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

//this is the testbench for full adder using mux design module
module full_adder_mux_tb();
  reg a, b, cin;
  wire sum, carry;

  full_adder_mux dut(a, b, cin, sum, carry); //instantiating design module

  initial begin

    a = 0; b = 0; cin = 0;
    #10;
    a = 0; b = 0; cin = 1;
    #10;
    a = 0; b = 1; cin = 0;
    #10;
    a = 0; b = 1; cin = 1;
    #10;
    a = 1; b = 0; cin = 0;
    #10;
    a = 1; b = 0; cin = 1;
    #10;
    a = 1; b = 1; cin = 0;
    #10;
    a = 1; b = 1; cin = 1;
    #10;
  end
endmodule
