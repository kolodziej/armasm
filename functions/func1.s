.data

.balign 4
msg1: .asciz "Hello!\nType a number: "

.balign 4
scan_pattern: .asciz "%d"

.balign 4
msg2: .asciz "Thanks!\nYour number is: %d. %d * 5 = %d\n"

.balign 4
number: .word 0

.balign 4
return_addr: .word 0

.balign 4
mul5_return: .word 0

.text

/* function mul5 */

mul5:
	ldr r1, addr_mul5_return
	str lr, [r1]

	add r0, r0, r0, lsl #2

	ldr lr, addr_mul5_return
	ldr lr, [lr]
	bx lr

.global main
main:
	/* store lr in memory */
	ldr r1, addr_return_addr
	str lr, [r1]

	/* write hello */
	ldr r0, addr_msg1
	bl printf

	/* scan */
	ldr r0, addr_scan_pattern
	ldr r1, addr_number
	bl scanf

	/* mul5 */
	ldr r0, addr_number
	ldr r0, [r0]
	bl mul5

	mov r3, r0

	/* write thanks */
	ldr r0, addr_msg2
	ldr r1, addr_number
	ldr r1, [r1]
	mov r2, r1
	bl printf

	/* load lr from memory */
	ldr lr, addr_return_addr
	ldr lr, [lr]

	bx lr

addr_msg1: .word msg1
addr_scan_pattern: .word scan_pattern
addr_msg2: .word msg2
addr_number: .word number
addr_return_addr: .word return_addr
addr_mul5_return: .word mul5_return

.global printf
.global scanf
