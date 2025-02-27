INCLUDE Irvine32.inc
.data
	SecondsInDays = 24*60*60
.code
main PROC
		mov eax, SecondsInDays
		call DumpRegs
		exit
main ENDP
END main
