`timescale 1ns / 1ps

//we will be implementing half adder design using nand gates.
module half_adder_nand(
    input a,b, 
    output Sum,Cout
    );
    wire o1,o2,o3,o4; //temporary outputs.

    //using gate level modelling.
    nand n1(o1,a,b);
    nand n2(o2,o1,a);
    nand n3(o3,o1,b);
    nand n4(Sum,o3,o2);
    nand n5(Cout,o1,o1);
    
endmodule
