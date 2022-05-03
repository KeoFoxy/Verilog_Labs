module wrap_individual_lab_4(
//22 в списке - 4 вариант.
input 	CLOCK_50,
input [1:0] KEY,
input [9:0] LEDR,
input [9:0] SW,
input [9:0] HEX1,
input [9:0] HEX0,

input [9:0] HEX2,
input [9:0] HEX3
);

I_love_anime_1 init_1 (CLOCK_50, !KEY[0], !KEY[1],SW[9:0], HEX0[6:0],HEX1[6:0],HEX2[6:0],HEX3[6:0]);
I_love_anime_2 init_2 (CLOCK_50, !KEY[0], !KEY[1],SW, LEDR[9:0]);

endmodule