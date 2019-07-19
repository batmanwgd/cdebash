* x86-64 gcc 9.1, -fwhole-program -fopt-info
* .LX0 .text // Intel Demangle

main:                                   # @main
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     dword ptr [rbp - 4], 0
.LBB0_1:                                # =>This Loop Header: Depth=1
        mov     dword ptr [rbp - 8], 0
        mov     dword ptr [rbp - 12], 1
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
        mov     esi, dword ptr [rbp - 8]
        movabs  rdi, offset .L.str
        mov     al, 0
        call    printf
        mov     esi, dword ptr [rbp - 8]
        add     esi, dword ptr [rbp - 12]
        mov     dword ptr [rbp - 16], esi
        mov     esi, dword ptr [rbp - 12]
        mov     dword ptr [rbp - 8], esi
        mov     esi, dword ptr [rbp - 16]
        mov     dword ptr [rbp - 12], esi
        mov     dword ptr [rbp - 20], eax # 4-byte Spill
        cmp     dword ptr [rbp - 8], 255
        jl      .LBB0_2
        jmp     .LBB0_1
.L.str:
        .asciz  "%d\n"