`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2025 11:32:55 AM
// Design Name: 
// Module Name: binary_to_gray
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

//we will design the binary to gray module
module binary_to_gray(
    input [3:0] binary_in,
    output [3:0] gray_out
    );
    
    buf buf1(gray_out[3], binary_in[3]);
    xor xor1(gray_out[2], binary_in[3], binary_in[2]),
        xor2(gray_out[1], binary_in[2], binary_in[1]),
	    xor3(gray_out[0], binary_in[1], binary_in[0]);
	    
    
endmodule
