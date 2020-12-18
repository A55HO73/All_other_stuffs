.LC0:
        .string "clear"
.LC1:
        .string "D"
.LC2:
        .string "cls"
.LC3:
        .string "D- _ "
.LC4:
        .string "    _  _  _ "
.LC5:
        .string "       _   _   _ "
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L15:
        mov     DWORD PTR [rbp-12], 0
        jmp     .L3
.L8:
        mov     eax, DWORD PTR [rbp-4]
        imul    eax, eax, -50000
        add     eax, 200000
        mov     edi, eax
        call    usleep
        mov     edi, OFFSET FLAT:.LC0
        call    system
        mov     edi, 10
        call    putchar
        mov     edi, 10
        call    putchar
        mov     edi, 56
        call    putchar
        mov     DWORD PTR [rbp-8], 0
        jmp     .L4
.L5:
        mov     edi, 61
        call    putchar
        add     DWORD PTR [rbp-8], 1
.L4:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-12]
        jl      .L5
        mov     edi, 48
        call    putchar
        mov     eax, DWORD PTR [rbp-12]
        add     eax, 1
        mov     DWORD PTR [rbp-8], eax
        jmp     .L6
.L7:
        mov     edi, 61
        call    putchar
        add     DWORD PTR [rbp-8], 1
.L6:
        cmp     DWORD PTR [rbp-8], 19
        jle     .L7
        mov     edi, OFFSET FLAT:.LC1
        call    puts
        add     DWORD PTR [rbp-12], 1
.L3:
        cmp     DWORD PTR [rbp-12], 19
        jle     .L8
        mov     DWORD PTR [rbp-12], 0
        jmp     .L9
.L14:
        mov     eax, DWORD PTR [rbp-4]
        imul    eax, eax, -40000
        add     eax, 200000
        mov     edi, eax
        call    usleep
        mov     edi, OFFSET FLAT:.LC2
        call    system
        mov     edi, 10
        call    putchar
        mov     edi, 10
        call    putchar
        mov     edi, 56
        call    putchar
        mov     eax, DWORD PTR [rbp-12]
        add     eax, 1
        mov     DWORD PTR [rbp-8], eax
        jmp     .L10
.L11:
        mov     edi, 61
        call    putchar
        add     DWORD PTR [rbp-8], 1
.L10:
        cmp     DWORD PTR [rbp-8], 19
        jle     .L11
        mov     edi, 48
        call    putchar
        mov     DWORD PTR [rbp-8], 0
        jmp     .L12
.L13:
        mov     edi, 61
        call    putchar
        add     DWORD PTR [rbp-8], 1
.L12:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-12]
        jl      .L13
        mov     edi, OFFSET FLAT:.LC1
        call    puts
        add     DWORD PTR [rbp-12], 1
.L9:
        cmp     DWORD PTR [rbp-12], 19
        jle     .L14
        add     DWORD PTR [rbp-4], 1
.L2:
        cmp     DWORD PTR [rbp-4], 4
        jle     .L15
        mov     edi, 200000
        call    usleep
        mov     edi, 10
        call    putchar
        mov     edi, OFFSET FLAT:.LC2
        call    system
        mov     edi, 56
        call    putchar
        mov     DWORD PTR [rbp-8], 0
        jmp     .L16
.L17:
        mov     edi, 61
        call    putchar
        add     DWORD PTR [rbp-8], 1
.L16:
        cmp     DWORD PTR [rbp-8], 19
        jle     .L17
        mov     edi, OFFSET FLAT:.LC3
        call    puts
        mov     edi, 200000
        call    usleep
        mov     edi, 32
        call    putchar
        mov     DWORD PTR [rbp-8], 0
        jmp     .L18
.L19:
        mov     edi, 32
        call    putchar
        add     DWORD PTR [rbp-8], 1
.L18:
        cmp     DWORD PTR [rbp-8], 19
        jle     .L19
        mov     edi, OFFSET FLAT:.LC4
        call    puts
        mov     edi, 200000
        call    usleep
        mov     edi, 32
        call    putchar
        mov     DWORD PTR [rbp-8], 0
        jmp     .L20
.L21:
        mov     edi, 32
        call    putchar
        add     DWORD PTR [rbp-8], 1
.L20:
        cmp     DWORD PTR [rbp-8], 19
        jle     .L21
        mov     edi, OFFSET FLAT:.LC5
        call    puts
        mov     edi, 200000
        call    usleep
        mov     edi, OFFSET FLAT:.LC2
        call    system
        mov     eax, 0
        leave
        ret