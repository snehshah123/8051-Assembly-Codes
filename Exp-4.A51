ORG 1234H
DATA1:DB 56H,37H,55H,51H

ORG 00H
MOV DPTR , #1234H
MOV R4 , #03H
SS: CLR A
MOVC A , @A+DPTR
MOV B , #12H
DIV AB
MOV R0 , A
INC DPTR
DJNZ R4 , SS
END

ORG 00H
	MOV A , #00H
MM : MOV R0 , #0C8H
	XX : MOV R1 , #0C8H
		YY : MOV R2 , #08H
			ZZ : MOV P0 , A
				DJNZ R2 , ZZ
			DJNZ R1 , YY
		DJNZ R0 , XX
		CPL A
	SJMP MM 


ORG 00H
	MOV A , #01H
	MM : RR A
		MOV P2 , A
		MOV R0 , #0C8H
		XX : MOV R1 , #0C8H
			YY : MOV R2 , #0A0H			
				ZZ : 
					DJNZ R2 , ZZ
				DJNZ R1 , YY
			DJNZ R0 , XX
		RL A
		MOV P2 , A		
		MOV R0 , #0C8H
		AA : MOV R1 , #0C8H
			CC : MOV R2 , #0A0H			
				FF : 
					DJNZ R2 , FF
				DJNZ R1 , CC
			DJNZ R0 , AA	
	SJMP MM	
	
ORG 00H 
	MOV P0 , #05H
	MM : MOV A , P0
		MOV P1 , A
		INC P0
		MOV R0 , #0C8H
		XX : MOV R1 , #0C8H
			YY : MOV R2 , #0A0H			
				ZZ : 
				DJNZ R2 , ZZ
			DJNZ R1 , YY
		DJNZ R0 , XX
	SJMP MM	
