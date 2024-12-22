.data 
    a: .word 0x12345678
    b: .word 0x87654321
    result : .word 0
.text 
    main :
        la t0 a
        lw t1 ,0(t0)
        la t0 b 
        lw t2 ,0(t0)
        add t2 t2 ,t1
        la t0 result 
        sw t2 , 0(t0)
        
        