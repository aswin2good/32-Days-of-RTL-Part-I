`timescale 1ns / 1ps

//we will be implementing 2x1 mux
module mux_2to1(
    input a,b,  //taking two inputs 
    input select, //taking ne select line
    output y     //taking an output
    );
    assign y= select ? b : a;  //select b if y is 1;
                               //select a if y is 0;
    
    
endmodule
