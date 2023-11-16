main:
	addi $2 $0 5
	syscall
	
	add $8 $0  $2
	
	addi $9 $0 1 #anterior
	addi $10 $0 1 #atual
	addi $12 $0 1 #print
	addi $11 $0 1 #count
	
	addi $4 $0 1
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	beq $8 1 fim
loop:
	beq $8 $11 fim
	
	add $4 $0 $12
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	add $12 $10 $9
	add $9 $0 $10
	add $10 $0 $12
	
	addi $11 $11 1
	j loop
fim:
	addi $2 $0 10
	syscall
	