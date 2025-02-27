INCLUDE Irvine32.inc
.data
	val1 DWORD 25h
	val2 BYTE 36o	
	val3 WORD 20d
.code
main PROC
	mov eax, val1
	movzx ebx, val2
	add eax, ebx
	sub eax, 654h
	movzx ebx, val3
	add eax, ebx
	
	call writeInt
		call DumpRegs
		exit
main ENDP
END main
