 module decoder_key_hex_4_2 (
    input [1:0]SW,
    input [3:0] key,
    output [6:0] hex3,//Display 4
    output [6:0] hex2,//Display 3
    output [6:0] hex1,//Display 2
    output [6:0] hex0 //Display 0

);

 assign hex3 = (~key[3] ^ SW[1])? 7'b0011001 : 7'b1000000;
 assign hex2 = (~key[2] ^ SW[1])? 7'b0110000 : 7'b1000000;
 assign hex1 = (~key[1] ^ SW[1])? 7'b0100100 : 7'b1000000;
 assign hex0 = (~key[0] ^ SW[1])? 7'b1111001 : 7'b1000000;

endmodule