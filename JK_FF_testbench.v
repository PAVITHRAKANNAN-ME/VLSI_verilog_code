module tb;
  reg clk, rst;
  reg j, k;
  wire q, q_bar;
  
  JK dff(clk, rst, j,k, q, q_bar);
  
  always #2 clk = ~clk;
  initial begin
    clk = 0; rst = 0;
    #1 $display("j=%b, k=%b , q=%b, q_bar=%b",j, k, q, q_bar);
    #3 rst = 1;
    #1 $display("j=%b, k=%b , q=%b, q_bar=%b",j, k, q, q_bar);
    perform(2'b00);
    perform(2'b01);
    perform(2'b10);
    perform(2'b11);
    #5;
    $finish;
  end
  
  task perform(reg [1:0] i);
    @(posedge clk);
    {j,k} = i;
    #1 $display("j=%b, k=%b , q=%b, q_bar=%b",j, k, q, q_bar);
  endtask
  
  initial begin
    $dumpfile("JK.vcd");
    $dumpvars(1);
  end
endmodule
