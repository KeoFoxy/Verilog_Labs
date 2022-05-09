module I_love_anime_2(
input clk,
input en,
input reset,
input SW,

output reg [9:0] ledr
);

initial ledr = 10'b1111111111; 

always@(posedge clk)
begin

if(reset)
begin
ledr<=10'b1;
end
else
begin
	if(en)
	begin
	ledr<={ledr[8:0], SW};
	end
	else
	begin
	ledr<=ledr;
	end
end
end
endmodule
