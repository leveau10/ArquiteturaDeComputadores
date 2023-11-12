.text
main:
	addi $8 $0 0
	addi $9 $0 0
for:	
	beq $9 10 fim
	addi $8 $8 3
	add $4 $0 $8
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j for
fim:
	addi $2 $0 10
	syscall	

	
	