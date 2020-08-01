//pablo muñoz 19176

module Tabla3Sop 	();


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


and GND1 (ND1, NT1,NT2,NT3,NT4);	
and GND2 (ND2, NT1,NT2,NT3,D);	
and GND3 (ND3, NT1,NT2,C,NT4);	
and GND4 (ND4, NT1,NT2,C,D);	
and GND5 (ND5, A,NT2,NT3,NT4);	
and GND6 (ND6, A,NT2,C,NT4);	
and GND7 (ND7, A,B,C,NT4);	
or  GOR1 (OR1, ND1, ND2, ND3, ND4, ND5, ND6, ND7);	
not GNTA (NT1, A);		
not GNTB (NT2, B);		
not GNTC (NT3, C);		
not GNTD (NT4, D);		

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
      $dumpfile("TablaSop3_tb.vcd"); 
      $dumpvars(0, Tabla3Sop ); 
    end
endmodule	