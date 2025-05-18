```asm
section .data
    num1_low   dd 0xFFFFFFFF  ; Lower 32 bits of first number (-1)
    num1_high  dd 0x00000001  ; Upper 32 bits (1)
    num2_low   dd 0x00000001  ; Lower 32 bits of second number (1)
    num2_high  dd 0x00000000  ; Upper 32 bits (0)

section .text
global _start
_start:
    ; Load first 64-bit number into EDX:EAX
    mov eax, [num1_low]   ; EAX = 0xFFFFFFFF (-1)
    mov edx, [num1_high]  ; EDX = 0x00000001 (1)

    ; Add second 64-bit number (EBX:ECX)
    mov ecx, [num2_low]   ; ECX = 0x00000001 (1)
    mov ebx, [num2_high]  ; EBX = 0x00000000 (0)

    ; 64-bit addition: EDX:EAX += EBX:ECX
    add eax, ecx          ; Add lower halves (sets CF if overflow)
    adc edx, ebx          ; Add upper halves + carry

    ; Result: EDX:EAX = 0x00000001_00000000 (1×2³² + 0 = 4,294,967,296)
    ; (Because: 0x1_FFFFFFFF + 0x0_00000001 = 0x1_00000000)
```
