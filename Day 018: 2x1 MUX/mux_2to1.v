`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 08:07:22 AM
// Design Name: 
// Module Name: mux_2to1
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

//we will be implementing 2x1 mux
module mux_2to1(
    input a,b,  //taking two inputs 
    input select, //taking ne select line
    output y     //taking an output
    );
    assign y= select ? b : a;  //select b if y is 1;
                               //select a if y is 0;
    
    
endmodule
