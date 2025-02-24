`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2025 07:24:21 AM
// Design Name: 
// Module Name: divider_tb
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


module divider_tb();
    reg [3:0]dividend,divisor;
    wire [3:0]quotient,remainder;

    divider_4_bit DUT (dividend,divisor,quotient,remainder);
		always begin
			
			dividend =$random;
			divisor =$random;
            #10;
		end
		initial begin #90 $finish;
		end
endmodule
