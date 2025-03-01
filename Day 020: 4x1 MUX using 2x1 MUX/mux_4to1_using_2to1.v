`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2025 08:21:27 AM
// Design Name: 
// Module Name: mux_4to1_using_2to1
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

//first we implement 2:1 MUX design
module mux_2to1(
    input [1:0] i,
    input sel,
    output y);
    
    assign y=sel? i[1]:i[0]; //select i[1] if select =1
                             //select i[0] if select =0
    
endmodule

//now we implement 4:1 MUX using 2:1 MUX design
module mux_4to1_using_2to1(
    input [3:0] i,  
    input [1:0] sel,
    output y
    );
    wire [1:0] w; //temporary outputs
    
    mux_2to1 m1(i[1:0],sel[0],w[0]); //instantiating 2:1 MUX
    mux_2to1 m2(i[3:2],sel[0],w[1]);
    mux_2to1 m3(w,sel[1],y);
    
endmodule
