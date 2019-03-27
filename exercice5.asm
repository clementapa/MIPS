.text
	ori $8,$0,-5 #a=-5
	ori $9,$0,3 #b=3
	
	beqz $8,true
	sub $8,$8,$9
	j next
	true:	
		add $8,$8,$9
	next:
		sw $8,0x10010000
		li $v0,1
		lw $a0,0x10010000
		syscall 
		
		li $v0,10
		syscall