`timescale 1ns / 1ps

//we will be implementing full adder design using nand gates
module full_adder_nand(
    input a,b,cin,
    output Sum, Cout
    );
    wire o1,o2,o3,o4,o5,o6,o7; //temporary outputs

    //using gate level modelling
    nand n1(o1,a,b);
    nand n2(o2,o1,a);
    nand n3(o3,o1,b);
    nand n4(o4,o3,o2);
    nand n5(o5,o4,cin);
    nand n6(o6,o5,o4);
    nand n7(o7,o5,cin);
    nand n8(Sum,o7,o6);
    nand n9(Cout,o5,o1);
    
endmodule

