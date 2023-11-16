.data
.word 1 0 5 -2 -5 7

.text
main:
	lui $8, 0x1001
	lw $9, 0($8)
	lw $10, 4($8)
	lw $11, 20($8)
	add $12 $9 $10
	add $12 $12 $11
	
	add $4 $0 $12
	addi $2 $0 1
	syscall
	
	addi $10 $0 100
	sw $10, 16($8)
	
	add $9 $0 $0
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
loop:
	beq $9 6 fim
	lw $4, 0($8)
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $9 $9 1
	addi $8 $8 4
	j loop

fim:
	addi $2 $0 10
	syscall