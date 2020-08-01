//pablo muñoz 19176

module Tabla4Sop();


wire ND1;
wire ND2;
wire ND3;
wire ND4;
wire ND5;
wire ND6;
wire ND7;		
wire OR1;		
wire NT1;
wire NT2;
wire NT3;
wire NT4;		
reg A, B, C, D;	

not GNT1 (NT1, A);		
not GNT2 (NT2, B);		
not GNT3 (NT3, C);		
not GNT4 (NT4, D);		
and GND1 (ND1, NT1,NT2,NT3,NT4);	
and GND2 (ND2, NT1,NT2,C,NT4);	
and GND3 (ND3, NT1,NT2,C,D);	
and GND4 (ND4, NT1,B,C,NT4);	
and GND5 (ND5, NT1,B,C,D);		
and GND6 (ND6, A,NT2,NT3,NT4);	
and GND7 (ND7, A,NT2,C,NT4);		
or GOR1 (OR1, ND1, ND2, ND3, ND4, ND5, ND6, ND7);	

initial begin
$display("A B C D | OR1");
$display("-------");


  $monitor("%b %b %b %b | %b", A, B, C, D, OR1);


  A = 0;
  B = 0;
  C = 0;
  D = 0;

  #1 D=1;
  #1 C=1;D=0;
  #1 D=1;
  #1 B=1;C=0;D=0;
  #1 D=1;
  #1 C=1;D=0;
  #1 D=1;
  #1 A=1;B=0;C=0;D=0;
  #1 D=1;
  #1 C=1;D=0;
  #1 D=1;
  #1 B=1;C=0;D=0;
  #1 D=1;
  #1 C=1;D=0;
  #1 D=1;
  #1 $finish;  
end

  initial
    begin
      $dumpfile("TablaSop4_tb.vcd"); 
      $dumpvars(0, Tabla4Sop); 
    end
endmodule
