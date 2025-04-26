INCLUDE Irvine32.inc

.data
    arr         WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
    arr_size    = ($ - arr) / TYPE arr    ; Calculate array size
    prompt      BYTE "Enter a number to search: ", 0
    found_msg   BYTE "Number found in the array!", 0
    notfound_msg BYTE "Number not found in the array.", 0
    input_num   DWORD ?                   

.code
main PROC
    ; Prompt user for input
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt                         
    mov input_num, eax

    ; Sequential search setup
    mov esi, OFFSET arr                  
    mov ecx, arr_size                   
    mov ebx, 0                           

    SearchLoop:
        movzx eax, WORD PTR [esi + ebx*2] 
        cmp eax, input_num              
        je Found                         

        inc ebx                          
        loop SearchLoop                  

    mov edx, OFFSET notfound_msg
    call WriteString
    jmp ExitProgram

    Found:
        mov edx, OFFSET found_msg
        call WriteString

    ExitProgram:
        call Crlf
        exit
main ENDP
END main
