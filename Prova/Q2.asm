.text
main:
	addi $8 $0 100
	addi $9 $0 100
	
	addi $24 $0 0 #maior
loop:
	beq $8 999 print
	beq $9 999 reset
	
	mul $25 $8 $9
	
	add $4 $0 $10
	
	div $25 $25 10
	mfhi $10
	
	div $25 $25 10
	mfhi $11
	
	div $25 $25 10
	mfhi $12
	
	div $25 $25 10
	mfhi $13
	
	div $25 $25 10
	mfhi $14
	
	add $15 $0 $25
	
	beq $10 $15 pal1
	
	addi $9 $9 1
	j loop
	
pal1:
	beq $11 $14 pal2
	addi $9 $9 1
	
	j loop
	
pal2: 
	beq $12 $13 palindromo
	addi $9 $9 1
	j loop

palindromo:
	mul $25 $8 $9
	slt $25 $24 $25
	beq $25 1 maior
	addi $9 $9 1
	j loop
maior:
	mul $25 $8 $9
	add $24 $0 $25
	addi $9 $9 1
	j loop
	
reset:
	addi $9 $0 900
	addi $8 $8 1
	j loop
print:
	add $4 $0 $24
	addi $2 $0 1
	syscall
