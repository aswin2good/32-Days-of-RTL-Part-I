`timescale 1ns / 1ps

//we will be implementing full subtractor design module
module full_subtractor(
    input a,b,bin,  // taking three inputs a, b and bin
    output Dout,Bout //taking two outputs Difference and Borrow out
    );
    
    assign Dout = a^b^bin;  // calculating difference
    assign Bout = (~a & (b^bin)) | (b & bin) ;  //calculating borrow out
endmodule
