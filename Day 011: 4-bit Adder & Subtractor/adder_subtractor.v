`timescale 1ns / 1ps

module full_adder(
    input a, b, cin,
    output Sout,Cout
    );
    
    assign Sout= a^b^cin; 
    assign Cout= (a&b) | (b&cin) | (a&cin);
    
endmodule

module adder_subtractor(
    input [3:0] A, B,
    input en, //this is an enable input, if 1, we do subtraction, if 0 we do addition
    output [3:0] sum_or_diff,
    output cout_or_bout
    );
    wire [2:0]c; //temporary carry 
    
    full_adder fa1(A[0], (B[0]^en), en, sum_or_diff[0], c[0]);
    full_adder fa2(A[1], (B[1]^en), c[0], sum_or_diff[1], c[1]);
    full_adder fa3(A[2], (B[2]^en), c[1], sum_or_diff[2], c[2]);
    full_adder fa4(A[3], (B[3]^en), c[2], sum_or_diff[3], cout_or_bout);
 
   
endmodule
