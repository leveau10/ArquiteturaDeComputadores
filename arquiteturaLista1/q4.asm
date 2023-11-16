.text
main:
	addi $2, $0, 5
	syscall
	
	add $8, $2, $0
	
	addi $2, $0, 5
	syscall
	
	add $9, $2, $0
	
	add $10, $9, $8
	
	srl $4, $10, 1
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall