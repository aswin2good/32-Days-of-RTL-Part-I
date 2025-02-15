`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2025 01:30:14 PM
// Design Name: 
// Module Name: even_parity_generate
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


module even_parity_generate(
    input wire [7:0] data_in, // data_in is a 8 bit input, and is of type wire.
    output wire parity        // parity is a single bit, is also a wire type
    );
    
    assign parity = ^data_in; // XOR operation is being used in this command to every bit of data_in
    
endmodule
