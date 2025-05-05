```asm
INCLUDE Irvine32.inc
.data
    var1 DWORD 5
    var2 DWORD 6
    var3 DWORD 7
.code
main PROC
    push var3
    push var2
    push var1
    call ThreeProd
    call WriteInt
    call Crlf
    exit
main ENDP

ThreeProd PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]
    imul eax, [ebp+12]
    imul eax, [ebp+16]
    pop ebp
    ret 12
ThreeProd ENDP

END main
```
![image](https://github.com/user-attachments/assets/c656ef3a-4a4c-4430-8730-02834ec68100)
