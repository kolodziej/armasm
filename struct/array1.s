.data

.balign 4
a: .skip 400

.balign 4
b: .skip 8

.text
.global main
main:
	ldr r1, addr_a
	mov r2, #0
	mov r3, r1
	b check_loop

loop:
	str r2, [r3], #+4
	add r2, r2, #1
	
check_loop:
	cmp r2, #100
	bne loop

end:
	bx lr

addr_a: .word a
