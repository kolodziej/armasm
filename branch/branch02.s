.text
.global main
main:
	mov r0, #10
	mov r1, #3
	cmp r0, r1
	beq case_equal

case_diff:
	mov r0, #2
	b end

case_equal:
	mov r0, #1

end:
	bx lr
