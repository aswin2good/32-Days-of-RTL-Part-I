`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 08:12:15 AM
// Design Name: 
// Module Name: mux_2to1_tb
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

//this is the testbench for 2x1 mux design module
module mux_2to1_tb();
    reg a,b; //taking two inputs
    reg sel; //selecting an input 
    wire y;
    
    mux_2to1 DUT(a,b,sel,y); //instantiating mux module
    
    always 
    begin
			
	    a=$random;   //taking random values of a,b and select lines
	    b=$random;
    	sel=$random;
        #10;
		end
    
endmodule
