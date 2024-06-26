module RCA #(parameter size=6)(input [size-1:0]a,b, input cin, output [size-1:0]sum, carry);
  genvar i;
  full_adder fa1(a[0],b[0],cin,sum[0],carry[0]);
  generate
    for(i=1;i<size;i++) begin
      full_adder fa(a[i],b[i],carry[i-1],sum[i],carry[i]);
    end
  endgenerate
endmodule
module full_adder (input a,b,cin,output sum,carry);
  assign sum=a^b^cin;
  assign carry=a&b|b&cin|cin&a;
endmodule

RCA_TEST_BENCH:
module tb;
  reg [5:0]a,b;
  reg cin;
  wire [5:0]sum,carry;
  reg [6:0]add;
  RCA r(a,b,cin,sum,carry);
  assign add={carry[5],sum};
  initial begin
    $monitor("a=%b ,b=%b,c=%b,sum=%b,carry[5]=%b,add=%0d",a,b,cin,sum,carry,add);
#10;a=3;b=5;cin=0;#10;
a=4;b=6;cin=1;#10;
    a=5;b=6;cin=1;#10;
$finish;
  end  
  initial begin
             $dumpfile("RCA.vcd");
             $dumpvars(1);
             end
endmodule
             
