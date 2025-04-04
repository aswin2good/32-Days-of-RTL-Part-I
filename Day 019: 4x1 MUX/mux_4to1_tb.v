`timescale 1ns / 1ps


module mux_4to1_tb();
reg a,b,c,d;
reg s0,s1;
wire out;

mux_4to1 DUT(a,b,c,d,s0,s1,out);

 initial
 begin

 a=1'b0; b=1'b0; c=1'b0; d=1'b0;
 s0=1'b0; s1=1'b0;
 #500 $finish;

end

always #47 a=~a;
always #18 b=~b;
always #10 c=~c;
always #15 d=~d;
always #80 s0=~s0;
always #160 s1=~s1;

endmodule
