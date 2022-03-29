module lab_3_individual_led(x, y, ledg);

//Добавим вывод на светодиодах

input [3:0] x;
input [3:0] y;

output reg [7:0] ledg;

always @*
begin
    ledg[7:4] = x;
    ledg[3:0] = y;
end
endmodule