
// we will be using this testbench to simulate the waveforms.
module logic_gate_tb();
    reg A,B; //here, inputs are reg types, they are used to hold and assign values to these signals during the simulation
    wire andg, //outputs, are wire because they represent signals that are driven by the module under test (DUT)
         org,
         notg,
         nandg,
         norg,
         xorg,
         xnorg;
         
     logic_gates DUT(.a(A),.b(B),.and_gate(andg),.or_gate(org),.not_gate(notg),.nand_gate(nandg),.nor_gate(norg),.xor_gate(xorg),.xnor_gate(xnorg));
     //this is how we represent Instantiation if variables are different.
     // we can arrange them in any order of our choice, just use '.' operator
     initial  // this is used to run the simulation just once.
         begin // this is used with end. used to group two or more assignments (that are given below).
             #10 A= 1'b0; B= 1'b0; // simulation sstarts from 0, upto 10 A=0,B=0
             #10 A= 1'b0; B= 1'b1; // from 10 to 20, A=0,b=1
             #10 A= 1'b1; B= 1'b0; // from 20 to 30, A=1,B=0
             #10 A= 1'b1; B= 1'b1; // from 30 to 40, A=1,B=1
         end
endmodule
