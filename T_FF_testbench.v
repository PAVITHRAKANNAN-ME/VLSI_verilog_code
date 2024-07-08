module tb;
  reg clk, rst;
  reg t;
  wire q, q_bar;
  T tff(clk, rst, t, q, q_bar);
  
  always #2 clk = ~clk;
  initial begin
    clk = 0; rst = 0;
    t = 0;
    #3 $display("t=%b , q=%b, q_bar=%b",t, q, q_bar);
    #3 rst = 1;
    #3 $display("t=%b , q=%b, q_bar=%b",t, q, q_bar);
    repeat(6) begin
      t = $urandom_range(0, 1);
      #3;
    end
    #3 $display("t=%b , q=%b, q_bar=%b",t, q, q_bar);
    $finish;
  end

  initial begin
    $dumpfile("T.vcd");
    $dumpvars(1);
  end
endmodule
