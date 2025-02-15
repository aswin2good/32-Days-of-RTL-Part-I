`timescale 1ns / 1ps 

//we will be implementing a cmos inverter using nmos, pmos primitive keywords
module switch(
    input in, //input is said to be in
    output out //output is said to be out (wire type)
    );
    
    supply0 gnd; //supply0 is a net type that means logic 0 / ground.
    supply1 vdd; //supply1 is a net type that means logic 1 / voltage supply. 
    
    nmos(out,gnd,in); //nmos is a predefined primitive keyword: nmos (output(drain), input(source), control(gate));
    pmos(out,vdd,in); //pmos is a predefined primitive keyword: pmos (output(drain), input(source), control(gate));
    // nmos and pmos are the keywords generally used in a switch level modelling. 
    
endmodule
