`timescale 1ns / 1ps

module switch_tb();
    reg in;  // in is of reg type because input's value will be used to find out the value of output.
    wire out; // out is of type wire because it has to change continously by DUT.
    
    switch DUT(in,out); //instantiation of switch design module.
    
    initial in= 1'b0; // initializing in as 0 in the starting.
    initial forever #10 in = ~in; // intializing and repeating this command of changing in value every 10ns.
    initial #100 $finish; // intializing to finish this testbench at t=100ns.

    //NOTE: all initial statements run together when the code is executed, and not one after the other(linewise).
endmodule
