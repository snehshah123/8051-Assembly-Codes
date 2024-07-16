//E1

ORG 00H 
	LJMP 300H
ORG 300H
MOV TMOD , #01H
MOV IE , #82h
HERE:
	  MOV TH0 , #0F0H
	  CPL A
	  MOV P1 , A
	  ACALL DELAY
	  SJMP HERE
	  
DELAY:SETB TR0
	  AGAIN:CLR TR0
			CLR TF0 
			RET
			
ORG 0BH
	CPL A
	MOV P0 , A
	CLR TR0
	CLR TF0 
	RETI
END

//LE1

;MOV TMOD , #01H
;HERE: MOV TL0 , #66H
	  ;MOV TH0 , #0EAH
	  ;CPL A 
	  ;MOV P1 , A
	  ;ACALL DELAY
	  ;SJMP HERE

;DELAY: SETB TR0 
	   ;JNB TF0 , SS
	   ;SS: CLR TR0 
		   ;CLR TF0 
		   ;RET

;END

//LE2
;DELAY: MOV R0 , #200
;AA: MOV R1 , #200
;KK: MOV R2 , #10
;ZZ: DJNZ R2 , ZZ
;DJNZ R1 , KK
;DJNZ R0 , AA

;RET

;ORG 00H
;MOV TMOD , #60H
;MOV TL1 , #00H
;SETB TR1
;HERE: MOV A , TL1
	  ;MOV P1 , A
	  ;JNB P3.5 , HERE
	  ;SJMP HERE 
	  
	  
;END

//LE3==LE2


