.text:0000000000012860
.text:0000000000012860 ; =============== S U B R O U T I N E =======================================
.text:0000000000012860
.text:0000000000012860
.text:0000000000012860 ; __int64 __fastcall GIO_memcpy(__int64, __int64)
.text:0000000000012860 GIO_memcpy      proc near               ; CODE XREF: sub_12D10+351↓p
.text:0000000000012860
.text:0000000000012860 var_18          = qword ptr -18h
.text:0000000000012860 var_10          = qword ptr -10h
.text:0000000000012860 var_8           = qword ptr -8
.text:0000000000012860
.text:0000000000012860                 sub     rsp, 38h
.text:0000000000012864                 mov     rax, [rdx+18h]  ; # SystemBuffer
.text:0000000000012868                 mov     qword ptr [rdx+38h], 0 ; # IoStatus.Information
.text:0000000000012870                 test    rax, rax
.text:0000000000012873                 jz      short loc_128D5
.text:0000000000012875                 mov     [rsp+38h+var_8], rbx
.text:000000000001287A                 mov     rbx, [rax]      ; # where
.text:000000000001287D                 mov     [rsp+38h+var_10], rsi
.text:0000000000012882                 mov     esi, [rax+10h]  ; # size
.text:0000000000012885                 mov     [rsp+38h+var_18], rdi
.text:000000000001288A                 mov     rdi, [rax+8]    ; # what
.text:000000000001288E                 lea     rcx, aDestXSrcXSizeD ; "Dest=%x,Src=%x,size=%d"
.text:0000000000012895                 mov     r8, rdi
.text:0000000000012898                 mov     r9d, esi
.text:000000000001289B                 mov     rdx, rbx
.text:000000000001289E                 call    DbgPrint
.text:00000000000128A3                 test    esi, esi
.text:00000000000128A5                 jz      short loc_128BF
.text:00000000000128A7                 sub     rdi, rbx
.text:00000000000128AA                 mov     rdx, rsi
.text:00000000000128AD                 db      66h, 66h
.text:00000000000128AD                 xchg    ax, ax
.text:00000000000128B0
.text:00000000000128B0 loc_128B0:                              ; CODE XREF: GIO_memcpy+5D↓j
.text:00000000000128B0                 movzx   ecx, byte ptr [rdi+rbx]
.text:00000000000128B4                 inc     rbx
.text:00000000000128B7                 dec     rdx
.text:00000000000128BA                 mov     [rbx-1], cl
.text:00000000000128BD                 jnz     short loc_128B0
.text:00000000000128BF
.text:00000000000128BF loc_128BF:                              ; CODE XREF: GIO_memcpy+45↑j
.text:00000000000128BF                 mov     rdi, [rsp+38h+var_18]
.text:00000000000128C4                 mov     rsi, [rsp+38h+var_10]
.text:00000000000128C9                 mov     rbx, [rsp+38h+var_8]
.text:00000000000128CE                 xor     eax, eax
.text:00000000000128D0                 add     rsp, 38h
.text:00000000000128D4                 retn
.text:00000000000128D5 ; ---------------------------------------------------------------------------
.text:00000000000128D5
.text:00000000000128D5 loc_128D5:                              ; CODE XREF: GIO_memcpy+13↑j
.text:00000000000128D5                 mov     eax, 0C000000Dh
.text:00000000000128DA                 add     rsp, 38h
.text:00000000000128DE                 retn
.text:00000000000128DE GIO_memcpy      endp
.text:00000000000128DE
.text:00000000000128DE ; ---------------------------------------------------------------------------
