.data
.text
main:
	lui $8 0x1001
	
	add $9 $0 $0  # int i
	add $10 $0 $0 #menor
	add $11 $0 $0 #maior
for:  #leitura
	beq $9 10 maior
	add $2 $0 5
	syscall	
	sw $2 0($8)											
	addi $8 $8 4
	addi $9 $9 1												
	j for	
maior:
	beq $9 0 menorSet
	subi $8 $8 4
	
	lw $12 0($8)
	slt $13 $12 $11
	beq $13 0 simMaior
	
	subi $9 $9 1
	j maior
simMaior:
	add $11 $0 $12
	subi $9 $9 1
	j maior
menorSet:
	
	lw $12 0($8)
	add $10 $0 $12
	addi $9 $9 1
menor:
	addi $8 $8 4
	beq $9 10 print
	lw $12 0($8)
	
	slt $13 $12 $10
	beq $13 1 simMenor
	
	addi $9 $9 1
	j menor
simMenor:
	add $10 $0 $12
	addi $9 $9 1																																																																																																																																																																																																																																								
	j menor
print:
	add $4 $0 $11
	addi $2 $0 1
	syscall
	
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
																																																																																																																																																																																																																																																																																																																																																																																																																																																																							