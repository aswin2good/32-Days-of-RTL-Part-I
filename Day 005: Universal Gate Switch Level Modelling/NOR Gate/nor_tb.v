
module nor_tb();
    reg Vin1, Vin2; //inputs are reg type, because inputs' value will be used to find out the value of output.
    wire Vout; //output are wire type, because it has to change continously by DUT.
    
    univ_nor DUT(.a(Vin1),.b(Vin2), .out(Vout)); //instantiation
    
    initial Vin1= 1'b0; //initializing value of Vin1 as 0
    initial Vin2= 1'b0; //initializing value of Vin2 as 0
    initial forever #10 Vin1 = ~Vin1; // intializing and repeating this command of changing in value every 10ns.
    initial forever #20 Vin2 = ~Vin2; // intializing and repeating this command of changing in value every 20ns.
    initial #200 $finish; // intializing to finish this testbench at t=100ns

        //NOTE: all initial statements run together when the code is executed, and not one after the other(linewise).
endmodule
