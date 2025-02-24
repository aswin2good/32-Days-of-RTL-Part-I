`timescale 1ns / 1ps

//this is the testbench for divider module
module divider_tb();
    reg [3:0]dividend,divisor;
    wire [3:0]quotient,remainder;

	divider_4_bit DUT (dividend,divisor,quotient,remainder);  //instantiating divider design module
		always begin
			
			dividend =$random;
			divisor =$random;
                        #10;
		end
		initial begin #90 $finish;
		end
endmodule
