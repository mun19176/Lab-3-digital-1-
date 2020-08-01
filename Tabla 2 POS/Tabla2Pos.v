//PABLO MUÑOZ 19176
module Tabla2Pos();

wire OR1;
wire OR2;
wire OR3;
wire OR4;
wire OR5;		
wire ND1;		
wire NTA;
wire NTB;
wire NTC;		
reg A, B, C;	

not GATENTA (NTA, A);		
not GATENTB (NTB, B);		
not GATENTC (NTC, C);		
or GOR1 (OR1, A,B,C);		
or GOR2 (OR2, A,NTB,C);		
or GOR3 (OR3, A,NTB,NTC);		
or GOR3 (OR4, NTA,B,C);		
or GOR3 (OR5, NTA,B,NTC);		
and GA1 (ND1, OR1, OR2, OR3, OR4, OR5);	

initial begin
$display("A B C | ND1");
$display("-------");

  $monitor("%b %b %b | %b", A, B, C, ND1);


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
      $dumpfile("TablaPos2_tb.vcd"); 
      $dumpvars(0, Tabla2Pos); 
    end
endmodule	