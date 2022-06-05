module detector (
input  x,
input  rst,
input  clk,
output y,
output e); 

//0011010
					 
parameter [2:0] reset =0, state0 = 1, state00 = 2, state001 = 3, state0011 = 4, state00110 = 5, state001101 = 6, state0011010 = 7;

reg [2:0] currentState;

initial 
begin
currentState=reset;
end

reg [6:0] temp;

initial temp=7'b0;
parameter z=7'b0011010;

always @(posedge clk)
begin
temp[6:0]={temp[5:0],x};
end

assign e = (temp==z)? 1:0;

always @(posedge clk)
begin
  if(rst)
      currentState=reset;
  else case(currentState)
  reset:
      begin 
		  if (x==1'b0) currentState=state0;
		     else currentState=reset;
		end
  state0 :
      begin 
		  if (x==1'b0) currentState=state00;
		     else currentState=reset;
		end
  state00 :
      begin 
		  if (x==1'b1) currentState=state001;
		     else currentState=state00;
		end
  state001 :
      begin 
		  if (x==1'b1) currentState=state0011;
		     else currentState=state0;
		end
  state0011 :
      begin 
		  if (x==1'b0) currentState=state00110;
		     else currentState=reset;
		end
  state00110 :
      begin 
		  if (x==1'b1) currentState=state001101;
		     else currentState=state00;
		end
	state001101 :
      begin 
		  if (x==1'b0) currentState=state0011010;
		     else currentState=reset;
		end
	state0011010 :
      begin 
		  if (x==1'b0) currentState=state00;
		     else currentState=reset;
		end
	default : currentState = reset;
	endcase
	end

assign y = (currentState==state0011010);
endmodule 
