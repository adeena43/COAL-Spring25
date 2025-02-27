INCLUDE Irvine32.inc
.data
	A = 0FF10h
	B = 0E10h
.code
main PROC
		mov eax, A
		mov ebx, B
		xchg eax, ebx
		call writeInt
		mov eax, ebx
		call writeInt

		call DumpRegs
		exit
main ENDP
END main
