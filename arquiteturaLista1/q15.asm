.text
main:
	addi $2, $0, 5
	syscall

	div $15, $2, 10
	mfhi $11
	
	div $15, $15, 10
	mfhi $10
	
	div $8, $15, 10
	mfhi $9
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	add $4, $0, 32
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	