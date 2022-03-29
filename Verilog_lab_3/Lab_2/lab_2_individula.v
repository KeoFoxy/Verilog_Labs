module ebanoe_dop_zadaniye(
    input [9:0] SW,
    input [3:0] KEY,
    output reg [6:0]HEX3,
    output reg [6:0]HEX2,
    output reg [6:0]HEX1,
    output reg [6:0]HEX0);

always @*
begin
if (SW[7])
begin
HEX3 = (~KEY[3]^SW[9])?7'b00101010 : 7'b0101010;
HEX2 = (~KEY[2]^SW[9])?7'b00101010 : 7'b0101010;
HEX1 = (~KEY[1]^SW[9])?7'b00101010 : 7'b0101010;
HEX0 = (~KEY[1]^SW[9])?7'b00101010 : 7'b0101010;
end
else
begin
HEX0[0] = SW[0];
HEX0[1] = SW[1];
HEX0[2] = SW[2];
HEX0[3] = SW[3];
HEX0[4] = SW[4];
HEX0[5] = SW[5];
HEX0[6] = SW[6];
end
end
endmodule
Файл не выбран
More



)