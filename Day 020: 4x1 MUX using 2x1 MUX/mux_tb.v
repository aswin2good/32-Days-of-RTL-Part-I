`timescale 1ns / 1ps

//this is the testbench for 4:1 MUX 
module mux_tb();
    reg [3:0] i;
    reg [1:0] sel;
    wire y;
    
    mux_4to1_using_2to1 DUT(i, sel, y); //instantiating 4:1 MUX module
    
    always begin
			
			i=$random;
			sel=$random;
            #10;
		end
endmodule
