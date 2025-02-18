`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 07:39:55 AM
// Design Name: 
// Module Name: half_adder_nand_tb
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


module half_adder_nand_tb();
    reg a,b; 
    wire Sum, Cout;
    
    half_adder_nand DUT(a,b,Sum,Cout);
    initial begin
    #10 a=1'b0; b=1'b0; 
    #10 a=1'b0; b=1'b1;
    #10 a=1'b1; b=1'b0;
    #10 a=1'b1; b=1'b1;
    #10 $finish;
    end
endmodule
