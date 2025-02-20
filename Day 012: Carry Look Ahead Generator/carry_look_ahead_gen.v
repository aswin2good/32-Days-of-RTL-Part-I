`timescale 1ns / 1ps


//we will be implementing carry look ahead adder using carry and propagate
module carry_look_ahead_gen(
    input [3:0] a, b, //taking two inputs a and b (4 bit registers)
    input cin,        //taking single bit
    output [3:0] sum, //taking sum as 4 bit register
    output carry      //taking single bit carry
    );
    wire p0, g0, p1, g1, p2, g2, p3, g3; //single bit propagation and carry for each bit cycle
    wire [3:0]c;
    
    and (g0, a[0], b[0]); //generating is a AND b
    and (g1, a[1], b[1]);
    and (g2, a[2], b[2]);
    and (g3, a[3], b[3]);
    
    xor (p0, a[0], b[0]); //propagate is a XOR b
    xor (p1, a[1], b[1]);
    xor (p2, a[2], b[2]);
    xor (p3, a[3], b[3]);
    
    xor (sum[0],a[0],b[0],cin); //sum is a XOR b XOR cin
    xor (sum[1],a[1],b[1],c[0]);
    xor (sum[2],a[2],b[2],c[1]);
    xor (sum[3],a[3],b[3],c[2]);
    
    
    //ci = gi OR (pi AND c(i-1))
    assign  c[0] = g0 | (p0 & cin);
    assign  c[1] = g1 | (p1 & g0) | (p1 & p0 & cin);
    assign  c[2] = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & cin);
    assign  c[3] = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) |(p3 & p2 & p1 & p0 & cin);
   
   assign carry = c[3]; //finally assigning carry out as c[3] 
   
endmodule

