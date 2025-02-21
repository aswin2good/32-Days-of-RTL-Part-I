`timescale 1ns / 1ps

module carry_select_tb();
    reg [3:0]a,b;
    reg cin;
    wire[3:0]sum;
    wire cout ;
    
    carry_select_adder dut(a,b,cin,sum,cout); //instantiating carry select adder design module

    initial begin
            cin=1'b0;a=4'b1001;b=4'b1010;
        #10 cin=1'b1;a=4'b1101;b=4'b0110;
        #10 cin=1'b1;a=4'b0101;b=4'b0111;
        #10 cin=1'b0;a=4'b1100;b=4'b1011;
        #10 cin=1'b1;a=4'b1110;b=4'b0011;
        #10 $finish;
    end
endmodule
