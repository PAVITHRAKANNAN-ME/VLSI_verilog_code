module as #(parameter size=4)(
  input [size-1:0]a,b,
  input  cin,
  output reg[size-1:0]s,coutput);
  wire [size-1:0]bc;
  genvar g;
  assign bc[0]=b[0]^cin;
  fa g1(a[0],bc[0],cin,s[0],coutput[0]);
  generate
    for(g=1;g<size;g++)
      begin
         assign bc[g]=b[g]^cin;
        fa g2(a[g],bc[g],coutput[g-1],s[g],coutput[g]);
      end
  endgenerate
    endmodule
    
module fa(input a,b, cin, output sum,cout);
  assign sum=a^b^cin;
  assign cout=a&b|b&cin|cin&a;
  endmodule
