INCLUDE Irvine32.inc  
.data
    caloriesBurned WORD ?
    stepsWeek1 SBYTE ?
    stepsWeek2 SBYTE ?
    totalSteps SBYTE ?
    result BYTE ?
.code
main PROC
    movsx eax, stepsWeek1
    movsx ebx, stepsWeek2
    movzx edx, caloriesBurned
    add eax, ebx
    mov totalSteps, eax
    sub ebx, 5
    mov al, stepsWeek1
    mov ah, stepsWeek2
    mov stepsWeek1, ah
    mov stepsWeek2, al

    sub edx, ebx
    jns no_deficit
    neg edx
    mov reuslt, 1
    call DumRegs
    exit
no_deficit:
    mov result, 0
    exit
main ENDP
END main
