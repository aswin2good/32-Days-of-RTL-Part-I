`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 07:10:24 AM
// Design Name: 
// Module Name: comparator
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

//we will be implementing a N-bit comparator design module
module comparator(A,B,greater,lesser,equal);
    parameter N=8;
    
    input [N-1:0]A,B;   //taking N bit inputs A and B
    output greater,lesser,equal; //taking single bit outputs for result comparison
    
    reg lesser=0,greater=0,equal=0;  //these are taken reg type because we have initiated values
    
    always@(*)
        begin
         
        if (A>B)
          begin
        greater=1'b1;  //greater=1, if A>B
        lesser=1'b0;
        equal=1'b0;
          end
       
        else if (A<B)
          begin
        greater=1'b0;
        lesser=1'b1;   //lesser=1. if A<B
        equal=1'b0;
          end
        
        else
          begin
        greater=1'b0;
        lesser=1'b0;
        equal=1'b1;    //equal=1, if A=B
          end 
        end

endmodule
