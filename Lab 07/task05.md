```asm
INCLUDE Irvine32.inc

.data
    prompt BYTE "Enter a number: ",0
    result BYTE "The sum is: ",0
    n DWORD ?

.code
main PROC
    call GetUserInput
    call CalculateSum
    exit
main ENDP

GetUserInput PROC
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov n, eax
    ret
GetUserInput ENDP

CalculateSum PROC
    mov ecx, n
    xor eax, eax
    mov ebx, 1

SumLoop:
    add eax, ebx
    inc ebx
    loop SumLoop

    mov edx, OFFSET result
    call WriteString
    call WriteInt
    call Crlf
    ret
CalculateSum ENDP

END main
```
![image](https://github.com/user-attachments/assets/03aaf706-1e09-444b-b5d9-bf14835c2627)
