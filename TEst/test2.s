        push    rbp
        mov     rbp, rsp
        sub     rsp, 80
        mov     QWORD PTR [rbp-56], rdi
        mov     DWORD PTR [rbp-60], esi
        mov     QWORD PTR [rbp-72], rdx
        mov     QWORD PTR [rbp-80], rcx
        mov     DWORD PTR [rbp-8], 0
        mov     DWORD PTR [rbp-16], 1
        mov     DWORD PTR [rbp-20], 0
        mov     eax, DWORD PTR [rbp-60]
        cdqe
        mov     esi, 4
        mov     rdi, rax
        call    calloc
        mov     QWORD PTR [rbp-32], rax
        mov     rax, QWORD PTR [rbp-72]
        mov     eax, DWORD PTR [rax]
        cdqe
        mov     esi, 4
        mov     rdi, rax
        call    calloc
        mov     QWORD PTR [rbp-40], rax
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L14:
        mov     DWORD PTR [rbp-8], 0
        jmp     .L3
.L13:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-40]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        test    eax, eax
        jne     .L16
        mov     DWORD PTR [rbp-16], 1
        mov     DWORD PTR [rbp-12], 0
        jmp     .L6
.L8:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-56]
        add     rax, rdx
        mov     rdx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        lea     rcx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-56]
        add     rax, rcx
        mov     rcx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jge     .L7
        mov     DWORD PTR [rbp-16], 0
.L7:
        add     DWORD PTR [rbp-12], 1
.L6:
        mov     eax, DWORD PTR [rbp-12]
        cmp     eax, DWORD PTR [rbp-60]
        jl      .L8
        mov     DWORD PTR [rbp-12], 0
        jmp     .L9
.L11:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-56]
        add     rax, rdx
        mov     rdx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-56]
        add     rax, rcx
        mov     rcx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        sal     rax, 2
        add     rax, rcx
        mov     eax, DWORD PTR [rax]
        cmp     edx, eax
        jle     .L10
        mov     DWORD PTR [rbp-16], 0
.L10:
        add     DWORD PTR [rbp-12], 1
.L9:
        mov     rax, QWORD PTR [rbp-72]
        mov     eax, DWORD PTR [rax]
        cmp     DWORD PTR [rbp-12], eax
        jl      .L11
        cmp     DWORD PTR [rbp-16], 0
        je      .L12
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*8]
        mov     rax, QWORD PTR [rbp-56]
        add     rax, rdx
        mov     rdx, QWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        sal     rax, 2
        lea     rcx, [rdx+rax]
        mov     eax, DWORD PTR [rbp-20]
        lea     edx, [rax+1]
        mov     DWORD PTR [rbp-20], edx
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-32]
        add     rdx, rax
        mov     eax, DWORD PTR [rcx]
        mov     DWORD PTR [rdx], eax
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-40]
        add     rax, rdx
        mov     DWORD PTR [rax], 1
        jmp     .L5
.L12:
        add     DWORD PTR [rbp-8], 1
.L3:
        mov     rax, QWORD PTR [rbp-72]
        mov     eax, DWORD PTR [rax]
        cmp     DWORD PTR [rbp-8], eax
        jl      .L13
        jmp     .L5
.L16:
        nop
.L5:
        add     DWORD PTR [rbp-4], 1
.L2:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-60]
        jl      .L14
        mov     rax, QWORD PTR [rbp-80]
        mov     edx, DWORD PTR [rbp-20]
        mov     DWORD PTR [rax], edx
        mov     rax, QWORD PTR [rbp-32]
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        mov     eax, 0
        pop     rbp
        ret
