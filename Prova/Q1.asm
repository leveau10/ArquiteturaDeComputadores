.text
main:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
	beq $8 $9 earlyFim #iguais termina
	
	addi $8 $8 1
	addi $11 $0 2 #div
	add $10 $0 $0 #contador
primo:
	beq $8 $9 printa
	beq $11 $8 simPrimo
	div $8 $11 #resu ltado div 12
	mfhi $12
	beq $12 0 naoPrimo #dividiu nao primo
	
	addi $11 $11 1
	j primo
simPrimo:
	addi $10 $10 1
	addi $11 $0 2 #div
	addi $8 $8 1
	j primo
	
naoPrimo:
	addi $11 $0 2 #div
	addi $8 $8 1
	j primo
	
printa:
	add $4 $0 $10#printa 10 contador
	addi $2 $0 1
	syscall
	
earlyFim:
	addi $2 $0 10
	syscall