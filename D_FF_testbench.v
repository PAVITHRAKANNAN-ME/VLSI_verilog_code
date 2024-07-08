module tb;
  reg clk,rst;
  reg d;
  wire q;
  d g1(clk,rst,d,q);
  always #2 clk=~clk;
  initial begin
    clk=0; rst=0;
    d=0;
    #3; rst=1;
    repeat(6) begin
      d=$urandom_range(0,1);
      #3; $finish;
    end
  end
  initial begin
    $dumpfile("d.vcd");
    $dumpvars(1);
  end
endmodule
