`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2025 06:51:44 PM
// Design Name: 
// Module Name: full_subtractor
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

//we will be implementing full subtractor design module
module full_subtractor(
    input a,b,bin,  // taking three inputs a, b and bin
    output Dout,Bout //taking two outputs Difference and Borrow out
    );
    
    assign Dout = a^b^bin;  // calculating difference
    assign Bout = (~a & (b^bin)) | (b & bin) ;  //calculating borrow out
endmodule
