.data
	n: .word 15
	m: .word -1
.text
main:
	ori $a0,$0,5
	ori $a1,$0,12
	jal min2
	ori $a0,$v0,0
	li $v0,1
	syscall
	li $v0,10
	syscall
	
min2:
	addiu $29,$29,-8
	sw $ra,0($29)
	sw $8,4($29)
	
	sub $8,$a0,$a1
	bgtz $8,qmin
	or $v0,$a0,$0
	j jump
	
	qmin:
		or $v0,$a1,$0
	jump:
		lw $ra,0($29)
		lw $8,4($29)
		addiu $29,$29,8
		jr $ra
		
			
		