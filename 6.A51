//LE1

;ORG 00H
	;SJMP MM
	
;ORG 0BH
	;MM: MOV TMOD , #20H
		;MOV SCON , #50H
		;MOV TH1 , #0FEH
		;SETB TCON.6
	;AG:	MOV A , #'S'
		;ACALL TRA
		;MOV A , #'N'
		;ACALL TRA
		;MOV A , #'E'
		;ACALL TRA
		;MOV A , #'H'
		;ACALL TRA
		;MOV A , #' '
		;ACALL TRA
		;SJMP AG
	;TRA: MOV SBUF , A
	;HERE:JNB TI , HERE
	;CLR TI
	;RET
;END	

//PLE1

        ;ORG 0000H

;START:  MOV P1, #0FFH
        ;MOV SCON, #50H
        ;MOV TMOD, #20H

;MAIN:   JNB RI, MAIN
        ;MOV A, SBUF
        ;MOV SBUF, A
        ;CLR RI
        ;SJMP MAIN

        ;END

//PLE2

;ORG 0000H
	;MOV SCON , #50H
	;MOV P1 , #0FFH
	;MOV TMOD , #20H
	;MOV TH1 , #0FDH
	;SETB TR1
	
	;MAIN: JNB RI , MAIN
	;MOV A , SBUF
	;MOV P2 , A
	;CLR RI
	;SJMP MAIN
;END	