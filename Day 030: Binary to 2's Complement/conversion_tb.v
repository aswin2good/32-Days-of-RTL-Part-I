`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 07:10:46 PM
// Design Name: 
// Module Name: conversion_tb
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

//this is the testbench for conversion design module
module conversion_tb();
    reg [3:0] data;
    wire signed [3:0]out;

    binary_to_2s DUT(data, out); //instantiating design module

    initial begin
        data= 4'd0;
        #10;
        data= 4'd1;
        #10;
        data= 4'd2;
        #10;
        data= 4'd3;
        #10;
        data= 4'd4;
        #10;
        data= 4'd5;
        #10;
        data= 4'd6;
        #10;
        data= 4'd7;
        #10;
        data= 4'd8;
        #10;
        data= 4'd9;
        #10;
        data= 4'd10;
        #10;
        data= 4'd11;
        #10;
        data= 4'd12;
        #10;
        data= 4'd13;
        #10;
        data= 4'd14;
        #10;
        data= 4'd15;
    end
initial begin
#150 $finish;
end
endmodule
