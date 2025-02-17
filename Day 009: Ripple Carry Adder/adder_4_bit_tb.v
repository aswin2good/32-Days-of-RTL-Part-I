`timescale 1ns / 1ps

//this is the testbench for 4 bit ripple carry/ parallel adder design module
module adder_4_bit_tb();
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire carry;
    
    adder_4_bit DUT(a,b,cin,sum,carry); //instantiating the 4 bit adder module
    
    always 
      begin //always block runs indefinitely, assigning new random values to a, b, and cin every 10 time units.
        a = $random; //$random generates a random integer and assigns it to a, b, and cin
        b = $random;
        cin = $random;
        #10; //next cycle happens after 10 units.
      end
    
    initial 
      begin 
        $monitor("a= %b  b= %b  cin= %b  sum= %b  carry= %b", a, b, cin, sum, carry);
        #100 $finish;
      end

endmodule
