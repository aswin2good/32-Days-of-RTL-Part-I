`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2025 07:13:51 AM
// Design Name: 
// Module Name: divider_4_bit
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


module divider_4_bit(
    input [3:0] dividend,divisor,
    output reg [3:0] remainder,quotient
    );
    
    always@(dividend,divisor)
    begin
    quotient=0;
    remainder=dividend;
    
    
    while (remainder >=divisor)
    
    begin
    remainder=remainder-divisor;
    quotient=quotient+1;
    
    end
   end 
endmodule
