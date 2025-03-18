INCLUDE Irvine32.inc 

.data
    ar WORD 1, 2, 3, 4, 5, 6, 7, 8, 9, 10  
    ans DWORD 0 

.code
main PROC
    mov esi, OFFSET ar 
    mov ecx, 10         
    mov eax, 0          

L1:
    mov bx, [esi]       
    movzx ebx, bx       

    imul ebx, ebx       
    movzx edx, bx
    imul ebx, edx        

    add eax, ebx        

    add esi, 2       
    loop L1          

    mov ans, eax      

    call WriteDec       
    call CrLf           

    exit                          
main ENDP 
END main
