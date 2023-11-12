.text
main:
	addi $2 $0, 5
	syscall
	
	add $8, $2, $0
	
	div $4, $8, 3600
	
	mfhi $8
	
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	div $4, $8, 60
	
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	mfhi $4
	addi $2, $0, 1
	syscall
	
	
	
	
	
	