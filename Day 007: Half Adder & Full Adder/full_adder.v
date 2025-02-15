`timescale 1ns / 1ps

//we will be implementing full adder design module
module full_adder(
    input a,b,cin,  // taking inputs a,b and cin (carry in)
    output Sout,Cout //taking two outputs Sum and Carry
     );
     
    assign Sout = a ^ b ^ cin; // Sum is a XOR b XOR c
    assign Cout=(a&b) | cin&(a^b); //Cout is (a AND b) OR (cin AND(a XOR b))
    
endmodule
