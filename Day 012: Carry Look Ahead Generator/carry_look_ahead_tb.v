`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 07:59:08 AM
// Design Name: 
// Module Name: carry_look_ahead_tb
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

//this i sthe testbench for carry look ahead adder design module
module carry_look_ahead_tb();
    reg [3:0] a, b; //two 4 bit registers a and b
    reg cin;        // a single bit carry in
    wire [3:0] sum; // 4 bit sum
    wire carry;     //carry out
    
    carry_look_ahead_gen DUT(a, b, cin, sum, carry); //instantiating carry look ahead adder design module
    
    initial begin
        a=4'b0000; b=4'b0001; cin=1'b1;        //initial values at t=0
    #10 a = 4'b0111; b = 4'b1110; cin = 1'b0;
    #10 a = 4'b0100; b = 4'b0101; cin = 1'b1;
    #10 a = 4'b0011; b = 4'b0110; cin = 1'b0;
    #10 a = 4'b1011; b = 4'b0111; cin = 1'b1;
    #10 a = 4'b1000; b = 4'b0101; cin = 1'b0;
    #10 a = 4'b0110; b = 4'b1001; cin = 1'b0;
    #10 $finish;
    end
    
endmodule
