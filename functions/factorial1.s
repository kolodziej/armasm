.data

msg1: .asciz "Type n: "
pattern: .asciz "%d"
msg2: .asciz "Thank you! n! = %d! = %d\n"

.text

factorial:
	str lr, [sp, #-4]!
	str r0, [sp, #-4]!

	cmp r0, #0
	bne not_zero
	mov r0, #1
	b end

not_zero:
	sub r0, r0, #1
	bl factorial

	ldr r1, [sp]
	mul r3, r0, r1
	mov r0, r3

end:
	add sp, sp, #4
	ldr lr, [sp], #+4
	bx lr

.global main
main:
	str lr, [sp, #-4]!
	sub sp, sp, #4

	ldr r0, addr_msg1
	bl printf

	ldr r0, addr_pattern
	mov r1, sp
	bl scanf

	ldr r0, [sp]
	bl factorial

	mov r2, r0
	
	ldr r0, addr_msg2
	ldr r1, [sp]
	bl printf

	add sp, sp, #4
	ldr lr, [sp], #+4
	bx lr

addr_msg1: .word msg1
addr_pattern: .word pattern
addr_msg2: .word msg2
