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


module mux_2to1_tb();
    reg a,b;
    reg sel;
    wire y;
    
    mux_2to1 DUT(a,b,sel,y);
    
    always 
    begin
			
	    a=$random;
	    b=$random;
    	sel=$random;
        #10;
		end
    
endmodule
