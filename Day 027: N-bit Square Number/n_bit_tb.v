`timescale 1ns / 1ps

//this is the testbench for n bit square design module
module n_bit_tb();
    parameter n=4;
    reg [n-1:0] num;
    wire [2*n-1:0] result;
    
    n_bit_square DUT(num,result); //instantiating the n bit square design module
    always begin
    
    num=$random;
    #10;
    
    end
    
    initial begin
    #100 $finish;
    end
    

endmodule
