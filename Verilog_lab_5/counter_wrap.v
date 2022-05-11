module counter_wrap(
input CLOCK_50,
input [1:0] SW,

output [6:0] HEX0,
output [6:0] HEX1,
output [6:0] HEX2,
output [6:0] HEX3,
output [9:0] LEDR
);

wire [31:0] pulse_counter;
wire [31:0] counter_status;

counter init_1 (CLOCK_50, SW[0], SW[1], pulse_counter[31:0], counter_status[31:0]);
screen init_2 (CLOCK_50, pulse_counter[31:0], counter_status[31:0], HEX0[6:0],HEX1[6:0], HEX2[6:0], HEX3[6:0]);
endmodule