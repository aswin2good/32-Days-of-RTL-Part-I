`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2025 06:37:36 PM
// Design Name: 
// Module Name: even_parity_gen_tb
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


//this is the testbench for odd parity generate design
module even_parity_gen_tb();
    reg [7:0] data_in;  //reg type 8 bit data input
    wire parity;        //wire type parity
    reg clk;            //reg type clock generation
    
    even_parity_generate DUT(data_in, parity); //instantiating even parity generate design module

  always #5 clk = ~clk; //this means to toggle the clock after every 5 units.
   
  initial begin
    clk = 0;              // beginning with clock pulse low.
    data_in = 8'b00000000;
    #10;
    data_in = 8'b00000001;
    #10;
    data_in = 8'b00000010;
    #10;
    data_in = 8'b10100110;
    #10;
    data_in = 8'b00001110;
    #10;
    data_in = 8'b11011001;
    #10;
    data_in = 8'b11101000;
    #10;
    $finish; //after the last 10 seconds of data input, this simulation gets finished.
  end
endmodule