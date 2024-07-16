ORG 0400H
	DB 3FH,06H, 5BH,4FH,66H,6DH,7DH,07H,7FH,6FH

ORG 00H
	ACALL SS
	CJNE R0 , #01H , KK
	ACALL SS
	
	KK: MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0FEH
		
		ACALL DELAY
	
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0FDH
		
		ACALL DELAY
		ACALL DELAY1
	
	
	DELAY: MOV R7 , #01
		   MOV R6 , #100
		   YY: 
		   HERE: DJNZ R7 , HERE
		   DJNZ R6 , YY
	RET	  
	
	DELAY1: MOV R3 , #10
	AA: MOV R4 , #200
	CC: MOV R5 , #200
	HERE1: DJNZ R5 , HERE1
	DJNZ R4 , CC
	DJNZ R3 , AA
	RET
	
	SS: MOV R1 , #00H
		MOV R0 , #0FFH
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #07H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #07H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #07H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #07H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #07H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #3FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #06H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #5BH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #4FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #66H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7DH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #07H
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #7FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV A , #6FH
		MOV P2 , A
		MOV P1 , #0DFH
		
		ACALL DELAY
		
		MOV A , #6DH
		MOV P2 , A
		MOV P1 , #0EFH
		
		ACALL DELAY
		ACALL DELAY1
		
		MOV R0 , #00H
		INC R1
		
		RET

END