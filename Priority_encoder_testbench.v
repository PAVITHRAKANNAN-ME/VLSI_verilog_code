module tb;
  reg [7:0] D;
  wire [2:0] y;
  priority_encoder pe(D, y);
  initial begin
    $monitor("D = %b,y = %0b", D, y);
    repeat(10) begin
      D=$random; #1;
    end
  end
  initial begin
    $dumpfile("priority_encoder.vcd");
    $dumpvars(1);
              end
endmodule
 
