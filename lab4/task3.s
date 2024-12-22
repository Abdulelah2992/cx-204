.data 
    arr: .space 32
.text 
    main: 
        li x5,1
        li x6,9
        la x9,arr
        loop:
        li x7,9
        bge x5,x7 exit 
        add x8 x5,x6
        addi x5 x5 ,1
        addi x9 x9 ,4
        addi x6 x6 ,1
        sw x8 ,0(x9)
        j loop
        
        exit:
        