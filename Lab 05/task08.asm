INCLUDE Irvine32.inc
.data
	val1 BYTE 10h
	val2 WORD 8000h
	val3 DWORD 0FFFFh
	val4 WORD 7FFFh
.code
main PROC
		mov eax, 0
		mov ebx, 0
		mov ecx,0

		mov ax,val2
		INC ax ; (i)

		sub ebx,val3 ; (ii)
	
		mov cx, val2
		sub cx ,val4
		call DumpRegs
		exit
main ENDP
END main
