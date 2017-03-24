//2 to 1 MUX - Created by Deva

module MUX2to1 (input1, input2, control, output1);

input input1, input2, control;
output output1;

//0 - input1
//1 - input2

wire and1Output, and2Output, control_bar;

not inverter1(control_bar, control);
and and1 (and1Output, input1, control_bar);
and and2 (and2Output, input2, control);
or or1 (output1, and1Output, and2Output); 

endmodule 