// Contador 4-bit com clear e enable 
module count4 (clk, clear, enable, out);
	input clk;
	input clear; 	
	input enable; 	
	output reg [3:0] out; 

always @(posedge clk)
	begin
	if (clear) out <= 4'b0;
	else if (enable) out <= out + 4'b1;
	end
endmodule
