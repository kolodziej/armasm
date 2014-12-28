/* Dane */
.data

.balign 4
var1:
	.word 3

.balign 4
var2:
	.word 4

/* Kod */
.text

.balign 4
.global main
main:
	ldr r1, addr_var1
	ldr r1, [r1]
	ldr r2, addr_var2
	ldr r2, [r2]

	add r0, r1, r2
	bx lr

addr_var1: .word var1
addr_var2: .word var2
