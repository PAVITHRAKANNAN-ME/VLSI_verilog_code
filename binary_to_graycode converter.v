module b2g_converter #(parameter size=4) (input [size-1:0] binary, output [size-1:0] gray);
  genvar i;    
  generate
    for(i=0;i<size-1;i++) begin
      assign gray[i] = binary[i] ^ binary[i+1];
    end
  endgenerate
  
  assign gray[size-1] = binary[size-1];
endmodule

