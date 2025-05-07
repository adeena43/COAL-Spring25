```asm
TITLE Copy Array Using Stack (Push/Pop)
INCLUDE Irvine32.inc

.data
sourceArray WORD 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
targetArray WORD 10 DUP(?)        ; Empty array to hold copied data
index DWORD 0

.code
main PROC
    mov ecx, 10           ; Loop counter
    lea esi, sourceArray  ; ESI points to sourceArray

push_loop:
    push WORD PTR [esi]   ; Push each WORD onto the stack
    add esi, 2            ; Move to the next WORD (2 bytes)
    loop push_loop

    mov ecx, 10           ; Reset counter
    lea edi, targetArray  ; EDI points to targetArray

pop_loop:
    pop WORD PTR [edi]    ; Pop from stack into targetArray
    add edi, 2            ; Move to next WORD in target
    loop pop_loop

    call DumpMem          ; (Optional) display memory contents
    call DumpRegs         ; Show register values

    exit
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/20717be4-f386-47e3-ae84-c0a3340cffb2)
