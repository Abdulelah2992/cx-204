.data
equal : .string "equal"
nequal : .string "not equal"


.text 
    main : 
        addi x5 , x0 , 5
        addi x6 , x0 , 10
        beq x5 x6 printf  
        bne x5 x6 print 
        
        
        printf: la a1 , equal 
        j exit 
        print : la a1 , nequal
        exit :
        li a0 ,4 
        ecall 