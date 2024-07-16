ORG 00H

    MOV A, #00H   ; Initialize accumulator
    
    ; Display 'H'
    MOV A, #06FH  ; ASCII value for 'H'
    MOV P0, A     ; Output to display
    MOV A, #0EH   ; Control signal for selecting first digit
    MOV P2, A     ; Output to control port
    CALL Delay    ; Delay to display
    
    ; Display 'E'
    MOV A, #079H  ; ASCII value for 'E'
    MOV P0, A     ; Output to display
    MOV A, #0DH   ; Control signal for selecting second digit
    MOV P2, A     ; Output to control port
    CALL Delay    ; Delay to display
    
    ; Display 'L'
    MOV A, #050H  ; ASCII value for 'L'
    MOV P0, A     ; Output to display
    MOV A, #0CH   ; Control signal for selecting third digit
    MOV P2, A     ; Output to control port
    CALL Delay    ; Delay to display

    ; Display 'L'
    MOV A, #050H  ; ASCII value for 'L'
    MOV P0, A     ; Output to display
    MOV A, #0BH   ; Control signal for selecting fourth digit
    MOV P2, A     ; Output to control port
    CALL Delay    ; Delay to display

    ; Display 'O'
    MOV A, #07CH  ; ASCII value for 'O'
    MOV P0, A     ; Output to display
    MOV A, #0AH   ; Control signal for selecting fifth digit
    MOV P2, A     ; Output to control port
    CALL Delay    ; Delay to display

    SJMP $        ; Infinite loop

Delay:
    MOV R2, #0FFH ; Outer loop counter
DelayLoop:
    MOV R1, #0FFH ; Inner loop counter
InnerLoop:
    DJNZ R1, InnerLoop ; Decrement inner loop counter
    DJNZ R2, DelayLoop ; Decrement outer loop counter
    RET             ; Return from subroutine
