`timescale 1ns / 1ps

//we will implement 4 bit divider design 
module divider_4_bit(
    input [3:0] dividend,divisor,       //4bit dividend and divisor
    output reg [3:0] remainder,quotient //4bit remainder and quotient
    );
    
    always@(dividend,divisor)
    begin
    quotient=0;
    remainder=dividend;
    
    
    while (remainder >=divisor)
    
    begin
    remainder=remainder-divisor;
    quotient=quotient+1;
    
    end
   end 
endmodule
