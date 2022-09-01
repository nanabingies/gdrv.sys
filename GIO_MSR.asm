.text:00000000000116C0
.text:00000000000116C0 ; =============== S U B R O U T I N E =======================================
.text:00000000000116C0
.text:00000000000116C0
.text:00000000000116C0 ; __int64 __fastcall GIO_MSR(__int64, __int64, __int64)
.text:00000000000116C0 GIO_MSR         proc near               ; CODE XREF: sub_12D10+252↓p
.text:00000000000116C0
.text:00000000000116C0 var_10          = qword ptr -10h
.text:00000000000116C0 var_8           = qword ptr -8
.text:00000000000116C0
.text:00000000000116C0                 sub     rsp, 38h
.text:00000000000116C4                 mov     eax, [r8+8]     ; # sizeof(outBuffer)
.text:00000000000116C8                 mov     [rsp+38h+var_8], rbx
.text:00000000000116CD                 mov     rbx, [rdx+18h]  ; # inBuffer
.text:00000000000116D1                 cmp     [r8+10h], eax
.text:00000000000116D5                 mov     [rsp+38h+var_10], rdi
.text:00000000000116DA                 mov     rdi, rdx
.text:00000000000116DD                 jnz     loc_11773
.text:00000000000116E3                 cmp     eax, 10h
.text:00000000000116E6                 jnz     loc_11773
.text:00000000000116EC                 xor     ecx, ecx
.text:00000000000116EE                 mov     [rdx+38h], rcx
.text:00000000000116F2                 mov     eax, [rbx+4]    ; # reg
.text:00000000000116F5                 mov     cs:ValueHigh, ecx
.text:00000000000116FB                 mov     cs:reg, eax
.text:0000000000011701                 mov     cs:ValueLow, ecx
.text:0000000000011707                 mov     eax, [rbx]      ; # rw
.text:0000000000011709                 test    eax, eax
.text:000000000001170B                 jz      short loc_11743
.text:000000000001170D                 dec     eax
.text:000000000001170F                 jnz     short loc_11773
.text:0000000000011711                 call    sub_110D8
.text:0000000000011716                 mov     r11d, cs:ValueLow
.text:000000000001171D                 mov     [rbx+8], r11d
.text:0000000000011721                 mov     eax, cs:ValueHigh
.text:0000000000011727                 mov     [rbx+0Ch], eax
.text:000000000001172A                 mov     qword ptr [rdi+38h], 10h
.text:0000000000011732                 xor     eax, eax
.text:0000000000011734                 mov     rdi, [rsp+38h+var_10]
.text:0000000000011739                 mov     rbx, [rsp+38h+var_8]
.text:000000000001173E                 add     rsp, 38h
.text:0000000000011742                 retn
.text:0000000000011743 ; ---------------------------------------------------------------------------
.text:0000000000011743
.text:0000000000011743 loc_11743:                              ; CODE XREF: GIO_MSR+4B↑j
.text:0000000000011743                 mov     eax, [rbx+8]
.text:0000000000011746                 mov     cs:ValueLow, eax
.text:000000000001174C                 mov     eax, [rbx+0Ch]
.text:000000000001174F                 mov     cs:ValueHigh, eax
.text:0000000000011755                 call    sub_110F5
.text:000000000001175A                 mov     qword ptr [rdi+38h], 10h
.text:0000000000011762                 xor     eax, eax
.text:0000000000011764                 mov     rdi, [rsp+38h+var_10]
.text:0000000000011769                 mov     rbx, [rsp+38h+var_8]
.text:000000000001176E                 add     rsp, 38h
.text:0000000000011772                 retn
.text:0000000000011773 ; ---------------------------------------------------------------------------
.text:0000000000011773
.text:0000000000011773 loc_11773:                              ; CODE XREF: GIO_MSR+1D↑j
.text:0000000000011773                                         ; GIO_MSR+26↑j ...
.text:0000000000011773                 mov     rdi, [rsp+38h+var_10]
.text:0000000000011778                 mov     rbx, [rsp+38h+var_8]
.text:000000000001177D                 mov     eax, 0C000000Dh
.text:0000000000011782                 add     rsp, 38h
.text:0000000000011786                 retn
.text:0000000000011786 GIO_MSR         endp
.text:0000000000011786
.text:0000000000011786 ; ---------------------------------------------------------------------------
