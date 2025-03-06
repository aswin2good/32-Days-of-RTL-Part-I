`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 07:27:11 AM
// Design Name: 
// Module Name: encoder_8x3
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

//we will be implementing 8x3 encoder 

module encoder_8x3(
    input [7:0] in,
    output reg[2:0] out
    );
    
    always@(*)          //we will use behavioral modelling
     begin
     
     if(in[7]==1)
		 out=3'b111;
		else if(in[6]==1)
		 out=3'b110;
		else if(in[5]==1)
		 out=3'b101;
		else if(in[4]==1)
		 out=3'b100;
		else if(in[3]==1)
		 out=3'b011;
		else if(in[2]==1)
		 out=3'b010;
		else if(in[1]==1)
		 out=3'b001;
		else 
		 out=3'b000;
	 end
    
endmodule
