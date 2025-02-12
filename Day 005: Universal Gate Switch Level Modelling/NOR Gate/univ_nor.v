`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 11:46:28 PM
// Design Name: 
// Module Name: univ_nor
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


module univ_nor(
    input a,b, 
    output out
    );
    
    supply0 gnd;
    supply1 vdd;
    wire someV;
    
    nmos(out,gnd,a);
    nmos(out,gnd,b);
    pmos(someV,vdd,a);
    pmos(out,someV,b);
    
    
endmodule
