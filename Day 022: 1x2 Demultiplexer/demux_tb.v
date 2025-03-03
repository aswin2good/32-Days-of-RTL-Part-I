`timescale 1ns / 1ps

//this is the testbench for demux design module
module demux_tb();
     reg i;
     reg select;
     wire d1,d0;
     
     demux_1to2 DUT(i,select,d1,d0); //instantiating demux 1x2 module
     
     initial 
     begin
          select=0; i=0; 
     #10; select=0; i=1; 
     #10; select=1; i=0; 
     #10; select=1; i=1; 
     end
     
endmodule
