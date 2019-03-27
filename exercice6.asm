.text
	ori $8,$0,10 #i=10
	ori $9,$0,0 #somme=0

	loop:
		blez $8,next
		add $9,$9,$8
		subi $8,$8,1
		j loop
	next:
		sw $9,0x10010000
		li $v0,1
		lw $a0,0x10010000
		syscall
		
		li $v0,10
		syscall
		
	