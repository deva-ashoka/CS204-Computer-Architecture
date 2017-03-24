// 5 to 32 Decoder (DeMUX) - created by Deva

module decoder5to32 (binaryInput, decoderOutput);

parameter IN = 5;
parameter OUT = 32;

input [IN-1:0] binaryInput;
output [OUT-1:0] decoderOutput;

assign decoderOutput = (1 << binaryInput);

endmodule 