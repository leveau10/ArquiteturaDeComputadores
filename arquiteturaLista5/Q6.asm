.data
.text
main:
	lui $8 0x1001
	add $9 $0 $0
	

for:
	beq $9 6 printInverso
	
	addi $2 $0 5
	syscall
	
	div $12 $2 2
	mfhi $12
	beq $12 0 par
	
	j for
par:
	sw $2 0($8)
	addi $8 $8 4
	addi $9 $9 1
	j for
printInverso:
	beq $9 0 fim
	subi $8 $8 4
	lw $4 0($8)
	addi $2 $0 1
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	subi $9 $9 1
	j printInverso
fim:
	