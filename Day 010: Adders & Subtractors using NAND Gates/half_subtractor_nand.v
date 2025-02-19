`timescale 1ns / 1ps

//we will be implementing half subtractor design using nand gates.
module half_subtractor_nand(
    input a,b, 
    output Diff,Bout
    );
    
    wire o1,o2,o3,o4,o5; //temporary outputs.

    //using gate level modelling
    nand n1(o1,a,b);
    nand n2(o2,o1,a);
    nand n3(o3,o1,b);
    nand n4(Diff,o3,o2);
    nand n5(Bout,o3,o3);
    
endmodule
