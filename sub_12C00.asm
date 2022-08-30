.text:0000000000012C00
.text:0000000000012C00 ; =============== S U B R O U T I N E =======================================
.text:0000000000012C00
.text:0000000000012C00
.text:0000000000012C00 ; __int64 __fastcall sub_12C00(__int64, __int64, __int64)
.text:0000000000012C00 sub_12C00       proc near               ; CODE XREF: sub_12D10+1B2↓p
.text:0000000000012C00
.text:0000000000012C00 var_18          = dword ptr -18h
.text:0000000000012C00 var_10          = dword ptr -10h
.text:0000000000012C00 var_8           = qword ptr -8
.text:0000000000012C00 arg_18          = qword ptr  20h
.text:0000000000012C00
.text:0000000000012C00                 sub     rsp, 38h
.text:0000000000012C04                 mov     [rsp+38h+arg_18], rbx
.text:0000000000012C09                 lea     rcx, aEntryIoctlsmbu ; "Entry IoctlSMBUSCmd"
.text:0000000000012C10                 mov     [rsp+38h+var_8], rdi
.text:0000000000012C15                 mov     rbx, r8
.text:0000000000012C18                 mov     rdi, rdx
.text:0000000000012C1B                 call    DbgPrint
.text:0000000000012C20                 cmp     dword ptr [rbx+10h], 0Ch
.text:0000000000012C24                 jnz     loc_12CE0
.text:0000000000012C2A                 cmp     dword ptr [rbx+8], 1
.text:0000000000012C2E                 jnz     loc_12CE0
.text:0000000000012C34                 mov     rbx, [rdi+18h]
.text:0000000000012C38                 movzx   ecx, word ptr [rbx+6]
.text:0000000000012C3C                 movzx   eax, word ptr [rbx+8]
.text:0000000000012C40                 movzx   r9d, word ptr [rbx+4]
.text:0000000000012C45                 movzx   r8d, word ptr [rbx+2]
.text:0000000000012C4A                 movzx   edx, word ptr [rbx]
.text:0000000000012C4D                 mov     [rsp+38h+var_10], eax
.text:0000000000012C51                 mov     [rsp+38h+var_18], ecx
.text:0000000000012C55                 lea     rcx, aPtr00xXPtr10xX ; "ptr[0]=0x%x,ptr[1]=0x%x,ptr[2]=0x%x,ptr"...
.text:0000000000012C5C                 call    DbgPrint
.text:0000000000012C61                 movzx   r11d, word ptr [rbx]
.text:0000000000012C65                 test    r11w, r11w
.text:0000000000012C69                 jnz     short loc_12C8F
.text:0000000000012C6B                 movzx   eax, word ptr [rbx+0Ah]
.text:0000000000012C6F                 movzx   r9d, word ptr [rbx+8]
.text:0000000000012C74                 movzx   r8d, word ptr [rbx+6]
.text:0000000000012C79                 movzx   edx, word ptr [rbx+4]
.text:0000000000012C7D                 movzx   ecx, word ptr [rbx+2]
.text:0000000000012C81                 mov     word ptr [rsp+38h+var_18], ax
.text:0000000000012C86                 call    sub_129A0
.text:0000000000012C8B                 mov     [rbx], al
.text:0000000000012C8D                 jmp     short loc_12CB8
.text:0000000000012C8F ; ---------------------------------------------------------------------------
.text:0000000000012C8F
.text:0000000000012C8F loc_12C8F:                              ; CODE XREF: sub_12C00+69↑j
.text:0000000000012C8F                 cmp     r11w, 1
.text:0000000000012C94                 jnz     short loc_12CB8
.text:0000000000012C96                 movzx   eax, word ptr [rbx+0Ah]
.text:0000000000012C9A                 movzx   r9d, word ptr [rbx+8]
.text:0000000000012C9F                 movzx   r8d, word ptr [rbx+6]
.text:0000000000012CA4                 movzx   edx, word ptr [rbx+4]
.text:0000000000012CA8                 movzx   ecx, word ptr [rbx+2]
.text:0000000000012CAC                 mov     word ptr [rsp+38h+var_18], ax
.text:0000000000012CB1                 call    sub_12AC0
.text:0000000000012CB6                 mov     [rbx], al
.text:0000000000012CB8
.text:0000000000012CB8 loc_12CB8:                              ; CODE XREF: sub_12C00+8D↑j
.text:0000000000012CB8                                         ; sub_12C00+94↑j
.text:0000000000012CB8                 movzx   edx, byte ptr [rbx]
.text:0000000000012CBB                 lea     rcx, aRetValue0xX ; "Ret Value=0x%x"
.text:0000000000012CC2                 call    DbgPrint
.text:0000000000012CC7                 mov     qword ptr [rdi+38h], 1
.text:0000000000012CCF                 xor     eax, eax
.text:0000000000012CD1                 mov     rdi, [rsp+38h+var_8]
.text:0000000000012CD6                 mov     rbx, [rsp+38h+arg_18]
.text:0000000000012CDB                 add     rsp, 38h
.text:0000000000012CDF                 retn
.text:0000000000012CE0 ; ---------------------------------------------------------------------------
.text:0000000000012CE0
.text:0000000000012CE0 loc_12CE0:                              ; CODE XREF: sub_12C00+24↑j
.text:0000000000012CE0                                         ; sub_12C00+2E↑j
.text:0000000000012CE0                 lea     rcx, aSizeCheckError ; "Size check error!!"
.text:0000000000012CE7                 call    DbgPrint
.text:0000000000012CEC                 mov     rdi, [rsp+38h+var_8]
.text:0000000000012CF1                 mov     rbx, [rsp+38h+arg_18]
.text:0000000000012CF6                 mov     eax, 0C000000Dh
.text:0000000000012CFB                 add     rsp, 38h
.text:0000000000012CFF                 retn
.text:0000000000012CFF sub_12C00       endp
.text:0000000000012CFF
.text:0000000000012CFF ; ---------------------------------------------------------------------------
