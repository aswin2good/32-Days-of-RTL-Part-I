`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2025 10:01:27 AM
// Design Name: 
// Module Name: multiplier_4_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//we will implement a 4 bit multiplier design module
module multiplier_4_bit(
    input [3:0]a,b,     // 4-bit inputs a and b
	output reg [7:0] result  // 8-bit output to store the multiplication result
    );
    reg [7:0] p1,p2,p3,p4; //These registers store partial products that are generated based on individual bits of b.
    
    always@(a,b) //triggered whenever a or b changes
    begin
    p1=0; 
    p2=0;   // initially set to 0.
    p3=0;
    p4=0;
    
    if(b[0]) 
	p1 = a<<0; // If the LSB of `b` is 1, take `a` as it is
	           // left shift a by 0
	if(b[1]) 
	p2 = a<<1; // If the second bit of `b` is 1, 
	           // left shift a by 1 (multiply by 2)
	if(b[2]) 
	p3 = a<<2; // If the third bit of `b` is 1,
	           // left shift a by 2 (multiply by 4)
	if(b[3])
	p4 = a<<3; //If the fourth bit of 'b' is 1,
	           // left shift a by 3 (multiply by 8)
	result = p1+p2+p3+p4;
    end
endmodule
