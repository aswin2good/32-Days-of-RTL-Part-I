`timescale 1ns / 1ps

//this is the testbench for half subtractor design module
module half_subtractor_tb();
    reg a,b; 
    wire Diff, Bout;
    
    half_subtractor_nand DUT(a,b,Diff,Bout); //instantiating half subtractor design module
    
    initial begin
    #10 a=1'b0; b=1'b0; 
    #10 a=1'b0; b=1'b1;
    #10 a=1'b1; b=1'b0;
    #10 a=1'b1; b=1'b1;
    #10 $finish;
    end
    
endmodule
