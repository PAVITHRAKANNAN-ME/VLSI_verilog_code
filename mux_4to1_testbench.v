module tb;
  reg [1:0]s;
  reg [3:0]i;
  wire y;
  mux_4to1 g1(s,i,y);
  initial begin
    $monitor("s=%b,i=%b,y=%b",s,i,y);
    s=2'h0;
    i[0]=1;i[1]=0;i[2]=1;i[3]=0;
   #1 s=2'h1;
    #1 s=2'h2;
    #1 s=2'h3;
    #1 s=2'h4;
  end
  initial
    begin
      $dumpfile("mux_4to1.vcd");
      $dumpvars(1);
    end
endmodule
