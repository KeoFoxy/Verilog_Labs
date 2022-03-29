module wrap_2(
    input [3:0] SW,
    output [6:0] HEX0,
    output [6:0] HEX1
);

wire [3:0] y;

lab_3_2_1 inti_1 (SW [3:0], HEX1 [6:0], y[3:0]);
lab_3_2_2 init_2 (y [3:0], HEX0[6:0]);
