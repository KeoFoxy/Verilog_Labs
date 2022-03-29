module bin_2_dec(sw, hex0, hex1, hex2, hex3); 
//первый файл
//отвечает за первый разряд числа
input [3:0] sw;

output reg [6:0] hex0;
output [6:0] hex1; //useless
output [6:0] hex2; //useless
output [6:0] hex3; //useless

wire z;
wire [3:0] y;


//Сравниваем каждый бит свичта если их комбинация больше
//10, то z = 1, иначе 0
//Далее тернарник, запихиваем в y число и его предаем в case
//Входим в цикл по always
//И через кейс рисуем число
assign z =(sw[3:0] > 4'b1001)?1:0;
assign y =(z==1)?0 :sw[3:0];

always @*
begin
case(y)
0:hex0 = 7'b1000000;
1:hex0 = 7'b1111001;
2:hex0 = 7'b0100100;
3:hex0 = 7'b0110000;
4:hex0 = 7'b0011001;
5:hex0 = 7'b0010010;
6:hex0 = 7'b0000010;
7:hex0 = 7'b1111000;
8:hex0 = 7'b0000000;
9:hex0 = 7'b0010000;
endcase
end

endmodule