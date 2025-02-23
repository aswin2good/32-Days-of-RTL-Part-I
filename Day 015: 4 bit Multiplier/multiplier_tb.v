`timescale 1ns / 1ps

//this is the testbench for multiplier design module
module multiplier_tb();
    reg [3:0]a,b;
	wire [7:0]mul_result;

    multiplier_4_bit dut(a, b, mul_result); //instantiating multiplier design module
    
		always begin
			
			a=$random;  //taking random integer values of a and b
			b=$random;
            #10;
		end
		initial begin 
		#70 $finish;
		end
endmodule
