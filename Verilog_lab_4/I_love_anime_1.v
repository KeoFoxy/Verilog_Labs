module I_love_anime_1(
input clk,
input en,
input reset,
input [9:0] SW,

output reg [6:0] hex0,
output reg [6:0] hex1,


output [6:0] hex2,//Чисто для красоты, чтобы не было восьмерок
output [6:0] hex3	//Чисто для красоты, чтобы не было восьмерок
);

//Объявим переменные для хранения чисел

reg [6:0] t; //десятки
reg [6:0] o; //единицы

initial t=7'b0;
initial o=7'b0;

assign hex2 = 7'b1;//ничего не горит
assign hex3 = 7'b1;//ничего не горит

wire var; //Сюда запишем условие 4 варианта
assign var = ((SW[9] ^ SW[8]) == 0) ? 1'b1 : 1'b0; //Задали условие

always@(posedge clk)
begin

//Пропишем ресет

if(reset)
begin
	t<=0; //Ресетнули десятки
	o<=0; //Ресетнули единицы
end
else
if(var) //Прописываем вар
begin
	o<=o + 1;//счетчик
	if(o == 9)
	begin
	t<=t+7'b1;
	o<=7'b0;
	//Если переваливает за сотню
		if(t == 9 )
		begin
		o<=7'b0;
		t<=7'b0;
		end
	end
	else
	t<=t;
	end
	else
	o<=o;
	

//Отображаем числа
case(o)
0:hex0 <= 7'b1000000;
1:hex0 <= 7'b1111001;
2:hex0 <= 7'b0100100;
3:hex0 <= 7'b0110000;
4:hex0 <= 7'b0011001;
5:hex0 <= 7'b0010010;
6:hex0 <= 7'b0000010;
7:hex0 <= 7'b1111000;
8:hex0 <= 7'b0000000;
9:hex0 <= 7'b0010000;
endcase
case(t)
0:hex1 <= 7'b1000000;
1:hex1 <= 7'b1111001;
2:hex1 <= 7'b0100100;
3:hex1 <= 7'b0110000;
4:hex1 <= 7'b0011001;
5:hex1 <= 7'b0010010;
6:hex1 <= 7'b0000010;
7:hex1 <= 7'b1111000;
8:hex1 <= 7'b0000000;
9:hex1 <= 7'b0010000;
endcase

end

endmodule