`timescale 1ns / 1ps

//this will be the testbench for decoder 3x8 design module
module decoder_tb();
    reg [2:0] in;
	wire [7:0] out;

	decoder_3to8 DUT(in,out); //the is the decoder 3x8 deign instantiation
	initial
	begin
		in=3'b000;
		#10;
	end
	always begin
		#10 in=3'b000;
		#10 in=3'b001;
		#10 in=3'b010;
		#10 in=3'b011;
		#10 in=3'b100;
		#10 in=3'b101;
		#10 in=3'b110;
		#10 in=3'b111;	
	end	
	
	initial begin
	#100 $finish;
	end
endmodule
