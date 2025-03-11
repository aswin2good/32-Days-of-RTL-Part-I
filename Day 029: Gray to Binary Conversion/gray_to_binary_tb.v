`timescale 1ns / 1ps

//this is the testbench for gray to binary design module
module gray_to_binary_tb();

    reg [3:0] gray_in;
wire [3:0]binary_out;

gray_to_binary DUT(gray_in, binary_out); //instantiating design module

initial begin
        gray_in= 4'd0;
        #10;
        gray_in= 4'd1;
        #10;
        gray_in= 4'd2;
        #10;
        gray_in= 4'd3;
        #10;
        gray_in= 4'd4;
        #10;
        gray_in= 4'd5;
        #10;
        gray_in= 4'd6;
        #10;
        gray_in= 4'd7;
        #10;
        gray_in= 4'd8;
        #10;
        gray_in= 4'd9;
        #10;
        gray_in= 4'd10;
        #10;
        gray_in= 4'd11;
        #10;
        gray_in= 4'd12;
        #10;
        gray_in= 4'd13;
        #10;
        gray_in= 4'd14;
        #10;
        gray_in= 4'd15;
    end
    
initial begin
#150 $finish;
end
endmodule
