.text
main:
	addi $2, $0, 5
	syscall
	
	mul $4, $2, 3600
	
	addi $2, $0, 5
	syscall
	
	mul $8, $2, 60
	add $4, $4, $8
	
	addi $2, $0, 5
	syscall
	
	add $4, $4, $2
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	