`timescale 1ns / 1ps

//we will be implementing the basic logic gates using structural modelling

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
// output signals in structural modelling are typically connected to other modules or components via continuous assignments
    
    //in structural modelling, we generally use assign statements
    //because they are used to create continuous assignments for signals, which is essential to model the interconnections between different hardware components
    //they act as continously driven statements.
    assign and_gate= a&b;
    assign or_gate= a|b;
    assign not_gate= ~a; 
    assign nand_gate= ~(a&b);
    assign nor_gate= ~(a|b);
    assign xor_gate= a^b; 
    assign xnor_gate= ~(a^b);
    
    // NOTE: it is all boolean operations
endmodule
