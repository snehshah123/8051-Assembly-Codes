//LE1

;MOV 00H , #32H
;MOV 01H , #33H
;MOV 02H , #34H
;MOV 03H , #35H
;MOV 04H , #36H

;MOV A , 00H 
;XCH A , 04H
;MOV 00H , A
;MOV A , 01H
;XCH A , 03H
;MOV 01H , A

;END

//LE2

;CLR PSW.3
;CLR PSW.4
;MOV R0 , #32H
;MOV A , R0

;SETB PSW.3
;SETB PSW.4
;MOV R2 , A
;END

//LE3
;MOV 50H , #34H
;MOV R1 , 50H
;MOV A , #01H
;MOV B , #01H

;MOV A , @R1

;END