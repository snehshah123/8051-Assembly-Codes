//LE1

;MOV 60H , #60
;MOV A , 60H
;MOV B , #12H
;DIV AB
;MOV R0 , A
;MOV R1 , B
;END

//LE2

;MOV R3 , #03H
;MOV R1 , #02H
;MOV A , R3
;MOV B , R1 
;MUL AB

;MOV 11H , A 
;MOV 10H , B
;END

//LE3

;ORG 400H
	;MYDATA: DB 11D , 12D , 13D , 14D , 15D , 16D , 17D , 18D , 19D , 20D 

;ORG 00H
	;MOV DPTR , #400H
	;MOV R2 , #10
;SS: MOVC A , @A+DPTR
	;MOV B , A
	;MUL AB
	;MOV R0 , A
	;MOV R1 , B
	;INC DPTR
	;MOV R0 , #00H
	;MOV R1 , #00H
	;CLR A
	;DJNZ R2 , SS
;END	

//PLE1

;MOV 00H , #02H
;MOV 01H , #02H
;MOV 02H , #02H
;MOV 03H , #02H

;MOV A , 00H
;MOV B , 00H
;MUL AB
;MOV R5 , A
;MOV A , 01H
;MOV B , 02H
;MUL AB 
;MOV R6 , A
;CLR A
;ADD A , R5
;ADD A , R6
;ADD A , 03H
;MOV R7 , A
;END

//PLE2

;MOV 00H , #34H
;MOV A , 00H
;SWAP A 
;ADD A , 00H
;MOV @R0 , A
;CLR A 
;XCHD A , @R0
;MOV 01H , A
;END