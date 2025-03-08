`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2025 11:47:21 AM
// Design Name: 
// Module Name: n_bit_square
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

//we will be implementing n bit square design
module n_bit_square(num, result);
     parameter n=4;        //setting a limit for number of bits in input number
     input [n-1:0] num;
     output reg [2*n-1:0] result; //result is square of n bit number
     reg [2*n-1:0] temp;
     
     always@(*) begin
     temp=num*num;
     result=temp;
     
     end
     
endmodule
