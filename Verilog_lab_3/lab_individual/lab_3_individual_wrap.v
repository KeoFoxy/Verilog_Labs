//Отобразить номер в группе по списку


module wrap_task (
    input [4:0] SW,
    output [6:0] HEX0,
    output [6:0] HEX1,
    output [6:0] HEX2,
    output [6:0] HEX3,
    output [6:0] LEDG
);

wire [3:0] x;
wire [3:0] y;

lab_3_individual inti_1(SW[4:0], HEX0[6:0], HEX1[6:0], HEX2[6:0], HEX3[6:0], x[3:0], y[3:0]);
lab_3_individual_led init_2(x[3:0], y[3:0], LEDG[7:0]);
