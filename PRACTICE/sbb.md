```asm
section .data
    num3_low   dd 0x00000000  ; Lower 32 bits of first number (0)
    num3_high  dd 0x00000002  ; Upper 32 bits (2)
    num4_low   dd 0x00000001  ; Lower 32 bits of second number (1)
    num4_high  dd 0x00000001  ; Upper 32 bits (1)

section .text
global _start
_start:
    ; Load first 64-bit number into EDX:EAX
    mov eax, [num3_low]   ; EAX = 0x00000000 (0)
    mov edx, [num3_high]  ; EDX = 0x00000002 (2)

    ; Subtract second 64-bit number (EBX:ECX)
    mov ecx, [num4_low]   ; ECX = 0x00000001 (1)
    mov ebx, [num4_high]  ; EBX = 0x00000001 (1)

    ; 64-bit subtraction: EDX:EAX -= EBX:ECX
    sub eax, ecx          ; Subtract lower halves (sets CF if underflow)
    sbb edx, ebx          ; Subtract upper halves - borrow

    ; Result: EDX:EAX = 0x00000000_FFFFFFFF (0×2³² + 4,294,967,295)
    ; (Because: 0x2_00000000 - 0x1_00000001 = 0x0_FFFFFFFF)
```
