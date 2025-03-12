`timescale 1ns / 1ps

//this is the testbench for binary to BCD conversion design module
module binary_to_bcd_testbench;
    reg [13:0] bin;
    wire [15:0] bcd;
    
    // Instantiate the binary_to_bcd module
    binary_to_bcd DUT (.bin(bin),.bcd(bcd));
    
    initial begin
        // Apply test cases
        bin = 14'b00000000000000; #10; // 0
        $display("Binary: %b, BCD: %b", bin, bcd);
        
        bin = 14'b00000000001010; #10; // 10
        $display("Binary: %b, BCD: %b", bin, bcd);
        
        bin = 14'b00000000011111; #10; // 31
        $display("Binary: %b, BCD: %b", bin, bcd);
        
        bin = 14'b00000010011001; #10; // 201
        $display("Binary: %b, BCD: %b", bin, bcd);
        
        bin = 14'b00001111111111; #10; // 4095
        $display("Binary: %b, BCD: %b", bin, bcd);
        
        bin = 14'b00101010101010; #10; // 2730
        $display("Binary: %b, BCD: %b", bin, bcd);
        
        // End simulation
        $finish;
    end
endmodule
