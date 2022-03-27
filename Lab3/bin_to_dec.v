module bin_to_dec
(
input [3:0]SW,

output [6:0]HEX0,
output [6:0]HEX1,
output [6:0]HEX2,
output [6:0]HEX3

);
//Оболочка к первому файлу
//bin 2 dec init_3 
//просто принять как должное, так и должно быть
//вообще хз зачем так пишут
bin_2_dec init_3 (SW [3:0], HEX0 [6:0], HEX1 [6:0], HEX2 [6:0], HEX3 [6:0]);

endmodule 