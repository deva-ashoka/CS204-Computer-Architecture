//Branch Unit - Consists of BNEZ and PC

module BranchUnit(value, goToInst, PC);

parameter N = 32;
parameter O = 10;

input [N-1:0] value;
input [O-1:0] goToInst;

output [O-1:0] PC;
reg [O-1:0] PC;

always@(value)
begin
	if (value == 0)
		begin
		assign PC = PC + 1'b1;
		end 
	else
		begin
		assign PC = goToInst;
		end
end

endmodule
		

