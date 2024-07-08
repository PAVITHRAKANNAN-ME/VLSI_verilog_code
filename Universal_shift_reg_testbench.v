module tb;
  reg clk, rst;
  reg [3:0]pin;
  reg srin,slin;
  reg [1:0]s;
  wire [3:0]pout;
  wire srout,slout;
  usr g1(clk, rst, pin,srin,slin,s,pout, srout,slout);
  
  always #2 clk = ~clk;
  initial begin
    $monitor("rst=%b, pin=%b , s=%b,srin=%b, slin=%b, pout=%b, srout=%b, slout=%b",rst, pin, s,srin,slin,pout,srout,slout);
    clk = 0; rst = 0;
  
    pin = 4'hc;
    srin=1'b1;
    slin=1'b0;
      #2; rst= 1;
     s=2'h3;
    #10; s=2'h1;
    #20; s=2'h2;
    #20; s=2'h0;
    #20;
    $finish;
  end

  initial begin
    $dumpfile("usr.vcd");
    $dumpvars(1);
  end
endmodule
