`timescale 1ns / 1ps

//this will be the testbench for half adder design module
module half_adder_tb();
    reg a,b;         //reg type input a,b
    wire Sout,Cout;  //wire type output Sout and Cout
    
    half_adder DUT(a,b,Sout,Cout); //instantiating half adder design module
    
    initial begin
    $monitor("a=%b,b=%b,Sout=%b,Cout=%b",a,b,Sout,Cout); //command for monitoring each line under initial module
    #10 a=1'b0 ; b=1'b0;
    #10 a=1'b0 ; b=1'b1;
    #10 a=1'b1 ; b=1'b0;
    #10 a=1'b1 ; b=1'b1;
    #10 $finish; //terminating the simulation after next 10 units.
    end 
    
    
endmodule
