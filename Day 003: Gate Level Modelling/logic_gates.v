`timescale 1ns / 1ps

//we will be implementing the basic logic gates using gate level modelling

module logic_gates(        
    input a,b,             // taking 2 inputs, a and b
    output and_gate,   // taking and_gate as output of AND operation
    output or_gate,    // taking or_gate as output of OR operation
    output not_gate,   // taking not_gate as output of NOT operation
    output nand_gate,  // taking nand_gate as output of NAND operation
    output nor_gate,   // taking nor_gate as output of NOR operation
    output xor_gate,   // taking xor_gate as output of XOR operation
    output xnor_gate   // taking xnor_gate as output of XNOR operation
    );
    
//why didn't we use reg type as output?
// output signals in gate level modelling are generally done using pre-defined gate keywords.
    
    and andgate(and_gate, a, b);
    or orgate(or_gate, a, b);
    not notgate(not_gate, a);
    nand nandgate(nand_gate, a, b);
    nor norgate(nor_gate, a, b);
    xor xorgate(xor_gate, a, b);
    xnor xnorgate(xnor_gate, a, b);
    
endmodule
