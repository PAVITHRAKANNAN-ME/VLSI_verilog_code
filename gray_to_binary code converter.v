module g2b_converter #(parameter size=4) (input [size-1:0] gray, output [size-1:0] binary);
  assign binary[0] = gray[3] ^ gray[2] ^ gray[1] ^ gray[0];
  assign binary[1] = gray[3] ^ gray[2] ^ gray[1];
  assign binary[2] = gray[3] ^ gray[2];
  assign binary[3] = gray[3];
endmodule
