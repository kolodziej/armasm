.data

greeting:
	.asciz "Hello world!"

.balign 4
return:
	.word 0

.text
.global main
main:
	ldr r1, addr_return
	str lr, [r1]

	ldr r0, addr_text

	bl puts
	
	ldr r1, addr_return
	ldr lr, [r1]
	bx lr

addr_text: .word greeting
addr_return: .word return

.global puts
