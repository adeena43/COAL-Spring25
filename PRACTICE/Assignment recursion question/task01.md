```asm
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
dividend WORD 0D4A4h
divisor BYTE 0Ah
result WORD ?

.code
main PROC
    movzx eax, dividend      ; Load dividend into EAX
    movzx ebx, divisor       ; Load divisor into EBX
    call RecursiveDivide     ; Call recursive function
    
    mov result, ax           ; Store final result
    INVOKE ExitProcess, 0
main ENDP

RecursiveDivide PROC
    ; Base case: if dividend (EAX) ≤ 5h, return
    cmp eax, 5h
    jle Done
    
    ; Recursive case - no need to save EBX!
    xor edx, edx            ; Clear EDX for division
    div ebx                 ; EAX = EAX / EBX (EBX remains unchanged)
    
    call RecursiveDivide     ; Recursive call
    
    ; No pop needed since we didn't push
Done:
    ret
RecursiveDivide ENDP

END main
```
