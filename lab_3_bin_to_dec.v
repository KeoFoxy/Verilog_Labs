module lab_3_bin_to_dec(
     input [3:0] SW,
     //input [3:0] KEY,
	  output reg [6:0] HEX3,
     output reg [6:0] HEX2,
     output reg [6:0] HEX1,
     output reg [6:0] HEX0,
	  output wire z,
	  output wire [3:0] y
);
assign z = (SW[3:0] > 4'b1001) ? 1:0;
assign y = (z==1)? 0:SW[3:0];

always@*
begin
case(y)
0:HEX0 = 7'b1000000;
1:HEX0 = 7'b1111001;
2:HEX0 = 7'b0100100;
3:HEX0 = 7'b0110000;
4:HEX0 = 7'b0011001;
5:HEX0 = 7'b0010010;
6:HEX0 = 7'b0000010;
7:HEX0 = 7'b1111000;
8:HEX0 = 7'b0000000;
9:HEX0 = 7'b0010000;     
endcase
case(y)
0:HEX1 = 7'b1000000;
1:HEX1 = 7'b1111001;
2:HEX1 = 7'b0100100;
3:HEX1 = 7'b0110000;
4:HEX1 = 7'b0011001;
5:HEX1 = 7'b0010010;
6:HEX1 = 7'b0000010;
7:HEX1 = 7'b1111000;
8:HEX1 = 7'b0000000;
9:HEX1 = 7'b0010000;     
endcase




end
endmodule

