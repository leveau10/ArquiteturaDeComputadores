.data 

.text

main:
	jal ceu
	jal terra
	jal arvoresPrim
	jal arvoresSec
	jal arvoresTer
	jal personagem
	
fim:
	addi $2 $0 10
	syscall
	
ceu:  #CÉU
	lui $9, 0x1001
	addi $5 $0 0x000791ff
	add $8 $0 $0
forCeu:
	beq $8 8192 nuvem
	
	sw $5 0($9)
	addi $9 $9 4
	addi $8 $8 1
	j forCeu

nuvem:
	lui $9 0x1001
	addi $9 $9 2096
	add $8 $0 $0
	add $10 $0 $0
	addi $5 $0 0x00ff0000
forNuvem:
	beq $8 3 nuvemCima
	
	sw $5 0($9)
	sw $5 4($9)
	sw $5 8($9)
	sw $5 12($9)
	sw $5 16($9)
	sw $5 20($9)
	addi $8 $8 1
	j forNuvem
nuvemCima:
	
ceu2:
	jr $31
terra:   lui $9, 0x1001
		add $9 $9 24576 #terra no ultimo quarto 
        	add $8, $0, $0
       		addi $5, $0, 0x0027661d #cor marrom
forTerra:   beq $8, 256, terra2
		
        
        	sw $5, 0($9)
        	addi $9, $9, 4
        	addi $8, $8, 1
        	j forTerra
terra2:
	addi $5 $0 0x006c3c0c
forTerra2:

	beq $8 2048 terra3
	sw $5 0($9)
	addi $9 $9 4
	addi $8 $8 1
	j forTerra2
terra3:
	jr $31
arvoresPrim:   #PRIMEIRA ÁRVORE
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

arvoresSec: #SEGUNDA ÁRVORE
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
	
arvoresTer: ###TERCEIRA ÁRVORE
	add $10 $0 $0
	lui $9 0x1001
	addi $9 $9 24428
	addi $5 $0 0x00342b29
forArvoresTer:   
	beq $10 20 folhagem3

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

personagem:
	lui $9 0x1001
	addi $5 $0 0x00000000
	sw $5 24068($9)
	sw $5 24072($9)
	sw $5 24080($9)
	sw $5 24084($9)
	jr $31