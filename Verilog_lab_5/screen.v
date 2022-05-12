module screen(
input clk,
input [31:0] pulse_counter,
input [31:0] counter_status,

output reg [6:0] hex0,
output reg [6:0] hex1,
output reg [6:0] hex2,
output reg [6:0] hex3,
output reg [9:0] ledr
);

reg [4:0] min;
reg [4:0] ones;
reg [4:0] tens;
reg [4:0] hundreds;
reg [4:0] thousands;

initial min = 0;
initial ones = 0;
initial tens = 0;
initial hundreds = 0;
initial thousands = 0;
initial ledr = 10'b0000000000;

always@(posedge clk)
begin
	if((pulse_counter == 0)&(counter_status == 0))
		begin
			ones = ones + 1;
				if(ones == 10)
				begin
					tens = tens + 1;
					ones = 0;
				end
	if(tens == 10)
		begin
			hundreds = hundreds + 1;
			tens = 0;
		end
	else tens = tens;
	
	if(hundreds == 10)
		begin
			thousands = thousands + 1;
			hundreds = 0;
		end
	else
		begin
			hundreds = hundreds;
		end
		
	if(thousands == 6)
		begin
			min = min +1;
			ledr<={ledr[8:0], 1'b1}
			thousands = 0;
			if(min == 11) min = 0;
		else min = min;
		end
	end
	
	else
		if((pulse_counter == 0) & (counter_status == 1))
		begin
			ones = 0;
			tens = 0;
			hundreds = 0;
			thousands = 0;
			min = 0;
			ledr[9:0] = 10'b0000000000;
		end
	end
	
always@*
begin
case(ones)
0:hex0<=7'b1000000;
1:hex0<=7'b1001111;
2:hex0<=7'b0100100;
3:hex0<=7'b0110000;
4:hex0<=7'b0011001;
5:hex0<=7'b0010010;
6:hex0<=7'b0000010;
7:hex0<=7'b1111000;
8:hex0<=7'b0000000;
9:hex0<=7'b0010000;
10:hex0<=7'b1000000;
endcase

case(tens)
0:hex1<=7'b1000000;
1:hex1<=7'b1001111;
2:hex1<=7'b0100100;
3:hex1<=7'b0110000;
4:hex1<=7'b0011001;
5:hex1<=7'b0010010;
6:hex1<=7'b0000010;
7:hex1<=7'b1111000;
8:hex1<=7'b0000000;
9:hex1<=7'b0010000;
10:hex1<=7'b1000000;
endcase

case(hundreds)
0:hex2<=7'b1000000;
1:hex2<=7'b1001111;
2:hex2<=7'b0100100;
3:hex2<=7'b0110000;
4:hex2<=7'b0011001;
5:hex2<=7'b0010010;
6:hex2<=7'b0000010;
7:hex2<=7'b1111000;
8:hex2<=7'b0000000;
9:hex2<=7'b0010000;
10:hex2<=7'b1000000;
endcase

case(thousands)
0:hex3<=7'b1000000;
1:hex3<=7'b1001111;
2:hex3<=7'b0100100;
3:hex3<=7'b0110000;
4:hex3<=7'b0011001;
5:hex3<=7'b0010010;
6:hex3<=7'b1000000;
endcase
end

endmodule
