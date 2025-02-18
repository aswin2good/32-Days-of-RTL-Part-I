`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 08:00:47 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
    reg a,b,cin;
    wire Sum, Cout;
    
    full_adder_nand DUT(a,b,cin,Sum,Cout);
    
    initial begin
    #10 a=1'b0 ; b=1'b0; cin=1'b0;
    #10 a=1'b0 ; b=1'b0; cin=1'b1;
    #10 a=1'b0 ; b=1'b1; cin=1'b0;
    #10 a=1'b0 ; b=1'b1; cin=1'b1;
    #10 a=1'b1 ; b=1'b0; cin=1'b0;
    #10 a=1'b1 ; b=1'b0; cin=1'b1;
    #10 a=1'b1 ; b=1'b1; cin=1'b0;
    #10 a=1'b1 ; b=1'b1; cin=1'b1;
    #10 $finish; //terminating the simulation after next 10 units.
    end 
endmodule
