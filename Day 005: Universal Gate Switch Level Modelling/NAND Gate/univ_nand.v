`timescale 1ns / 1ps

//we will be implementing NAND Gate design using switch level modelling
module univ_nand(
    input a,b,  //let inputs have two values a and b
    output out //let output be said to be out, and by default it is of wire type.
    );
    
    supply0 gnd; //supply0 is a net type that means logic 0 / ground.
    supply1 vdd; //supply1 is a net type that means logic 1 / voltage supply
    wire someV; //we are taking some temporary value of voltage as it acts as a common unknown connection between nmos. 
    
    nmos(someV,gnd,b); //nmos is a predefined primitive keyword: nmos (output(drain), input(source), control(gate));
    nmos(out,someV,a);
    
    pmos(out,vdd,a); //pmos is a predefined primitive keyword: pmos (output(drain), input(source), control(gate));
    pmos(out,vdd,b);

    // nmos and pmos are the keywords generally used in a switch level modelling. 
endmodule
