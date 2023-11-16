.data
.text
main:
	lui $8, 0x1001
	add $10 $0 $0
loop:
	beq $10 6 reset
	
	addi $2 $0 5
	syscall
	
	sw $2, 0($8)
	
	addi $8 $8 4
	addi $10 $10 1
	j loop

reset:
	lui $8, 0x1001	
print:
	beq $10 $0 fim
	
	lw $4, 0($8)
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $8 $8 4
	subi $10 $10 1
	j print
fim:
	addi $2 $0 10
	syscall