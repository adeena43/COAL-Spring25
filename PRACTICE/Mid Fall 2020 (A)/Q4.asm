INCLUDE Irvine32.inc 

.data
    arrayW WORD 362, 210, 900, 101, 450
    arrayB BYTE 10, 64, 76, 9, 100
    adina WORD 2 DUP(?)  

.code
main PROC
    mov esi, OFFSET arrayW  
    mov edi, OFFSET arrayB  

    ; Compute first value
    movzx eax, WORD PTR [esi + 2]  
    movzx ecx, BYTE PTR [edi + 2]  
    add eax, ecx
    mov adina[0], ax  

    ; Compute second value
    movzx eax, WORD PTR [esi + 6]  
    movzx ecx, BYTE PTR [edi + 4]  
    add eax, ecx
    mov adina[2], ax  

    movzx eax, adina[0]
    call WriteInt
    call Crlf 

    movzx eax, adina[2]
    call WriteInt
    call Crlf  

    exit                          
main ENDP 
END main
