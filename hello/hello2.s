.data

.balign 4
msg1: .asciz "Hello!\nType a number: "

.balign 4
scan_pattern: .asciz "%d"

.balign 4
msg2: .asciz "Thanks!\nYour number is: %d\n"

.balign 4
number: .word 0

.balign 4
return_addr: .word 0

.text
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

	/* write thanks */
	ldr r0, addr_msg2
	ldr r1, addr_number
	ldr r1, [r1]
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

.global printf
.global scanf
