`timescale 1ns / 1ps

//we will be implementing full adder design module
module full_adder(
    input a,b,cin,  // taking inputs a,b and cin (carry in)
    output Sout,Cout //taking two outputs Sum and Carry
     );
     
    assign Sout = a ^ b ^ cin; // Sum is a XOR b XOR c
    assign Cout=(a&b) | cin&(a^b); //Cout is (a AND b) OR (cin AND(a XOR b))
    
endmodule
 
//now using the full adder we will make a ripple carry / parallel adder.
module adder_4_bit(
    input [3:0] A,B, //4 bit inputs A and B
    input carry_in,  //some 1 bit carry in
    output [3:0] Sum, //4 bit Sum
    output carry     //1 bit final carry output
    );
    
    wire [2:0] temp_carry; //temporary 3 bit carry that comes under the process(immediate carry)
    
    full_adder f1(A[0],B[0],carry_in,Sum[0],temp_carry[0]); //LSB of A and B is added with input carry, then the process continues.
    full_adder f2(A[1],B[1],temp_carry[0],Sum[1],temp_carry[1]);
    full_adder f3(A[2],B[2],temp_carry[1],Sum[2],temp_carry[2]);
    full_adder f4(A[3],B[3],temp_carry[2],Sum[3],carry);
    
endmodule
