`timescale 1ns / 1ps

//we will implement 1x2 Demultiplexer design module
module demux_1to2(
    input i,
    input select,
    output d1,d0
    );
    
    assign d0 = (select == 0) ? i : 0; //do d0=i, if select=0
    assign d1 = (select == 1) ? i : 0; //do d1=i, if select=1
endmodule

