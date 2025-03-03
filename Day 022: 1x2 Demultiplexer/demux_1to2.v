`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 07:45:18 AM
// Design Name: 
// Module Name: demux_1to2
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

//we will implement 1x2 Demultiplexer design module
module demux_1to2(
    input i,
    input select,
    output d1,d0
    );
    
    assign d0 = (select == 0) ? i : 0; //do d0=i, if select=0
    assign d1 = (select == 1) ? i : 0; //do d1=i, if select=1
endmodule

