//LE1

;SS: MOV A , #0FFH
	;MOV P0 , A
	;CLR A 
	;MOV P1 , A
	
	;ACALL DELAY 
	
	;MOV A , #0FFH
	;MOV P1 , A
	;CLR A 
	;MOV P0 , A
	
	;ACALL DELAY 
	
	;SJMP SS

;DELAY: MOV R0 , #200
;AA: MOV R1 , #200
;KK: MOV R2 , #08
;ZZ: DJNZ R2 , ZZ
;DJNZ R1 , KK
;DJNZ R0 , AA
;RET

;END	

//LE2

;SS: MOV A , #01H
	;MOV P0 , A
	;ACALL DELAY
	;RR A 
	;MOV P0 , A
	;ACALL DELAY
	;RR A
	;MOV P0 , A
	;ACALL DELAY
	;RR A 
	;MOV P0 , A
	;ACALL DELAY
	;RR A 
	;MOV P0 , A
	;ACALL DELAY
	;MOV A , #01H
	;MOV P0 , A
	;ACALL DELAY
	;RL A 
	;MOV P0 , A
	;ACALL DELAY
	;RL A
	;MOV P0 , A
	;ACALL DELAY
	;RL A 
	;MOV P0 , A
	;ACALL DELAY
	;RL A 
	;MOV P0 , A
	;ACALL DELAY
	;SJMP SS

;DELAY: MOV R0 , #200
;AA: MOV R1 , #200
;KK: MOV R2 , #08
;ZZ: DJNZ R2 , ZZ
;DJNZ R1 , KK
;DJNZ R0 , AA
;RET
	
;END	

//LE3

;SS:MOV P1 , #30H
;MOV A , P1 
;ACALL DELAY
;MOV P2 , A
;ACALL DELAY
;MOV P1 , #60H
;MOV A , P1 
;ACALL DELAY
;MOV P2, A
;ACALL DELAY
;SJMP SS

;DELAY: MOV R0 , #200
;AA: MOV R1 , #200
;KK: MOV R2 , #08
;ZZ: DJNZ R2 , ZZ
;DJNZ R1 , KK
;DJNZ R0 , AA
;RET

;END

//PLE1

;MOV 30H , #33H
;MOV 31H , #32H
;MOV 32H , #33H
;MOV 33H , #34H
;MOV 34H , #35H
;MOV 35H , #36H
;MOV 36H , #37H
;MOV 37H , #38H
;MOV 38H , #39H
;MOV 39H , #11H
;MOV 3AH , #3BH
;MOV 3BH , #3CH
;MOV 3CH , #3DH
;MOV 3DH , #3EH 
;MOV 3EH , #3FH
;MOV 3FH , #40H
;MOV 40H , #41H
;MOV 41H , #42H
;MOV 42H , #43H
;MOV 43H , #44H

;MOV R0 , #20
;MOV R1 , #30H
;CLR A
;MOV A , @R1
;AA: MOV B , A
	;SS: DJNZ R0 , KK
		;SJMP STP

	;KK: INC R1
		;CLR A 
		;MOV A , @R1
		;CJNE A , B , EE
		;SJMP SS
	;EE: JNC SS
		;SJMP AA
;STP: MOV R1 , B

;END 

//PLE2 

;MOV 30H , #33H
;MOV 31H , #32H
;MOV 32H , #33H
;MOV 33H , #34H
;MOV 34H , #35H
;MOV 35H , #36H
;MOV 36H , #37H
;MOV 37H , #58H
;MOV 38H , #39H
;MOV 39H , #11H

;MOV R0 , #30H
;MOV R1 , #10

;MOV A , @R0
;SS: 
	;INC R0
	;ADD A , @R0
	;JB PSW.6 , LL
	;LL: JB PSW.7 , KK
	
	;TT:	DJNZ R1 , SS
	
	;KK: ADD A , R7
		;MOV R7 , A
		;MOV B , R7
		;MOV A , #00H
		;SJMP TT
		;RET
		
;END	