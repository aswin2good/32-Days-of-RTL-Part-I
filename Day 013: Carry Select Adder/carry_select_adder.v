`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 07:12:45 AM
// Design Name: 
// Module Name: carry_select_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
    input a, b, cin,
    output Sout, Cout
    );
    
    assign Sout= a ^ b ^ cin;
    assign Cout= (a&b) | (b&cin) |(a&cin) ;
endmodule

module mux (
    input a,b,select,
    output y
   );
   
   assign y = (~select&a) | (select&b);
endmodule

module carry_select_adder(
    input [3:0] a,b, 
    input cin,
    output [3:0] sum,
    output cout
    );
    
    wire sum0_0,sum0_1,sum0_2,sum0_3,sum1_0,sum1_1,sum1_2,sum1_3;
    wire c0_1,c0_2,c0_3,c0_4,c1_1,c1_2,c1_3,c1_4;
    
    full_adder fa1(a[0],b[0],1'b0,sum0_0,c0_1);
    full_adder fa2(a[1],b[1],c0_1,sum0_1,c0_2);
    full_adder fa3(a[2],b[2],c0_2,sum0_2,c0_3);
    full_adder fa4(a[3],b[3],c0_3,sum0_3,c0_4);
    
    full_adder fa5(a[0],b[0],1'b1,sum1_0,c1_1);
    full_adder fa6(a[1],b[1],c1_1,sum1_1,c1_2);
    full_adder fa7(a[2],b[2],c1_2,sum1_2,c1_3);
    full_adder fa8(a[3],b[3],c1_3,sum1_3,c1_4);
    
    mux m1(sum0_0,sum1_0,cin,sum[0]);
    mux m2(sum0_1,sum1_1,cin,sum[1]);
    mux m3(sum0_2,sum1_2,cin,sum[2]);
    mux m4(sum0_3,sum1_3,cin,sum[3]);
    
    mux m5(c0_4,c1_4,cin,cout);

endmodule
