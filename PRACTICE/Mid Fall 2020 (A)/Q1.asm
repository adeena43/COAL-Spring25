INCLUDE Irvine32.inc   
.code
main PROC
    mov eax, 2
    mov ebx, 7
    call WriteInt
    mov edx, eax
    mov eax, ebx
    call WriteInt
    mov ebx, eax
    mov eax, edx
    mov ecx, 12
L1:
    add eax, 10
    add ebx, 10
    call WriteInt
    mov edx, eax
    mov eax, ebx
    call WriteInt
    mov ebx, eax
    mov eax, edx
    loop L1
    exit                          
main ENDP 
END main
