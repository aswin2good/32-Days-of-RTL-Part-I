`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2025 07:01:48 PM
// Design Name: 
// Module Name: odd_parity_gen_tb
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


//this is the testbench for odd parity check design
module odd_parity_check_tb();
  reg [7:0] data_in; //reg type 8 bit data input
  reg parity_in;     //reg type parity we are assuming to be having
  reg clk;           //reg type clock 
  wire error;        //output wire type error, which is used as a parity checker

  odd_parity_check DUT(data_in, parity_in, error); //instantiating odd parity check design module

  always #5 clk = ~clk; //this means to toggle the clock after every 5 units.

  initial begin
    clk = 0;               // beginning with clock pulse low.
    data_in = 8'b00000000; 
    parity_in = 1; 
    #10;
    data_in = 8'b00000001;
    parity_in = 0;
    #10;
    data_in = 8'b00000010;
    parity_in = 1;
    #10;
    data_in = 8'b10100110;
    parity_in = 0;
    #10;
    data_in = 8'b00001110;
    parity_in = 1;
    #10;
    data_in = 8'b11011001;
    parity_in = 0;
    #10;
    data_in = 8'b11101000;
    parity_in = 1;
    #10;
    $finish;  //after the last 10 seconds of data input, this simulation gets finished.
  end
  
  always @(posedge clk) begin // at every positive edge of the clock, we will display the output/results.
    $display("Data: %b, Parity: %b, Error: %b", data_in, parity_in, error); //command to display the results at every positive edge of clock.
  end
endmodule


