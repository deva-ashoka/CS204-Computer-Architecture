//Half Subtractor -created by Deva

module halfSubtractor (diff, carry, input1, input2);

input input1, input2;
output diff, carry;
wire input1_bar;

xor xor1(diff, input1, input2);
not not1(input1_bar, input1);
and and1(carry, input1_bar, input2);

endmodule
