.data
.text
main:
	lui $8 x01001
	add $9 $9 $0
for:
	beq $9 10 iguais
	
	addi $2 $0 5
	syscall
	
	sw $8 0($8)
	
	
	addi $9 $9 1
	j for
iguais:
	lui $8 0x1001
	add $9 $0 $0
iguais2:
	
	
	
	