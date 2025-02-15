`timescale 1ns / 1ps


module odd_parity_check(
    input [7:0] data_in, // data_in is a 8 bit input, and is of type wire.
    input parity_in,     // parity is a single bit, is also a wire type
    output error         // single bit error, to check for even parity
    );
    
    assign error = ~^({parity_in, data_in}); // XOR operation is being used in this command to every bit of concatenation of parity_in and data_in
endmodule

