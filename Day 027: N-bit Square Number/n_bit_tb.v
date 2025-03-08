`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2025 11:47:35 AM
// Design Name: 
// Module Name: n_bit_tb
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

//this is the testbench for n bit square design module
module n_bit_tb();
    parameter n=4;
    reg [n-1:0] num;
    wire [2*n-1:0] result;
    
    n_bit_square DUT(num,result); //instantiating the n bit square design module
    always begin
    
    num=$random;
    #10;
    
    end
    
    initial begin
    #100 $finish;
    end
    

endmodule
