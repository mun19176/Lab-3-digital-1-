//pablo muñoz 19176

module Tabla2Sop();

wire OR1;		
wire ND1;
wire ND2;
wire ND3;		
wire NT1;
wire NT2;
wire NT3;		
reg A, B, C;	

	
and GND1 (ND1, NT1,NT2,C);		 
and GND2 (ND2, A,B,NT3);		
and GND3 (ND3, A,B,C);		
not GNT1 (NT1, A);		
not GNT2 (NT2, B);		
not GNT3 (NT3, C);	
or GOR1 (OR1, ND1, ND2, ND3);	

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
      $dumpfile("TablaSop2_tb.vcd"); 
      $dumpvars(0, Tabla2Sop); 
    end
endmodule	
