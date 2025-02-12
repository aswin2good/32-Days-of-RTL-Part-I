`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 11:27:17 PM
// Design Name: 
// Module Name: switch_tb
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


module switch_tb();
    reg in;  
    wire out; 
    
    switch DUT(in,out);
    
    initial in= 1'b0;
    initial forever #10 in = ~in;
    initial #100 $finish;
    
endmodule
