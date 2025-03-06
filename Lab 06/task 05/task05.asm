include irvine32.inc
.data
array1 BYTE 10, 20, 30, 40
array2 BYTE 4 DUP (?)
.code
main proc
mov esi,OFFSET array1
add esi,3
mov edi, OFFSET array2

mov al , [esi]
mov [edi], al
dec esi 
inc edi

mov al , [esi]
mov [edi], al
dec esi 
inc edi

mov al , [esi]
mov [edi], al
dec esi 
inc edi

mov al , [esi]
mov [edi], al

mov esi, OFFSET array2
movzx eax, BYTE PTR [esi]  ; Load first element (40)
call writedec             
call crlf

movzx eax, BYTE PTR [esi+1] ; Load second element (30)
call writedec              
call crlf

movzx eax, BYTE PTR [esi+2] ; Load third element (20)
call writedec              
call crlf

movzx eax, BYTE PTR [esi+3] ; Load fourth element (10)
call writedec              
call crlf

exit
main endp

end main
