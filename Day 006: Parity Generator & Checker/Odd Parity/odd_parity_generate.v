`timescale 1ns / 1ps

//we will be implementing odd parity generating design module
module odd_parity_generate(
    input wire [7:0] data_in, // data_in is a 8 bit input, and is of type wire.
    output wire parity        // parity is a single bit, is also a wire type
    );
    
    assign parity = ~^data_in; // XNOR operation is being used in this command to every bit of data_in
    
endmodule
