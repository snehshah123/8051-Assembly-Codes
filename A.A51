ORG 0H

    MOV P1, #11111111B   ; Set P1 as input
    MOV P2, #00H         ; Initialize P2 with 00
    MOV TMOD, #01H       ; Set Timer 0 in mode 1 (16-bit timer)
    MOV TH0, #0H         ; Initialize Timer 0 high byte
    MOV TL0, #0H         ; Initialize Timer 0 low byte
    SETB TR0        ; Start Timer 0

    MOV R0, #0H          ; Initialize counter R0 with 0
    MOV R1, #0H          ; Initialize counter R1 with 0

LOOP:
    MOV A, R0            ; Move the value of R0 to accumulator
    ACALL DISPLAY_TENS   ; Call subroutine to display tens of minutes
    MOV A, R1            ; Move the value of R1 to accumulator
    ACALL DISPLAY_UNITS  ; Call subroutine to display units of minutes

    INC R1               ; Increment units of minutes counter
    CJNE R1, #10, SKIP_RESET_MINUTES   ; Check if R1 is 10, if not skip reset of minutes counter
    MOV R1, #0H          ; Reset R1 to 0
    INC R0               ; Increment tens of minutes counter
    CJNE R0, #6, SKIP_RESET_HOURS   ; Check if R0 is 6 (60 minutes), if not skip reset of hours counter
    MOV R0, #0H          ; Reset R0 to 0 (hours)
    
SKIP_RESET_HOURS:
SKIP_RESET_MINUTES:
    SJMP LOOP            ; Jump back to LOOP

DISPLAY_TENS:
    MOV P2, R0           ; Move the value of R0 to Port P2
    CLR P1.5        ; Set P1.5 low to enable the first seven-segment display
    SETB P1.4         ; Set P1.4 high to disable the second seven-segment display
    ACALL DELAY          ; Call subroutine to introduce delay
    RET

DISPLAY_UNITS:
    MOV P2, R1           ; Move the value of R1 to Port P2
    SETB P1.5         ; Set P1.5 high to disable the first seven-segment display
    CLR P1.4         ; Set P1.4 low to enable the second seven-segment display
    ACALL DELAY          ; Call subroutine to introduce delay
    RET

DELAY:
    MOV R2, #255         ; Load R2 with delay count (adjust as per your requirement)
DELAY_LOOP:
    DJNZ R2, DELAY_LOOP  ; Decrement R2 and jump if not zero
    RET

END
