.text
.global main
main:
	mov r1, #0 /* suma */
	mov r2, #5 /* limit licznika */
	mov r3, #0 /* licznik */

zliczaj:
	add r1, r1, r3
	cmp r2, r3
	beq koniec
	add r3, r3, #1
	b zliczaj

koniec:
	mov r0, r1
	bx lr
