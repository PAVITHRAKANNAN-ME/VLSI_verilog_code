module demux_1_4(
  input [1:0]s,
  input  i,
  output reg y0,y1,y2,y3);
  
  always @(*) begin
    case(s)
      2'h0:{y0,y1,y2,y3}={i,3'b0};
      2'h1:{y0,y1,y2,y3}={1'b0,i,2'b0};
      2'h2:{y0,y1,y2,y3}={2'b0,i,1'b0};
      2'h3:{y0,y1,y2,y3}={3'b0,i};
    endcase
      end
endmodule
