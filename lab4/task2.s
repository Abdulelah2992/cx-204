.data
arr: .space 400
.text 
    li t0,0
    la t1,arr
    main:
        loop:
            li x1,99
            bge t0 x1 exit
            addi t0 t0,1
            addi t1 t1,4
            sw t0 , 0(t1)
            j loop
            
            
            
        exit: 
        