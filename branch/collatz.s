.text
.global main
main:
	mov r1, #123
	mov r2, #0

loop:
	cmp r1, #1
	beq end
	
	and r3, r1, #1
	cmp r3, #0
	beq even

odd:
	add r1, r1, r1, lsl #1
	add r1, r1, #1
	b endloop

even:
	mov r1, r1, asr #1

endloop:
	add r2, r2, #1
	b loop

end:
	mov r0, r2
	bx lr
