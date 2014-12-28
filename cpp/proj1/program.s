.text
.global add
.global subtract

add:
	pop {r0, r1, r2}
	add r0, r0, r1
	str r0, r2
	b end

subtract:
	pop {r0, r1, r2}
	sub r0, r0, r1
	str r0, r2

end:
