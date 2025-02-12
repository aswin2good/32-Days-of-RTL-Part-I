`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 11:46:28 PM
// Design Name: 
// Module Name: univ_nand
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

module univ_nand(
    input a,b,  
    output out
    );
    
    supply0 gnd;
    supply1 vdd;
    wire someV; 
    
    nmos(someV,gnd,b);
    nmos(out,someV,a);
    pmos(out,vdd,a);
    pmos(out,vdd,b);
    
endmodule
