```asm
INCLUDE Irvine32.inc
.data
    array1 DWORD 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
    minMsg BYTE "Minimum value: ", 0
    maxMsg BYTE "Maximum valu: ", 0
.code
main PROC
    mov ecx, LENGTHOF array1
    mov esi, OFFSET array1

    push esi
    push ecx

    call MinMaxArray
    exit
main ENDP

MinMaxArray PROC
    push ebp
    mov ebp, esp
    pushad

    mov esi, [ebp+12]
    mov ecx, [ebp+8]
    jecxz done
    mov eax, [esi]
    mov ebx, eax
    add esi, TYPE DWORD
    dec ecx

findLoop:
    mov edx, [esi]
    cmp edx, eax
    jge not_min
    mov eax, edx

not_min:
    cmp edx, ebx
    jle not_max
    mov ebx, edx

not_max:
    add esi, TYPE DWORD
    loop findLoop

    mov edx, OFFSET minMsg
    call WriteString
    call WriteInt              ; Display minimum (in EAX)
    call Crlf
    
    mov edx, OFFSET maxMsg
    call WriteString
    mov eax, ebx               ; Move max to EAX for display
    call WriteInt              ; Display maximum
    call Crlf
    
done:
    popad                      ; Restore registers
    pop ebp
    ret 8                      
MinMaxArray ENDP

END main
```
![image](https://github.com/user-attachments/assets/682e4e40-fbb3-489c-8fe9-123d44d3c4f3)
