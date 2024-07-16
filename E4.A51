//Q1

BACK : MOV A , #0FFH
	   MOV P0 , A
	   CPL A 
	   MOV P1 , A 
	   LCALL DELAY
       MOV P0 , A
	   CPL A
	   MOV P1 , A 
	   LCALL DELAY
	   SJMP BACK
	   
DELAY : MOV R2 , #0FFH
DELAY1 : MOV R1 , #0FFH
DELAY2 : MOV R0 , #38H
DELAY3 : DJNZ R0 , DELAY3
		 DJNZ R1 , DELAY2 
		 DJNZ R2 , DELAY1
		 RET 
END 
	
//Q2

BB : MOV A , #01H
	 MOV R3 , #08H
	 
RW : RR A
	 MOV P1 , A
	 ACALL DELAY
	 DJNZ R3 , RW
	 
	 MOV R3 , #08H
	 
LW : RL A
	 MOV P1 , A
	 ACALL DELAY
	 DJNZ R3 , LW
	 
	 MOV R3 , #08H
	 
	 SJMP BB

DELAY : MOV R2 , #0FFH
DELAY1 : MOV R1 , #0FFH
DELAY2 : MOV R0 , #38H
DELAY3 : DJNZ R0 , DELAY3
		 DJNZ R1 , DELAY2 
		 DJNZ R2 , DELAY1
		 RET 
END		 

//Q3

SS : MOV A , P0 
	 MOV P1 , A
	 SJMP SS
	 END
	 
//PLE1 //doubt

MOV DPTR , #0030H        
MOV R0 , #30H            
MOV A , #0FFH 

BACK :  CJNE A , B , NN  
        SJMP EE              
NN : JC SKIP                 
EE : MOV A , B                
SKIP :  INC DPTR                  
        MOVX @DPTR , A            
        DJNZ R0 , BACK 
        MOV 30H , A              
END
	
//PLE2	

SETB RS1
CLR RS0
MOV R0 , #00H
MOV R1 , #0AH

PP : CLR A 
	 MOV B , #00H
	 ADD A , @R0
	 JNC SKIP
	 INC B
	 
SKIP : INC R0
	   DJNZ R1 , PP
	   MOV 0BH , A
	   MOV 0CH , B
END
