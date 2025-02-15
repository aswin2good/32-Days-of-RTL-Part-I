`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2025 08:14:35 PM
// Design Name: 
// Module Name: half_adder
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


//we will be implementing half adder design module
module half_adder(
    input a, b,    // taking two inputs a and b
    output Sout, Cout  //taking two outputs Sum and Carry
    );
    
    assign Sout = a^b; // Sum is a XOR b
    assign Cout = a&b; // Carry is a AND b
    
endmodule
