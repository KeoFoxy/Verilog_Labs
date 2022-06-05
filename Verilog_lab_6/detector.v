module detector (
input  x,
input  rst,
input  clk,
output y,
output e,
output reg [3:0] currentState ); 

//0011010
					 
parameter [3:0] reset =0, state0 = 1, state00 = 2, state001 = 3, state0011 = 4, state00110 = 5, state001101 = 6, state0011010 = 7;

reg [6:0] temp = 7'b0;
initial begin
   currentState=reset;
end
parameter z=7'b0011010;

always @(posedge clk) temp[6:0]={temp[5:0],x};

assign e = (temp==z)? 1:0;

always @(posedge clk)
begin
  if (rst)  currentState= reset ;
  else  
  case(currentState)
  reset: currentState=(x==1'b0) ? state0 : reset;
  state0: currentState=(x==1'b0) ? state00 : reset;
  state00: currentState=(x==1'b1) ? state001 : state00;
  state001: currentState=(x==1'b1) ? state0011 : state0;
  state0011: currentState=(x==1'b0) ? state00110 : reset;
  state00110: currentState=(x==1'b1) ? state001101 : state00;
  state001101: currentState=(x==1'b0) ? state0011010 :reset;
  state0011010: currentState=(x==1'b0) ? state00 : reset;
  default: currentState = reset;
  endcase
end
assign y = (currentState==state0011010);
endmodule 
