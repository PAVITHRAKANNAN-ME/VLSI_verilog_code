module as_tb;
  reg [3:0]a,b;
  reg cin;
  wire[3:0]sum,cout;
  as uut(a,b,cin,sum,cout);
 
  initial begin
    $monitor("a=%b,b=%b,c=%b,sum=%b,cout[3]=%b",a,b,cin,sum,cout[3]);
    cin=0;
    a=1;b=2;
    #3 a=4;b=6;
    #3 a=4'hc ;b=4'ha;
#3 cin=1;
    a=1;b=2;
    #3 a=4;b=6;
    #3 a=4'hc ;b=4'ha;
   #3 $finish;
  end
  initial begin
    $dumpfile("as.vcd");
    $dumpvars(1);
       end
 endmodule
