main:
	addi $2 $0 5
	syscall
	
	add $8 $0 $2
	addi $10 $0 1
	addi $9 $0 1
loop:
	slt $12 $8 $10
	beq $12 1 fim
	mul $9 $9 $10
	addi $10 $10 1
	j loop
fim:
	add $4 $0 $9
	addi $2 $0 1
	syscall