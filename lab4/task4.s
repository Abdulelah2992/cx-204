.data 
    result : .string "5 * 6 = "
.text
    main :
         li x5,5
         li x6,6
         add x7 x0,x5
         li x8,2
         loop:
            blt x6 x8 exit 
            add x7 x7,x5
            addi x6 x6,-1
            j loop
            
            
            
            exit : 
               la a1, result
               li a0 , 4
               ecall 
               
               add a1 x0,x7
               li a0,1
               ecall