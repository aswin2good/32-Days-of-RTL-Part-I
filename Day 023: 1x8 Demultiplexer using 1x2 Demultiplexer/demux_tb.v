`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2025 07:32:43 AM
// Design Name: 
// Module Name: demux_tb
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

//this is the testbench for 1x8 Demux design module
module demux_tb();
    reg i;
    reg [2:0] select;
    wire y1,y2,y3,y4,y5,y6,y7,y8;
    
    demux_1to8 dut(i,select,y1,y2,y3,y4,y5,y6,y7,y8); //instantiating 1x8 design module
    
    always begin
    select= $random;
    i= 1'b1;
    #10;
    end
    
    initial begin
    #100 $finish;
    end
endmodule
