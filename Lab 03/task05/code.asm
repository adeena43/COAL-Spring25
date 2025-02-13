TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc

.data
color BYTE "Black", 0
A DWORD 11h       
B DWORD 10h       
Cc DWORD 30h       
D DWORD 40h       
.code
main PROC
    
    mov eax, A     

    add eax, B       

    mov ebx, A    
    sub ebx, B      

    
    sub eax, ebx

   
    add eax, Cc
    add eax, D

  
    mov ebx, eax

  
    call WriteDec

    
    call DumpRegs

    exit
main ENDP

END main
