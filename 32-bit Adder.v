//32-bit Adder: Created by Deva

module adder32Bit(sum, input1, input2);

input [31:0] input1, input2;

output [31:0] sum;

assign sum [31:0] = {1'b0,input1} + {1'b0,input2};

endmodule
