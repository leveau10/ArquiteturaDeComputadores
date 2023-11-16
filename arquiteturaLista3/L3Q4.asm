.text
main:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
for:	
	andi $10 $8 1
	bne $10 1 par
	
	sub $11 $8 $9
	srl $11 $11 31
	beq $11 0 fim
	
	addi $8 $8 1
	j for
par:
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $8 $8 1
	j for
fim:
	addi $2 $0 10
	syscall