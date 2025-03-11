`timescale 1ns / 1ps

//we will implement binary to 2s complement conversion design module
module binary_to_2s(
    input [3:0] data,
    output signed [3:0] out
    );
    wire [3:0]temp;
    assign temp= 4'b1111 - data;
    assign out= temp + 4'b0001; 
    
endmodule
