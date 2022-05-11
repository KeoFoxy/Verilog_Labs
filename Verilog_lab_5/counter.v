module counter(
input clk,
input en,
input reset,

output reg [31:0] pulse_counter,
output reg [31:0] counter_status);

//Компаратор для 50МГц генератора
wire hundredth_of_second_passed = (pulse_counter == 31'd499999);

always @(posedge clk or posedge reset)

begin
	if(reset) 
	begin
		pulse_counter <= 0;
		counter_status <= 1;
	end
	else
	begin
		if(en | hundredth_of_second_passed)
			begin
				if(hundredth_of_second_passed) 
					begin
						pulse_counter<=0;
						counter_status<=0;
					end
				else 
				begin
					pulse_counter <= pulse_counter + 1;
					counter_status <= counter_status + 1;
				end
			end
		else
			begin
				pulse_counter <= pulse_counter;
				counter_status <= counter_status;
			end
		end
	end
endmodule


/*
if (reset) 
	begin
	pulse_counter <= 0; //асинхронный сброс
	l<=1;
	end

	else begin
		if (device_running) begin
			if (hundredth_of_second_passed) 
				begin
					pulse_counter <= 0; //синхронный сброс
					l<=0;
				end
			else 
				begin 
					pulse_counter <= pulse_counter + 1;
					l<=l+1;
				end
			end else
			begin
				pulse_counter <= pulse_counter;
				l<=l; 
			end
		end
	end
endmodule 

*/