```asm
INCLUDE Irvine32.inc

.data
    empID DWORD 5 DUP(?)         
    empName BYTE 5 DUP(30 DUP(?)) 
    empDOB DWORD 5 DUP(?)        
    empSalary DWORD 5 DUP(?)     
    totalAnnualSalary DWORD ?    

    promptID BYTE "Enter Employee ID: ", 0
    promptName BYTE "Enter Employee Name: ", 0
    promptDOB BYTE "Enter Date of Birth: ", 0
    promptSalary BYTE "Enter Monthly Salary: ", 0
    totalMsg BYTE "Total Annual Salary of All Employees: ", 0

.code
main PROC         
    mov ecx, 5  
    mov esi, 0  
    
inputLoop:
    mov edx, OFFSET promptID
    call WriteString
    call ReadInt
    mov empID[esi * 4], eax

    mov edx, OFFSET promptName
    call WriteString
    mov edx, OFFSET empName
    mov eax, esi
    imul eax, 30
    add edx, eax
    call ReadString

    mov edx, OFFSET promptDOB
    call WriteString
    call ReadInt
    mov empDOB[esi * 4], eax

    mov edx, OFFSET promptSalary
    call WriteString
    call ReadInt
    mov empSalary[esi * 4], eax

    add totalAnnualSalary, eax

    inc esi
    loop inputLoop

    mov edx, OFFSET totalMsg
    call WriteString
    mov eax, totalAnnualSalary
    call WriteInt
exit
main ENDP
END main

```
# output
![image](https://github.com/user-attachments/assets/cdbe9703-e947-4d70-816f-1ce989d7a23c)
