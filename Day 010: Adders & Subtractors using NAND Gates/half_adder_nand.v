`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 07:36:56 AM
// Design Name: 
// Module Name: half_adder_nand
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


module half_adder_nand(
    input a,b, 
    output Sum,Cout
    );
    wire o1,o2,o3,o4;
    
    nand n1(o1,a,b);
    nand n2(o2,o1,a);
    nand n3(o3,o1,b);
    nand n4(Sum,o3,o2);
    nand n5(Cout,o1,o1);
    
endmodule
