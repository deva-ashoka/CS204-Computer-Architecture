//ALU: Does 32 bit Addition, 32 bit subtraction, bitwise XOR, and 2*(A+B)
//According to the controls, one of the operations is displayed  
//Created by Deva

module ALU (input1, input2, control1, control2, outFinal);

parameter N = 32;

input [N-1:0] input1, input2;
input control1, control2;
output [N-1:0] outFinal;

//32-bit Adder: A+B
wire [N-1:0] outSum;
assign outSum = {1'b0,input1} + {1'b0,input2};

//32-bit Subtractor: A-B
wire [N-1:0] outDiff;
assign outDiff = {1'b0,input1} - {1'b0,input2};

//Bitwise XOR: A XOR B
wire [N-1:0] outXOR;
assign outXOR = input1 ^ input2;

//2*(A+B)
wire [N-1:0] out2OfAplusB;
assign out2OfAplusB = {1'b0,outSum} + {1'b0,outSum};


//4 to 1 MUX
//00 - Sum
//10 - Difference
//01 - XOR
//11 - 2*(A+B)

wire [N-1:0] or1Output, or2Output, and1Output, and2Output, and3Output, and4Output, and5Output, and6Output;
wire control1_bar, control2_bar;

not inverter1(control1_bar, control1);

and and1 [N-1:0] (and1Output, outSum, control1_bar);
and and2 [N-1:0] (and2Output, outDiff, control1);
or or1 [N-1:0] (or1Output, and1Output, and2Output); 

and and3 [N-1:0] (and3Output, outXOR, control1_bar);
and and4 [N-1:0] (and4Output, out2OfAplusB, control1);
or or2 [N-1:0] (or2Output, and3Output, and4Output);

not inverter2(control2_bar, control2);

and and5 [N-1:0] (and5Output, or1Output, control2_bar);
and and6 [N-1:0] (and6Output, or2Output, control2);
or or3 [N-1:0] (outFinal, and5Output, and6Output); 


endmodule
