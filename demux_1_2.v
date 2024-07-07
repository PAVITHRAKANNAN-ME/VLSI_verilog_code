module demux_1_2(
  input s,
  input  i,
  output reg y0,y1);
  
  assign {y1,y0} = s? {i,1'b0} : {1'b0,i};
endmodule
