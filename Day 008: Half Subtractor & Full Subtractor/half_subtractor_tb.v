`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2025 06:43:04 PM
// Design Name: 
// Module Name: half_subtractor_tb
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

//this will be the testbench for half subtractor design module
module half_subtractor_tb();
    reg a,b;         //reg type input a,b
    wire Dout,Bout;  //wire type output Dout and Bout
    
    half_subtractor DUT(a,b,Dout,Bout); //instantiating half subtractor design module
    
    initial begin
    $monitor("a=%b,b=%b,Dout=%b,Bout=%b",a,b,Dout,Bout); //command for monitoring each line under initial module
    #10 a=1'b0 ; b=1'b0;
    #10 a=1'b0 ; b=1'b1;
    #10 a=1'b1 ; b=1'b0;
    #10 a=1'b1 ; b=1'b1;
    #10 $finish; //terminating the simulation after next 10 units.
    end 
    
endmodule
