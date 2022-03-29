module lab_3_2_2 (y, hex0);
input [3:0] y;
output reg [6:0] hex0;

always @*
begin
    case(y)
        0:hex0=7'b1000000;
        1:hex0=7'b1001111;
        2:hex0=7'b0100100;
        3:hex0=7'b0110000;
        4:hex0=7'b0011001;
        5:hex0=7'b0010010;
        6:hex0=7'b0000010;
        7:hex0=7'b1111000;
        8:hex0=7'b0000000;
        9:hex0=7'b0010000;
    endcase
end

endmodule  
