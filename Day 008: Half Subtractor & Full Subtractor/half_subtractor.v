`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2025 06:42:42 PM
// Design Name: 
// Module Name: half_subtractor
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

//we will be implementing half subtractor design module
module half_subtractor(
    input a, b,    // taking two inputs a and b
    output Dout, Bout  //taking two outputs Difference and Borrow out
    );
    
    assign Dout = a^b; // Difference is a XOR b
    assign Bout = ~a&b; // Borrow Out is a AND b
    
endmodule 