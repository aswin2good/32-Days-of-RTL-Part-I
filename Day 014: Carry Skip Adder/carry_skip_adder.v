`timescale 1ns / 1ps

//we will be implementing carry skip adder in this design code

//this is the full adder code
module full_adder(
     input a,b,cin,
     output Sout,Cout
     );
     
     assign Sout= a^b^cin;                    //calculating sum and carry out
     assign Cout= (a&b) | (b&cin) | (a&cin);
endmodule

//defining ripple adder design module
module ripple_adder(
    input [3:0] A, B,
    input carry_in, 
    output [3:0] sum,
    output carry_out
   
    );
    wire [2:0] c;

     full_adder fa1(A[0], B[0], carry_in, sum[0], c[0]);  //instantiating full adder module for processing
    full_adder fa2(A[1], B[1], c[0], sum[1], c[1]);
    full_adder fa3(A[2], B[2], c[1], sum[2], c[2]);
    full_adder fa4(A[3], B[3], c[2], sum[3], carry_out);
endmodule

//now we will implement carry skip adder module
module carry_skip_adder(
    input [3:0]a, b,
    input cin
    output [3:0]sum, 
    output cout,
    );
    wire c, sel; //temporary variables
     wire [3:0]p; //carry propagation

    ripple_adder pa(a, b, cin, sum, c);

    xor (p[0], a[0], b[0]),
        (p[1], a[1], b[1]),
        (p[2], a[2], b[2]),
        (p[3], a[3], b[3]);
        
    and (sel, p[0],p[1], p[2], p[3]);

    assign cout = sel ? cin : c;

endmodule
