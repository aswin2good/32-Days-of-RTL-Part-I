`timescale 1ns / 1ps

//we will be implementing half subtractor design module
module half_subtractor(
    input a, b,    // taking two inputs a and b
    output Dout, Bout  //taking two outputs Difference and Borrow out
    );
    
    assign Dout = a^b; // Difference is a XOR b
    assign Bout = ~a&b; // Borrow Out is a AND b
    
endmodule 
