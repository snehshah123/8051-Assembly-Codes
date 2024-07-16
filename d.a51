;ORG 30H 1min
;ORG 100H 40min
;ORG 200H 2hr
;ORG 400H 3hr
ORG 00H
WW:	JNB P3.0 , LL
	JNB P3.1 , PP
	JNB P3.4 , OO
	JNB P3.5 , UU
SJMP WW

LL: LJMP 30H
PP: LJMP 100H
OO: LJMP 200H
UU: LJMP 400H

DELAY: SETB PSW.4
MOV R2,#10
AGAIN2: MOV R3,#90
AGAIN1: DJNZ R3,AGAIN1
DJNZ R2,AGAIN2
CLR PSW.4
RET


ORG 30H
MAIN1: MOV DPTR,#MYDATA
START1: MOV R0,#00H
MOV R1,#00H
MOV R2,#00H
MOV R3,#00H
MOV R4,#00H
MOV R5,#00H


CJNE R7,#0D,DISPLAY1
MOV R0,#0H
MOV R1,#0H
MOV R2,#0H
MOV R3,#0H
MOV R4,#0H
MOV R5,#0H
MOV R7,#00H

DISPLAY1:
INC R7
ACALL SHOW1
BACK1: INC R0
CJNE R0,#10D,DISPLAY1
MOV R0,#00H
INC R1
CJNE R1,#6D,DISPLAY1
MOV R1,#00H
INC R2
CJNE R2,#1D,DISPLAY1
MOV R2,#00H
;INC R3
CJNE R3,#0D,DISPLAY1
MOV R3,#00H
MOV A,R5
XRL A,#2D
JZ SCREENSHOT1
JNZ BLA1
BLA1: ;INC R4
CJNE R4,#0D,DISPLAY1
MOV R4,#00H
SJMP BLABLA1
SCREENSHOT1: ;INC R4
CJNE R4,#0D,DISPLAY1
MOV R4,#00H
MOV R5,#00D

RET

BLABLA1: ;INC R5
CJNE R5,#3D ,DISPLAY1
SJMP START1
SHOW1: MOV R6,#82D
REPEAT1: MOV A,R0
MOVC A,@A+DPTR
CLR P2.0
MOV P1,A
ACALL DELAY
SETB P2.0
MOV A ,R1
MOVC A,@A+DPTR
CLR P2.1
MOV P1,A
ACALL DELAY
SETB P2.1
MOV A,R2
MOVC A,@A+DPTR
CLR P2.2 
MOV P1,A
ACALL DELAY
SETB P2.2
MOV A,R3
MOVC A,@A+DPTR
CLR P2.3
MOV P1,A
ACALL DELAY
SETB P2.3
MOV A,R4
MOVC A,@A+DPTR
CLR P2.4
MOV P1,A
ACALL DELAY
SETB P2.4
MOV A,R5
MOVC A,@A+DPTR
CLR P2.5
MOV P1,A
ACALL DELAY
SETB P2.5
DJNZ R6,REPEAT1
RET

ORG 100H
MAIN2: MOV DPTR,#MYDATA
START2: MOV R0,#00H
MOV R1,#00H
MOV R2,#00H
MOV R3,#00H
MOV R4,#00H
MOV R5,#00H


CJNE R7,#0D,DISPLAY2
MOV R0,#0H
MOV R1,#0H
MOV R2,#0H
MOV R3,#0H
MOV R4,#0H
MOV R5,#0H
MOV R7,#00H

DISPLAY2:
INC R7
ACALL SHOW2
BACK2: INC R0
CJNE R0,#10D,DISPLAY2
MOV R0,#00H
INC R1
CJNE R1,#6D,DISPLAY2
MOV R1,#00H
INC R2
CJNE R2,#10D,DISPLAY2
MOV R2,#00H
INC R3
CJNE R3,#4D,DISPLAY2
MOV R3,#00H
MOV A,R5
XRL A,#2D
JZ SCREENSHOT2
JNZ BLA2
BLA2: ;INC R4
CJNE R4,#0D,DISPLAY2
MOV R4,#00H
SJMP BLABLA2
SCREENSHOT2: ;INC R4
CJNE R4,#0D,DISPLAY2
MOV R4,#00H
MOV R5,#00D

RET

BLABLA2: ;INC R5
CJNE R5,#3D ,DISPLAY2
SJMP START2
SHOW2: MOV R6,#82D
REPEAT2: MOV A,R0
MOVC A,@A+DPTR
CLR P2.0
MOV P1,A
ACALL DELAY
SETB P2.0
MOV A ,R1
MOVC A,@A+DPTR
CLR P2.1
MOV P1,A
ACALL DELAY
SETB P2.1
MOV A,R2
MOVC A,@A+DPTR
CLR P2.2 
MOV P1,A
ACALL DELAY
SETB P2.2
MOV A,R3
MOVC A,@A+DPTR
CLR P2.3
MOV P1,A
ACALL DELAY
SETB P2.3
MOV A,R4
MOVC A,@A+DPTR
CLR P2.4
MOV P1,A
ACALL DELAY
SETB P2.4
MOV A,R5
MOVC A,@A+DPTR
CLR P2.5
MOV P1,A
ACALL DELAY
SETB P2.5
DJNZ R6,REPEAT2
RET	

ORG 200H
MAIN3: MOV DPTR,#MYDATA
START3: MOV R0,#00H
MOV R1,#00H
MOV R2,#00H
MOV R3,#00H
MOV R4,#00H
MOV R5,#00H


CJNE R7,#0D,DISPLAY3
MOV R0,#0H
MOV R1,#0H
MOV R2,#0H
MOV R3,#0H
MOV R4,#0H
MOV R5,#0H
MOV R7,#00H

DISPLAY3:
INC R7
ACALL SHOW3
BACK3: INC R0
CJNE R0,#10D,DISPLAY3
MOV R0,#00H
INC R1
CJNE R1,#6D,DISPLAY3
MOV R1,#00H
INC R2
CJNE R2,#10D,DISPLAY3
MOV R2,#00H
INC R3
CJNE R3,#6D,DISPLAY3
MOV R3,#00H
MOV A,R5
XRL A,#2D
JZ SCREENSHOT3
JNZ BLA3
BLA3: INC R4
CJNE R4,#2D,DISPLAY3
MOV R4,#00H
SJMP BLABLA3
SCREENSHOT3: INC R4
CJNE R4,#2D,DISPLAY3
MOV R4,#00H
MOV R5,#00D

RET

BLABLA3: ;INC R5
CJNE R5,#3D ,DISPLAY3
SJMP START3
SHOW3: MOV R6,#82D
REPEAT3: MOV A,R0
MOVC A,@A+DPTR
CLR P2.0
MOV P1,A
ACALL DELAY
SETB P2.0
MOV A ,R1
MOVC A,@A+DPTR
CLR P2.1
MOV P1,A
ACALL DELAY
SETB P2.1
MOV A,R2
MOVC A,@A+DPTR
CLR P2.2 
MOV P1,A
ACALL DELAY
SETB P2.2
MOV A,R3
MOVC A,@A+DPTR
CLR P2.3
MOV P1,A
ACALL DELAY
SETB P2.3
MOV A,R4
MOVC A,@A+DPTR
CLR P2.4
MOV P1,A
ACALL DELAY
SETB P2.4
MOV A,R5
MOVC A,@A+DPTR
CLR P2.5
MOV P1,A
ACALL DELAY
SETB P2.5
DJNZ R6,REPEAT3
RET

ORG 400H
MAIN4: MOV DPTR,#MYDATA
START4: MOV R0,#00H
MOV R1,#00H
MOV R2,#00H
MOV R3,#00H
MOV R4,#00H
MOV R5,#00H


CJNE R7,#0D,DISPLAY4
MOV R0,#0H
MOV R1,#0H
MOV R2,#0H
MOV R3,#0H
MOV R4,#0H
MOV R5,#0H
MOV R7,#00H

DISPLAY4:
INC R7
ACALL SHOW4
BACK4: INC R0
CJNE R0,#10D,DISPLAY4
MOV R0,#00H
INC R1
CJNE R1,#6D,DISPLAY4
MOV R1,#00H
INC R2
CJNE R2,#10D,DISPLAY4
MOV R2,#00H
INC R3
CJNE R3,#6D,DISPLAY4
MOV R3,#00H
MOV A,R5
XRL A,#2D
JZ SCREENSHOT4
JNZ BLA4
BLA4: INC R4
CJNE R4,#3D,DISPLAY4
MOV R4,#00H
SJMP BLABLA4
SCREENSHOT4: INC R4
CJNE R4,#3D,DISPLAY4
MOV R4,#00H
MOV R5,#00D

RET

BLABLA4: ;INC R5
CJNE R5,#3D ,DISPLAY4
SJMP START4
SHOW4: MOV R6,#82D
REPEAT4: MOV A,R0
MOVC A,@A+DPTR
CLR P2.0
MOV P1,A
ACALL DELAY
SETB P2.0
MOV A ,R1
MOVC A,@A+DPTR
CLR P2.1
MOV P1,A
ACALL DELAY
SETB P2.1
MOV A,R2
MOVC A,@A+DPTR
CLR P2.2 
MOV P1,A
ACALL DELAY
SETB P2.2
MOV A,R3
MOVC A,@A+DPTR
CLR P2.3
MOV P1,A
ACALL DELAY
SETB P2.3
MOV A,R4
MOVC A,@A+DPTR
CLR P2.4
MOV P1,A
ACALL DELAY
SETB P2.4
MOV A,R5
MOVC A,@A+DPTR
CLR P2.5
MOV P1,A
ACALL DELAY
SETB P2.5
DJNZ R6,REPEAT4
RET

ORG 300H
MYDATA:
DB 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH
END