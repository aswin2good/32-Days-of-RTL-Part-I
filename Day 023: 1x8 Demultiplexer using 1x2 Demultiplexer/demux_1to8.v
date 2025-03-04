`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2025 07:18:41 AM
// Design Name: 
// Module Name: demux_1to8
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

//now, we will implement 1x8 Demux using 1x2 Demux
module demux_1to8(
    input i,
    input [2:0] select,
    output y1,y2,y3,y4,y5,y6,y7,y8 //final outputs
    );
    
    wire w1,w2,w3,w4,w5,w6; //temporary outputs
    
    demux_1to2 d1(i,select[2],w1,w2);
    
    demux_1to2 d2(w1,select[1],w3,w4);
    demux_1to2 d3(w2,select[1],w5,w6);
                                          //instantiating each 1x2 Demux module
    demux_1to2 d4(w3,select[0],y1,y2);
    demux_1to2 d5(w4,select[0],y3,y4);
    demux_1to2 d6(w5,select[0],y5,y6);
    demux_1to2 d7(w6,select[0],y7,y8);
    
endmodule
