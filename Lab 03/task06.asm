TITLE My First Program (Test.asm)
INCLUDE Irvine32.inc

.data
A BYTE 00010001b       
B BYTE 00010000b      
Cc BYTE 00110000b       
D BYTE 01000000b       
.code
main PROC
    
    mov al, A     

    add al, B       

    mov bl, A    
    sub bl, B      

    
    sub al, bl

   
    add al, Cc
    add al, D

  
    movzx ebx, al

  
    call WriteDec

    
    call DumpRegs

    exit
main ENDP

END main
