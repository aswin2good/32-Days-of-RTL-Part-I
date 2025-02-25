`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 07:22:03 AM
// Design Name: 
// Module Name: comparator_tb
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

//this is the testbench for comparator design module
module comparator_tb();
    reg [7:0]A,B;
    wire greater,lesser,equal;
    
    comparator DUT(A,B,greater,lesser,equal); //instantiating comparator design module
    
    initial 
        begin
        #10; A=8'b01010010 ; B=8'b10101010;
        #10; A=8'b01101101 ; B=8'b01001011;
        #10; A=8'b10110001 ; B=8'b10110010;
        #10; A=8'b01011110 ; B=8'b01011011;
        #10; A=8'b01101100 ; B=8'b01101100;
        #10; A=8'b11011000 ; B=8'b11010110;
        #10; $finish;
        
        end  
    
endmodule
