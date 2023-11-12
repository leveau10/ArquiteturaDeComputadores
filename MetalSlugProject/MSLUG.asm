.data 

.text

main:
	jal ceu
	jal terra
	jal arvoresPrim
	jal arvoresSec
	jal arvoresTer
	
fim:
	addi $2 $0 10
	syscall
	
ceu:  #C�U
	lui $9, 0x1001
	addi $5 $0 0x000791ff
	add $8 $0 $0
forCeu:
	beq $8 8192 ceu2
	
	sw $5 0($9)
	addi $9 $9 4
	addi $8 $8 1
	j forCeu
ceu2:
	jr $31
terra:   lui $9, 0x1001
		add $9 $9 24576 #terra no ultimo quarto 
        	add $8, $0, $0
       		addi $5, $0, 0x006c3c0c #cor marrom
forTerra:   beq $8, 2048, terra2

        
        	sw $5, 0($9)
        	addi $9, $9, 4
        	addi $8, $8, 1
        	j forTerra
terra2:
	jr $31
	
arvoresPrim:   #PRIMEIRA �RVORE
	add $10 $0 $0 
	lui $9 0x1001
	add $9 $9 24116
	addi $5 $0 0x00342b29
forArvoresPrim:   
	beq $10 10 folhagem

	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
arvoresPrim2:
	subi $9 $9 512
	addi $10 $10 1
	j forArvoresPrim
folhagem:
	add $10 $0 $0
	addi $5 $0 0x00347229
forFolhagem:
	beq $10 5 arvoresPrim3
	
	sw $5 -8($9)
	sw $5 -4($9)
	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
	sw $5 12($9)
	sw $5 16($9)
	sw $5 20($9)
	
	subi $9 $9 512
	addi $10 $10 1
	j forFolhagem
	
	
	
arvoresPrim3:
	jr $31



arvoresSec: #SEGUNDA �RVORE
	add $10 $0 $0
	lui $9 0x1001
	addi $9 $9 24220
	addi $5 $0 0x00342b29
forArvoresSec:   
	beq $10 14 folhagem2

	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
arvoresSec2:
	subi $9 $9 512
	addi $10 $10 1
	j forArvoresSec
folhagem2:
	add $10 $0 $0
	addi $5 $0 0x00347229
forFolhagem2:
	beq $10 5 arvoresSec3
	
	sw $5 -8($9)
	sw $5 -4($9)
	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
	sw $5 12($9)
	sw $5 16($9)
	sw $5 20($9)
	
	subi $9 $9 512
	addi $10 $10 1
	j forFolhagem2
	
arvoresSec3:
	jr $31
	
arvoresTer: ###TERCEIRA �RVORE
	add $10 $0 $0
	lui $9 0x1001
	addi $9 $9 24428
	addi $5 $0 0x00342b29
forArvoresTer:   
	beq $10 14 folhagem3

	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
arvoresTer2:
	subi $9 $9 512
	addi $10 $10 1
	j forArvoresTer
folhagem3:
	add $10 $0 $0
	addi $5 $0 0x00347229
forFolhagem3:
	beq $10 5 arvoresTer3
	
	sw $5 -8($9)
	sw $5 -4($9)
	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
	sw $5 12($9)
	sw $5 16($9)
	sw $5 20($9)
	
	subi $9 $9 512
	addi $10 $10 1
	j forFolhagem3
arvoresTer3:
	jr $31