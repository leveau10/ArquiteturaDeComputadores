.data
.text
main:
	lui $8, 0x1001
	add $10 $0 $0
leitura:
	beq $10 8 leitura2
	
	addi $2 $0 5
	syscall
	
	sw $2, 0($8)
	
	addi $8 $8 4
	addi $10 $10 1
	j leitura
leitura2:
	
	add $10 $0 $0
leitura2_1:
	lui $8, 0x1001
	add $11 $0 $0
	beq $10 2 sair
	
	addi $2 $0 5
	syscall
soma:
	beq $11 9 leitura2_1 #passou pelo array todo
	beq $2 $11 soma2  #achou indice
	
	addi $8 $8 4
	addi $11 $11 1
	j soma
soma2:
	lw $12, 0($8)
	add $13 $13 $12
	addi $11 $0 9
	addi $10 $10 1
	addi $8 $8 4
	j leitura2_1
sair:
	add $4 $0 $13
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
					