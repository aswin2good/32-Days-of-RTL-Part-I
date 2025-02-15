`timescale 1ns / 1ps

//this will be the testbench for full adder design module
module full_adder_tb();
    reg a,b,cin;         //reg type input a,b,cin
    wire Sout,Cout;  //wire type output Sout and Cout
    
    full_adder DUT(a,b,cin,Sout,Cout); //instantiating full adder design module
    
    initial begin
    $monitor("a=%b,b=%b,cin=%b,Sout=%b,Cout=%b",a,b,cin,Sout,Cout); //command for monitoring each line under initial module
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
