module bin_to_dec_2 (sw, hex1, y);
//второй файл
//добавляем десятые части
input [3:0]sw;

output [6:0]hex1;
output [3:0]y;

wire z;

assign z = (sw[3:0] > 4'b1001);
assign hex1 = (z)?7'b1001111 : 7'b1000000;
assign y = (z)?sw[3:0]-4'b1010:sw[3:0];

endmodule