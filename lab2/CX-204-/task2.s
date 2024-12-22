.text
    main: 
       #2
       #addi x5 , x0,  4294967295         
       
       #addi a1,x5,1
       
       
       #4
       #addi x5, x0, 0x123
       #slli x5 , x5,12
       #addi x5 , x5,0x456
       #slli x5 , x5,8
       #addi a1 , x5, 0x78
       
       #5
       #addi x5 ,x0, 14  #
       
       #andi x10,x5,1
      
       #addi a1,x10,0
       
       
       
       
       
       li a0,1
       ecall
       
       li a0,10
       ecall

       