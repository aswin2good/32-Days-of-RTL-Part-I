`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2025 06:54:42 PM
// Design Name: 
// Module Name: full_subtractor_tb
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

//this will be the testbench for full subtractor design module
module full_subtractor_tb();
    reg a,b,bin; 
    wire Dout,Bout;
    
    full_subtractor DUT(a,b,bin,Dout,Bout); //instantiating full subtractor design module
    
    initial begin
    $monitor("a=%b,b=%b,bin=%b,Dout=%b,Bout=%b",a,b,bin,Dout,Bout); //command for monitoring each line under initial module
    #10 a=1'b0 ; b=1'b0; bin=1'b0;
    #10 a=1'b0 ; b=1'b0; bin=1'b1;
    #10 a=1'b0 ; b=1'b1; bin=1'b0;
    #10 a=1'b0 ; b=1'b1; bin=1'b1;
    #10 a=1'b1 ; b=1'b0; bin=1'b0;
    #10 a=1'b1 ; b=1'b0; bin=1'b1;
    #10 a=1'b1 ; b=1'b1; bin=1'b0;
    #10 a=1'b1 ; b=1'b1; bin=1'b1;
    #10 $finish; //terminating the simulation after next 10 units.
    end 
endmodule
