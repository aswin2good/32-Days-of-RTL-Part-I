`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 09:29:54 AM
// Design Name: 
// Module Name: carry_skip_tb
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


module carry_skip_tb();
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire carry;
    carry_skip_adder dut(sum, carry, a, b, cin);
    
    initial
        begin
            a = 4'b1100; b = 4'b0001; cin = 1'b0;
        #10 a = 4'b0101; b = 4'b1011; cin = 1'b1;
        #10 a = 4'b1110; b = 4'b0111; cin = 1'b1;
        #10 a = 4'b1101; b = 4'b0110; cin = 1'b1;
        #10 a = 4'b0110; b = 4'b0010; cin = 1'b0;
        #10 a = 4'b1111; b = 4'b0010; cin = 1'b1;
        #10 $finish;
    end
endmodule
