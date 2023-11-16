.data
.text
main:
	lui $8 0x1001
	
	add $9 $0 $0

for: #leitura
	beq $9 10 negativo
	
	addi $2 $0 5
	syscall
	sw $2 0($8)
	
	addi $8 $8 4
	addi $9 $9 1
	j for
negativo:
	lui $8 0x1001
	add $9 $0 $0
	add $12 $0 $0 #quantidaNegativos
negativo2:
	beq $9 10 soma
	lw $10 0($8)
	srl $11 $10 31
	beq $11 1 simNegativo
	
	addi $8 $8 4
	addi $9 $9 1	
	j negativo2
simNegativo:
	addi $12 $12 1
	addi $8 $8 4
	addi $9 $9 1
	j negativo2
soma:
	lui $8 0x1001
	add $9 $0 $0
	add $13 $0 $0 #soma
soma2:
	beq $9 10 print
	
	lw $10 0($8)
	srl $11 $10 31
	beq $11 0 simPositivo
	
	
	addi $8 $8 4
	addi $9 $9 1
	j soma2
simPositivo:
	add $13 $13 $10
	addi $8 $8 4
	addi $9 $9 1
	j soma2

print:
	add $4 $0 $12
	addi $2 $0 1
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	add $4 $0 $13
	addi $2 $0 1
	syscall