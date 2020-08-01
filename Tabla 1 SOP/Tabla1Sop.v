//pablo muñoz 19176

module Tabla1Sop();

wire NTA;
wire NTB;
wire NTC;		
wire ND1;
wire ND2;
wire ND3;		
wire ND4;		
wire ND5;
wire OR1; 		

reg A, B, C;	

and GAND1 (ND1, NTA, NTB, NTC);		
and GAND2 (ND2, NTA,B,NTC);		
and GAND3 (ND3, A,NTB,NTC);		
and GAND4 (ND4, A,NTB,C);		
and GAND5 (ND5, A,B,C);	
not GNTA (NTA, A);	
not GNTB (NTB, B);		
not GNTC (NTC, C);		
or  GOR1 (OR1, ND1, ND2, ND3, ND4, ND5);	


initial begin
$display("A B C | OR1");
$display("-------");


  $monitor("%b %b %b | %b", A, B, C, OR1);

 
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
      $dumpfile("TablaSop1_tb.vcd"); 
      $dumpvars(0, Tabla1Sop); 
	  end
endmodule	