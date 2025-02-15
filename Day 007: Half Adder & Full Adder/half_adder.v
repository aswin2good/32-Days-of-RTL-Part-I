`timescale 1ns / 1ps


//we will be implementing half adder design module
module half_adder(
    input a, b,    // taking two inputs a and b
    output Sout, Cout  //taking two outputs Sum and Carry
    );
    
    assign Sout = a^b; // Sum is a XOR b
    assign Cout = a&b; // Carry is a AND b
    
endmodule
