//pablo muñoz 19176
module Tabla4Pos();

wire OR1;
wire OR2;
wire OR3;
wire OR4;
wire OR5;
wire OR6;
wire OR7;
wire OR8;
wire OR9;				
wire NTA;
wire NTB;
wire NTC;
wire NTD;		
wire ND1;
reg A, B, C, D;	


not GATENTA (NTA, A);		
not GATENTB (NTB, B);		
not GATENTC (NTC, C);		
not GATENTD (NTD, D);		
or GATEO1 (OR1, A,B,C,NTD);		
or GATEO2 (OR2, A,NTB,C,D);		
or GATEO3 (OR3, A,NTB,C,NTD);		
or GATEO4 (OR4, NTA,B,C,NTD);	
or GATEO5 (OR5, NTA,B,NTC,NTD);		
or GATEO6 (OR6, NTA,NTB,C,D);	
or GATEO7 (OR7, NTA,NTB,C,NTD);		
or GATEO8 (OR8, NTA,NTB,NTC,D);	
or GATEO9 (OR9, NTA,NTB,NTC,NTD);	
and GATEND1 (ND1, OR1, OR2, OR3, OR4, OR5, OR6, OR7, OR8, OR9);	

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
      $dumpfile("TablaPos4_tb.vcd"); 
      $dumpvars(0, Tabla4Pos); 
    end
endmodule	