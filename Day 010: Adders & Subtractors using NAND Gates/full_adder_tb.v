`timescale 1ns / 1ps
//this is the testbench for the full adder design module
module full_adder_tb();
    reg a,b,cin;
    wire Sum, Cout;
    
    full_adder_nand DUT(a,b,cin,Sum,Cout);//instantiating full adder design module
    
    initial begin
    #10 a=1'b0 ; b=1'b0; cin=1'b0;
    #10 a=1'b0 ; b=1'b0; cin=1'b1;
    #10 a=1'b0 ; b=1'b1; cin=1'b0;
    #10 a=1'b0 ; b=1'b1; cin=1'b1;
    #10 a=1'b1 ; b=1'b0; cin=1'b0;
    #10 a=1'b1 ; b=1'b0; cin=1'b1;
    #10 a=1'b1 ; b=1'b1; cin=1'b0;
    #10 a=1'b1 ; b=1'b1; cin=1'b1;
    #10 $finish; //terminating the simulation after next 10 units.
    end 
endmodule
