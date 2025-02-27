INCLUDE Irvine32.inc
.data
	val1 DWORD 25h
	val2 BYTE 36o	
	val3 WORD 20d
.code
main PROC
	mov eax, 89
	add eax, 75Fh
	sub eax, 46o
	sub eax, 28
	add eax, 1101b
	call writeInt
		call DumpRegs
		exit
main ENDP
END main
