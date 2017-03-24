//4 to 1 MUX - Created by Deva

module MUX4to1 (input1, input2, input3, input4, control1, control2, finalOutput);

input input1, input2, input3, input4, control1, control2;
output finalOutput;

wire or1Output, or2Output, and1Output, and2Output, and3Output, and4Output, and5Output, and6Output, control1_bar, control2_bar;

//00 - input1
//10 - input2
//01 - input3
//11 - input4

not inverter1(control1_bar, control1);

and and1(and1Output, input1, control1_bar);
and and2(and2Output, input2, control1);
or or1(or1Output, and1Output, and2Output); 

and and3(and3Output, input3, control1_bar);
and and4(and4Output, input4, control1);
or or2(or2Output, and3Output, and4Output);

not inverter2(control2_bar, control2);

and and5(and5Output, or1Output, control2_bar);
and and6(and6Output, or2Output, control2);
or or3(finalOutput, and5Output, and6Output); 


endmodule 
