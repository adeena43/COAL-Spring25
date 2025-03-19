INCLUDE Irvine32.inc  

.data
    qty BYTE ?                           
    totalCost WORD ?                      
    discount BYTE 50                      
    price WORD 40                         
    prompt BYTE "Enter the quantity of the item: ", 0
    no_discount BYTE "No discount applied to the total cost.", 0
    discounted_msg BYTE "Discount applied! New total cost: ", 0        

.code
main PROC
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt

    mov qty, al          
    movzx ax, qty        
    mov bx, price        

    imul bx              
    mov totalCost, ax    

    cmp totalCost, 100
    jg apply_discount

    mov edx, OFFSET no_discount
    call WriteString
    call Crlf
    jmp display_cost

apply_discount:
    mov edx, OFFSET discounted_msg
    call WriteString

    movzx eax, totalCost  
    imul eax, 50          
    mov ecx, 100
    div ecx               
    sub totalCost, ax     

display_cost:
    movzx eax, totalCost
    call WriteInt
    call Crlf

    exit
main ENDP
END main
