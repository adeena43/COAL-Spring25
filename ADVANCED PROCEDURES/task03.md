```asm
INCLUDE Irvine32.inc
.data
    prompt BYTE "Enter a number: ", 0
    resultMsg BYTE "The square is: "
.code
main PROC
    call LocalSquare
    exit
main ENDP

LocalSquare PROC
    ENTER 4, 0
    
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt

    mov [ebp - 4], eax
    imul eax, eax

    mov edx, OFFSET resultMsg
    call WriteString
    call WriteInt
    call Crlf

    LEAVE
    ret
LocalSquare ENDP

END main
```
![image](https://github.com/user-attachments/assets/0c7c93d7-74b9-4d20-b37d-a687b9f1df6a)
