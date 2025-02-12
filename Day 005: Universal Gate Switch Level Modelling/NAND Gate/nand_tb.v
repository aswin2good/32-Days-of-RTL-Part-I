`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 11:57:27 PM
// Design Name: 
// Module Name: nand_tb
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


module nand_tb();
    reg Vin1, Vin2;
    wire Vout;
    
    univ_nand DUT(.a(Vin1),.b(Vin2), .out(Vout));
    
    initial Vin1= 1'b0;
    initial Vin2= 1'b0;
    initial forever #10 Vin1 = ~Vin1;
    initial forever #20 Vin2 = ~Vin2;
    initial #200 $finish;
    
endmodule
