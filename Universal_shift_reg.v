module usr (
  input clk, rst,
  input [3:0]pin,
  input srin,slin,
  input [1:0]s,
  output reg [3:0]pout,
  output reg srout,slout
  );
  always@(posedge clk) begin 
    if(!rst) pout <= 0;
    else begin
      case(s)
        2'h1: pout<={srout,pout[3:1]};
        2'h2: pout<={pout[2:0],slout};
        2'h3: pout<=pin;
        default: pout<=pout;
      endcase
  end
    assign srout = pout[3];
    assign slout=pout[0];
  end
endmodule
