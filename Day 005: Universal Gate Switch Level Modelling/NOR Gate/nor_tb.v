`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2025 12:06:13 AM
// Design Name: 
// Module Name: nor_tb
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


module nor_tb();
    reg Vin1, Vin2;
    wire Vout;
    
    univ_nor DUT(.a(Vin1),.b(Vin2), .out(Vout));
    
    initial Vin1= 1'b0;
    initial Vin2= 1'b0;
    initial forever #10 Vin1 = ~Vin1;
    initial forever #20 Vin2 = ~Vin2;
    initial #200 $finish;
    
endmodule
