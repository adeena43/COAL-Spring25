INCLUDE Irvine32.inc
.data
	SecondsInDay = 86400
	SecondsInDays EQU 24*60*60
.code
main PROC
		mov eax, 0
		mov ebx, 0
		mov eax, SecondsInDay
		mov ebx, SecondsInDays
		call DumpRegs
		exit
main ENDP
END main
