//pablo muñoz 19176
module Tabla1pos();


wire OR1;
wire OR2;
wire OR3;		
wire Z1;		
wire ND1;
wire ND2;
wire ND3;		
reg A, B, C;	


not GATENA (ND1, A);		
not GATENB (ND2, B);		
not GATENC (ND3, C);		
or GATEO1 (OR1, A,B,ND3);		 
or GATEO2 (OR2, A,ND2,ND3);		
or GATEO3 (OR3, ND1,ND2,C);		
and GZ1 (Z1, OR1, OR2, OR3);	

initial begin
$display("A B C | Y");
$display("-------");

  $monitor("%b %b %b | %b", A, B, C, Z1);

  A = 0;
  B = 0;
  C = 0;

  #1 C = 1;
  #1 B = 1; C=0;
  #1 C = 1;
  #1 A=1;B=0;C=0;
  #1 C=1;
  #1 B=1;C=0;
  #1 C=1;
  #1 $finish;   
end

  initial
    begin
      $dumpfile("TablaPos1_tb.vcd"); 
      $dumpvars(0, Tabla1pos); 
    end
endmodule	