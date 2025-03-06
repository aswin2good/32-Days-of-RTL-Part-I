`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 07:27:26 AM
// Design Name: 
// Module Name: encoder_tb
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

//this will be the testbench for 8x3 encoder
module encoder_tb();
    reg [7:0] in;
	wire [2:0] out;

	encoder_8x3 dut(in, out); //instantiating 8x3 encoder design module
	
	initial 
	begin
		#0  in=8'b10000000;
		#10 in=8'b01000000;
		#10 in=8'b00100000;
		#10 in=8'b00010000;
		#10 in=8'b00001000; 
		#10 in=8'b00000100;
		#10 in=8'b00000010;
		#10 in=8'b00000001;
		#10 in=8'b00000000;
		#20 $finish;
	end
endmodule
