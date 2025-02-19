`timescale 1ns / 1ps

//this is the testbench for half adder design module
module half_adder_nand_tb();
    reg a,b; 
    wire Sum, Cout;
    
    half_adder_nand DUT(a,b,Sum,Cout); //instantiating half adder design module
    
    initial begin
    #10 a=1'b0; b=1'b0; 
    #10 a=1'b0; b=1'b1;
    #10 a=1'b1; b=1'b0;
    #10 a=1'b1; b=1'b1;
    #10 $finish;
    end
endmodule
