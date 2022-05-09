module decoder_key_hex_4 (
    input [1:0]SW,
    input [3:0] key,
    output reg [6:0] hex3,//Display 4
    output reg [6:0] hex2,//Display 3
    output reg [6:0] hex1,//Display 2
    output reg [6:0] hex0 //Display 0

);

    always@*
    begin
	 
	if(key[0] == 0)
	begin
	        hex3 = 7'b1000000;
			hex2 = 7'b1000000;
			hex1 = 7'b1000000;
			hex0 = 7'b1111001;
	end
	 
	else if(key[1] == 0)
	begin
	        hex3 = 7'b1000000;
			hex2 = 7'b1000000;
			hex1 = 7'b0100100;
			hex0 = 7'b1000000;
	end
	 
	else if(key[2] == 0)
	begin
	        hex3 = 7'b1000000;
			hex2 = 7'b0110000;
			hex1 = 7'b1000000;
			hex0 = 7'b1000000;
	end

	else if(key[3] == 0)
	begin
	        hex3 = 7'b0011001;
			hex2 = 7'b1000000;
			hex1 = 7'b1000000;
			hex0 = 7'b1000000;
	end

    else if(SW[1])
	begin
			hex3 = 7'b0011001;
			hex2 = 7'b0110000;
			hex1 = 7'b0100100;
			hex0 = 7'b1111001;
    end
	 
	else if(SW[0])
	begin
	        hex3 = 7'b1000000;
			hex2 = 7'b1000000;
			hex1 = 7'b1000000;
			hex0 = 7'b1000000;
	end

    else if(!(SW[0]& SW[1] &(!key))) //Исключение условия, когда кнопка не нажата и свитч ни в одном из положений.
	begin
	        hex3 = 7'b0000000;
			hex2 = 7'b0000000;
			hex1 = 7'b0000000;
			hex0 = 7'b0000000;
	end
	 
	end
endmodule


//  assign hex3 = (7'b1000000 & 7'b1000000 & 7'b1000000 & 7'b0011001);
//
//
//