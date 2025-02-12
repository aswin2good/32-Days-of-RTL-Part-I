
module switch_tb();
    reg in;  
    wire out; 
    
    switch DUT(in,out);
    
    initial in= 1'b0;
    initial forever #10 in = ~in;
    initial #100 $finish;
    
endmodule
