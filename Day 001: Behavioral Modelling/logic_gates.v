
//we will be implementing the basic logic gates using behavioral modelling

module logic_gates(        
    input a,b,             // taking 2 inputs, a and b
    output reg and_gate,   // taking and_gate as output of AND operation
    output reg or_gate,    // taking or_gate as output of OR operation
    output reg not_gate,   // taking not_gate as output of NOT operation
    output reg nand_gate,  // taking nand_gate as output of NAND operation
    output reg nor_gate,   // taking nor_gate as output of NOR operation
    output reg xor_gate,   // taking xor_gate as output of XOR operation
    output reg xnor_gate   // taking xnor_gate as output of XNOR operation
    );
    
//why did we use reg type as output?
// it is a  a storage element that can hold a value across simulation cycles.
// it is used whenever we need to assign values in procedural blocks (always / initial).

    
    always@(*) //this means, this procedural block will run whenever any of the inputs change.
               //here, even if a or b or both change, this block will run
       begin   // this is used with end. used to group two or more assignments (that are given below).
    
          and_gate= a&b;
          or_gate= a|b;
          not_gate= ~a; 
          nand_gate= ~(a&b);
          nor_gate= ~(a|b);
          xor_gate= a^b; 
          xnor_gate= ~(a^b);
    
       end
    // NOTE: it is all boolean operations
endmodule
