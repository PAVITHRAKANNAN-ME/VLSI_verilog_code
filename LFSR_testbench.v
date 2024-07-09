module tb;
  reg clk, rst;
  wire [3:0]q;
  LFSR g1(clk, rst, q);
  initial begin
    $monitor("q=%b",q);
    clk = 0; rst = 1;
    #5 rst = 0;
    #50; $finish;
  end
  always #2 clk=~clk;
  initial begin 
    $dumpfile("LFSR.vcd"); 
    $dumpvars(1);
  end
endmodule
