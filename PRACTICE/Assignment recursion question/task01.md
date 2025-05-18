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
    
    ; Recursive case
    push ebx                 ; Save divisor (EBX) as it's caller-saved
    xor edx, edx            ; Clear EDX for division
    div ebx                 ; EAX = EAX / EBX, EDX = remainder
    
    call RecursiveDivide     ; Recursive call
    
    pop ebx                  ; Restore EBX
Done:
    ret
RecursiveDivide ENDP

END main
```
