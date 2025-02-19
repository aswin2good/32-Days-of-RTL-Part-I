`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 10:53:11 AM
// Design Name: 
// Module Name: adder_subtractor_tb
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


module adder_subtractor_tb();
    reg [3:0] a,b;
    reg en;
    wire [3:0] sum_or_diff;
    wire cout_or_bout;
    
    adder_subtractor DUT(a, b, en, sum_or_diff, cout_or_bout);
    
    initial begin
    #10 a=4'b0001 ; b=4'b0111 ; en=1'b0;
    #10 a=4'b0001 ; b=4'b0010 ; en=1'b0;
    #10 a=4'b0110 ; b=4'b1111 ; en=1'b0;
    #10 a=4'b1101 ; b=4'b0110 ; en=1'b1;
    #10 a=4'b1110 ; b=4'b0101 ; en=1'b1;
    #10 a=4'b0110 ; b=4'b1100 ; en=1'b1;
    #10 $finish;
    end
    
endmodule
