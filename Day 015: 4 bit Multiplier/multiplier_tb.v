`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2025 12:39:36 PM
// Design Name: 
// Module Name: multiplier_tb
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

//this is the testbench for multiplier design module
module multiplier_tb();
    reg [3:0]a,b;
	wire [7:0]mul_result;

    multiplier_4_bit dut(a, b, mul_result); //instantiating multiplier design module
    
		always begin
			
			a=$random;  //taking random integer values of a and b
			b=$random;
            #10;
		end
		initial begin 
		#70 $finish;
		end
endmodule
