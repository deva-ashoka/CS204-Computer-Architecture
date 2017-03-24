//created by Deva - Instruction Decoder
module instructionDecoder(instruction, opcode, source1, source2, source3, destination, value, goToInst, ALUcontrol1, ALUcontrol2);

parameter N = 19; //19 bit instruction
parameter opN = 4; //4 bit opcode
parameter addrN = 5; //5 bit address for source and destination
parameter valN = 10; //10 bit value

input [N-1:0] instruction;
output [opN-1:0] opcode;
output [addrN-1:0] source1, source2, source3, destination;
output [valN-1:0] value, goToInst;
output ALUcontrol1, ALUcontrol2;

assign opcode = instruction [N-1:15]; //assigning the first 4 bits to opcode

reg [addrN-1:0] source1, source2, source3, destination;
reg [valN-1:0] value, goToInst;
reg ALUcontrol1, ALUcontrol2;


always @(instruction)

case(opcode)

4'b0000://add
begin
ALUcontrol1 = 1'b0;
ALUcontrol2 = 1'b0;
source1 = instruction [14:10];
source2 = instruction [9:5];
destination = instruction [4:0];
end

4'b0001://sub
begin
ALUcontrol1 = 1'b1;
ALUcontrol2 = 1'b0;
source1 = instruction [14:10];
source2 = instruction [9:5];
destination = instruction [4:0];
end

4'b0010://xor
begin
ALUcontrol1 = 1'b0;
ALUcontrol2 = 1'b1;
source1 = instruction [14:10];
source2 = instruction [9:5];
destination = instruction [4:0];
end

4'b0011://mul*2
begin
ALUcontrol1 = 1'b1;
ALUcontrol2 = 1'b1;
source1 = instruction [14:10];
destination = instruction [4:0];
end

4'b0100://bnez
begin
source1 = instruction [14:10];
goToInst = instruction [9:0];
end

4'b0101://mv
begin
source1 = instruction [14:10];
destination = instruction [4:0];
end

4'b0110://ld
begin
source1 = instruction [14:10];
source2 = instruction [9:5];
destination = instruction [4:0];
end

4'b0111://st
begin
source1 = instruction [14:10];
source2 = instruction [9:5];
source3 = instruction [4:0];
end

4'b1000://ldi
begin
destination = instruction [14:10];
value = instruction [9:0];
end

4'b1001://sti
begin
source1 = instruction [14:10];
value = instruction [9:0];
end


endcase

		
endmodule

