INCLUDE Irvine32.inc
.data
	varB BYTE +10
	varW SWORD -150
	varD DWORD 600
.code
main PROC
	movzx eax, varB
	movsx ebx, varW
	mov ecx, varD
		call DumpRegs
		exit
main ENDP
END main
