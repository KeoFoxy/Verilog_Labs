module wrap_2(
input [3:0]SW,
//оболочка ко второму заданию
output [6:0]HEX0,
output [6:0]HEX1
);

wire [3:0] y;

bin_to_dec_2 init_1 (SW [3:0], HEX1 [6:0], y[3:0]);
bin_2_dec_2_2 init_2 (y[3:0], HEX0 [6:0]);
endmodule