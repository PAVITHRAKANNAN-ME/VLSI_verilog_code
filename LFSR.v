module LFSR(input clk, rst, output reg [3:0] q);
  always@(posedge clk) begin
    if(rst) q <= 4'hf;
    else q = {q[2:0],(q[3]^q[2])};
  end
endmodule
