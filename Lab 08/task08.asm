INCLUDE Irvine32.inc

.data
    prompt_msg    BYTE "Enter a character: ", 0
    result_msg1   BYTE "'", 0
    result_msg2   BYTE "' is ", 0
    is_alpha_msg  BYTE "an alphabet character", 0
    not_alpha_msg BYTE "not an alphabet character", 0

.code
main PROC
    mov edx, OFFSET prompt_msg
    call WriteString

    call ReadChar
    
    call WriteChar        
    mov bl, al           
    
    mov edx, OFFSET result_msg1
    call WriteString     
    
    mov al, bl          
    call WriteChar       
    
    mov edx, OFFSET result_msg2
    call WriteString     

    cmp bl, 'A'
    jb CheckLower        
    cmp bl, 'Z'
    jbe Valid            

CheckLower:
    cmp bl, 'a'
    jb Invalid           
    cmp bl, 'z'
    ja Invalid          

Valid:
    mov edx, OFFSET is_alpha_msg
    jmp Display

Invalid:
    mov edx, OFFSET not_alpha_msg

Display:
    call WriteString    
    call Crlf

    exit
main ENDP
END main
