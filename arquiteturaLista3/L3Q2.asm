.text
main:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
	addi $10 $0 0
	
for:
	beq $10 $9 fim
	add $11 $11 $8
	add $4 $0 $11
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $10 $10 1
	j for
	
fim:
	addi $2 $0 10
	syscall