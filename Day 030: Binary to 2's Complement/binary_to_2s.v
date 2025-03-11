`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 07:10:30 PM
// Design Name: 
// Module Name: binary_to_2s
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

//we will implement binary to 2s complement conversion design module
module binary_to_2s(
    input [3:0] data,
    output signed [3:0] out
    );
    wire [3:0]temp;
    assign temp= 4'b1111 - data;
    assign out= temp + 4'b0001; 
    
endmodule
