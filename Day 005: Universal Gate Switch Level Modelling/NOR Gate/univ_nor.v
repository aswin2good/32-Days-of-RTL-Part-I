
module univ_nor(
    input a,b, //inputs are let us say a and b
    output out //let output be out, and is of wire type
    );
    
    supply0 gnd; //supply0 is a net type that means logic 0 / ground.
    supply1 vdd; //supply1 is a net type that means logic 1 / voltage supply.
    wire someV; //we are taking some temporary value of voltage as it acts as a common unknown connection between nmos.
    
    nmos(out,gnd,a); //nmos is a predefined primitive keyword: nmos (output(drain), input(source), control(gate));
    nmos(out,gnd,b);
    
    pmos(someV,vdd,a); //pmos is a predefined primitive keyword: pmos (output(drain), input(source), control(gate));
    pmos(out,someV,b);
    
    // nmos and pmos are the keywords generally used in a switch level modelling. 
endmodule
