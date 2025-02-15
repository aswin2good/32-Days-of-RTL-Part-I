`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2025 08:14:48 PM
// Design Name: 
// Module Name: full_adder
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

//we will be implementing full adder design module
module full_adder(
    input a,b,cin,  // taking inputs a,b and cin (carry in)
    output Sout,Cout //taking two outputs Sum and Carry
     );
     
    assign Sout = a ^ b ^ cin; // Sum is a XOR b XOR c
    assign Cout=(a&b) | cin&(a^b); //Cout is (a AND b) OR (cin AND(a XOR b))
    
endmodule
