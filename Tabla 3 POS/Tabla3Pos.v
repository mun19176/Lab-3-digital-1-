//pablo muñoz 19176

module Tabla3Pos();


wire OR1;
wire OR2;
wire OR3;
wire OR4;
wire OR5;
wire OR6;
wire OR7;
wire OR8;
wire OR9;		
wire ND1;		
wire NTA;
wire NTB;
wire NTC;
wire NTD;		
reg A, B, C, D;	


not GATENTA (NTA, A);		
not GATENTB (NTB, B);		
not GATENTC (NTC, C);		
not GATENTB (NTD, D);		
or GATEOR1 (OR1, A,NTB,C,D);		 
or GATEOR2 (OR2, A,NTB,C,NTD);		
or GATEOR3 (OR3, A,NTB,NTC,D);		
or GATEOR4 (OR4, A,NTB,NTC,NTD);	
or GATEOR5 (OR5, NTA,B,C,NTD);		
or GATEOR6 (OR6, NTA,B,NTC,NTD);	
or GATEOR7 (OR7, NTA,NTB,C,D);		
or GATEOR8 (OR8, NTA,NTB,C,NTD);	
or GATEOR9 (OR9, NTA,NTB,NTC,NTD);	
and GND1 (ND1, OR1, OR2, OR3, OR4, OR5, OR6, OR7, OR8, OR9);	

initial begin
$display("A B C D | ND1");
$display("-------");


  $monitor("%b %b %b %b | %b", A, B, C, D, ND1);


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
      $dumpfile("TablaPos3_tb.vcd"); 
      $dumpvars(0, Tabla3Pos); 
    end
endmodule	