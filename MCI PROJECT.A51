ORG 0D0H
	S0: MOV P2 , #3FH //0SEC
RET

ORG 0D5H
	S1: MOV P2 , #06H //1SEC
RET

ORG 0DAH
	S2: MOV P2 , #5BH //2SEC
RET

ORG 0E0H
	S3: MOV P2 , #4FH //3SEC
RET

ORG 0E5H
	S4: MOV P2 , #66H //4SEC
RET

ORG 0EAH
	S5: MOV P2 , #6DH //5SEC
RET

ORG 0A0H
	S6: MOV P2 , #7DH //6SEC
RET

ORG 0A5H
	S7: MOV P2 , #07H //7SEC
RET

ORG 0AAH
	S8: MOV P2 , #7FH //8SEC
RET

ORG 0B0H
	S9: MOV P2 , #6FH //9SEC
RET

ORG 0B5H
DELAY:
	MOV R7 , #0C8H
	YY:
		MOV R6,#4FH
		ZZ:
		DJNZ R6 , ZZ
	DJNZ R7 , YY
RET

ORG 080H
TEMP: 
	MOV TMOD , #11H //COUNTER FOR BOTH T1 AND T0 IN 16BIT TIMER MODE
	//T0 FOR SECONDS AND T1 FOR MINUTES
 
	MOV TL0 , #00H
	MOV TH0 , #00H

	SETB TR0
	MOV R0 , #0EH //14
	HERE1: JNB TF0 , HERE1
			CLR TF0
			CLR TR0
			SETB TR0
 			DJNZ R0 , HERE1

	CLR TF0
	CLR TR0
	MOV TL0 , #0F2H
	MOV TH0 , #0EFH
	SETB TR0
	HERE2: JNB TF0 , HERE2
 
	RET

ORG 00H

MOV P1 , #0FFH

SEC:
	MOV P1 , #0DFH

	ACALL S1                          
	ACALL TEMP

	ACALL S2
	ACALL TEMP

	ACALL S3
	ACALL TEMP

	ACALL S4
	ACALL TEMP

	ACALL S5
	ACALL TEMP

	ACALL S6
	ACALL TEMP

	ACALL S7
	ACALL TEMP

	ACALL S8
	ACALL TEMP

	ACALL S9
	ACALL TEMP
	
	ACALL S0
	ACALL TEMP
//-------------------------------------------
	ACALL S1 
	
	MOV P1 , #0EFH
	ACALL DELAY
	
	ACALL S1
	ACALL DELAY
//--------------------------------------	
	ACALL S0
	
	MOV P1 , #0DFH
	ACALL DELAY
	
	ACALL S0
	ACALL TEMP
//----------------------------------------------	
	ACALL S1 
	
	MOV P1 , #0EFH
	ACALL DELAY
	
	ACALL S1
	ACALL DELAY
//-----------------------------------------------	
	ACALL S1
	
	MOV P1 , #0DFH
	ACALL DELAY
	
 	LCALL S1
	LCALL TEMP
//--------------------------------------------------
	ACALL S1 
	
	MOV P1 , #0EFH
	ACALL DELAY
	
	ACALL S1
	ACALL DELAY
//-----------------------------------------------	
	ACALL S2
	
	MOV P1 , #0DFH
	ACALL DELAY
	
	ACALL S2
	ACALL TEMP
//--------------------------------------------------
	ACALL S1 
	
	MOV P1 , #0EFH
	ACALL DELAY
	
	ACALL S1
	ACALL DELAY
//-----------------------------------------------	
	ACALL S3
	
	MOV P1 , #0DFH
	ACALL DELAY
	
	ACALL S3
	ACALL TEMP
//--------------------------------------------------
	ACALL S1 
	
	MOV P1 , #0EFH
	ACALL DELAY
	
	ACALL S1
	ACALL DELAY
//-----------------------------------------------	
	ACALL S4
	
	MOV P1 , #0DFH
	ACALL DELAY
	
	ACALL S4
	ACALL TEMP
//--------------------------------------------------
	ACALL S1 
	
	MOV P1 , #0EFH
	ACALL DELAY
	
	ACALL S1
	ACALL DELAY
//-----------------------------------------------	
	ACALL S5	
	MOV P1 , #0DFH
	ACALL DELAY
	
	ACALL S5
	ACALL TEMP
//--------------------------------------------------
	LJMP SEC
END   