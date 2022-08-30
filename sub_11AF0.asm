.text:0000000000011AF0
.text:0000000000011AF0 ; =============== S U B R O U T I N E =======================================
.text:0000000000011AF0
.text:0000000000011AF0
.text:0000000000011AF0 ; __int64 __fastcall sub_11AF0(__int64, __int64, __int64)
.text:0000000000011AF0 sub_11AF0       proc near               ; CODE XREF: sub_12D10+1D0↓p
.text:0000000000011AF0
.text:0000000000011AF0 var_48          = byte ptr -48h
.text:0000000000011AF0 var_30          = dword ptr -30h
.text:0000000000011AF0 var_2C          = dword ptr -2Ch
.text:0000000000011AF0 var_28          = dword ptr -28h
.text:0000000000011AF0 var_24          = dword ptr -24h
.text:0000000000011AF0 var_20          = dword ptr -20h
.text:0000000000011AF0 var_1C          = dword ptr -1Ch
.text:0000000000011AF0 var_18          = dword ptr -18h
.text:0000000000011AF0 var_14          = dword ptr -14h
.text:0000000000011AF0 var_8           = qword ptr -8
.text:0000000000011AF0 arg_0           = qword ptr  8
.text:0000000000011AF0 arg_8           = qword ptr  10h
.text:0000000000011AF0 arg_10          = qword ptr  18h
.text:0000000000011AF0 arg_18          = qword ptr  20h
.text:0000000000011AF0
.text:0000000000011AF0                 mov     rax, rsp
.text:0000000000011AF3                 sub     rsp, 68h
.text:0000000000011AF7                 mov     [rax+8], rbx
.text:0000000000011AFB                 mov     [rax+10h], rbp
.text:0000000000011AFF                 mov     [rax+18h], rsi
.text:0000000000011B03                 mov     [rax+20h], rdi
.text:0000000000011B07                 mov     [rax-8], r12
.text:0000000000011B0B                 mov     r12, rcx
.text:0000000000011B0E                 lea     rcx, aEnteredSmartfa ; "Entered SmartFanON"
.text:0000000000011B15                 mov     rsi, r8
.text:0000000000011B18                 mov     rbp, rdx
.text:0000000000011B1B                 mov     bx, 1
.text:0000000000011B1F                 xor     di, di
.text:0000000000011B22                 call    DbgPrint
.text:0000000000011B27                 cmp     dword ptr [rsi+10h], 34h ; '4'
.text:0000000000011B2B                 jnz     loc_11C3F
.text:0000000000011B31                 cmp     dword ptr [rsi+8], 34h ; '4'
.text:0000000000011B35                 jnz     loc_11C3F
.text:0000000000011B3B                 mov     rcx, [r12+40h]
.text:0000000000011B40                 mov     rax, [rbp+18h]
.text:0000000000011B44                 xor     r12d, r12d
.text:0000000000011B47                 mov     [rbp+38h], r12
.text:0000000000011B4B                 movzx   esi, word ptr [rax]
.text:0000000000011B4E                 lea     rdx, [rsp+68h+var_48]
.text:0000000000011B53                 call    cs:KeAcquireInStackQueuedSpinLock
.text:0000000000011B59                 lea     ebp, [r12+1]
.text:0000000000011B5E                 xchg    ax, ax
.text:0000000000011B60
.text:0000000000011B60 loc_11B60:                              ; CODE XREF: sub_11AF0+C8↓j
.text:0000000000011B60                 cmp     bx, 0Ah
.text:0000000000011B64                 ja      short loc_11BBC
.text:0000000000011B66                 movzx   eax, bx
.text:0000000000011B69                 lea     rcx, [rsp+68h+var_30]
.text:0000000000011B6E                 mov     [rsp+68h+var_20], r12d
.text:0000000000011B73                 mov     [rsp+68h+var_2C], eax
.text:0000000000011B77                 movzx   eax, si
.text:0000000000011B7A                 mov     [rsp+68h+var_1C], r12d
.text:0000000000011B7F                 mov     [rsp+68h+var_18], r12d
.text:0000000000011B84                 mov     [rsp+68h+var_14], r12d
.text:0000000000011B89                 mov     [rsp+68h+var_30], 113Eh
.text:0000000000011B91                 mov     [rsp+68h+var_24], eax
.text:0000000000011B95                 mov     [rsp+68h+var_28], r12d
.text:0000000000011B9A                 call    sub_11112
.text:0000000000011B9F                 test    word ptr [rsp+68h+var_30], 0FF00h
.text:0000000000011BA6                 jnz     short loc_11BB2
.text:0000000000011BA8                 cmp     word ptr [rsp+68h+var_20], 0Bh
.text:0000000000011BAE                 cmovz   di, bp
.text:0000000000011BB2
.text:0000000000011BB2 loc_11BB2:                              ; CODE XREF: sub_11AF0+B6↑j
.text:0000000000011BB2                 inc     bx
.text:0000000000011BB5                 test    di, di
.text:0000000000011BB8                 jz      short loc_11B60
.text:0000000000011BBA                 jmp     short loc_11BC1
.text:0000000000011BBC ; ---------------------------------------------------------------------------
.text:0000000000011BBC
.text:0000000000011BBC loc_11BBC:                              ; CODE XREF: sub_11AF0+74↑j
.text:0000000000011BBC                 test    di, di
.text:0000000000011BBF                 jz      short loc_11C30
.text:0000000000011BC1
.text:0000000000011BC1 loc_11BC1:                              ; CODE XREF: sub_11AF0+CA↑j
.text:0000000000011BC1                 movzx   edi, bx
.text:0000000000011BC4                 lea     rcx, [rsp+68h+var_30]
.text:0000000000011BC9                 movzx   ebx, si
.text:0000000000011BCC                 add     edi, 0FFFFFFFFh
.text:0000000000011BCF                 mov     [rsp+68h+var_1C], r12d
.text:0000000000011BD4                 mov     [rsp+68h+var_18], r12d
.text:0000000000011BD9                 mov     [rsp+68h+var_14], r12d
.text:0000000000011BDE                 mov     [rsp+68h+var_30], 113Eh
.text:0000000000011BE6                 mov     [rsp+68h+var_28], 3
.text:0000000000011BEE                 mov     [rsp+68h+var_2C], edi
.text:0000000000011BF2                 mov     [rsp+68h+var_20], 0Bh
.text:0000000000011BFA                 mov     [rsp+68h+var_24], ebx
.text:0000000000011BFE                 call    sub_11112
.text:0000000000011C03                 lea     rcx, [rsp+68h+var_30]
.text:0000000000011C08                 mov     [rsp+68h+var_1C], r12d
.text:0000000000011C0D                 mov     [rsp+68h+var_18], r12d
.text:0000000000011C12                 mov     [rsp+68h+var_14], r12d
.text:0000000000011C17                 mov     [rsp+68h+var_30], 113Fh
.text:0000000000011C1F                 mov     [rsp+68h+var_2C], edi
.text:0000000000011C23                 mov     [rsp+68h+var_28], ebp
.text:0000000000011C27                 mov     [rsp+68h+var_24], ebx
.text:0000000000011C2B                 call    sub_11112
.text:0000000000011C30
.text:0000000000011C30 loc_11C30:                              ; CODE XREF: sub_11AF0+CF↑j
.text:0000000000011C30                 lea     rcx, [rsp+68h+var_48]
.text:0000000000011C35                 call    cs:KeReleaseInStackQueuedSpinLock
.text:0000000000011C3B                 xor     eax, eax
.text:0000000000011C3D                 jmp     short loc_11C44
.text:0000000000011C3F ; ---------------------------------------------------------------------------
.text:0000000000011C3F
.text:0000000000011C3F loc_11C3F:                              ; CODE XREF: sub_11AF0+3B↑j
.text:0000000000011C3F                                         ; sub_11AF0+45↑j
.text:0000000000011C3F                 mov     eax, 0C000000Dh
.text:0000000000011C44
.text:0000000000011C44 loc_11C44:                              ; CODE XREF: sub_11AF0+14D↑j
.text:0000000000011C44                 mov     r12, [rsp+68h+var_8]
.text:0000000000011C49                 mov     rdi, [rsp+68h+arg_18]
.text:0000000000011C51                 mov     rsi, [rsp+68h+arg_10]
.text:0000000000011C59                 mov     rbp, [rsp+68h+arg_8]
.text:0000000000011C5E                 mov     rbx, [rsp+68h+arg_0]
.text:0000000000011C63                 add     rsp, 68h
.text:0000000000011C67                 retn
.text:0000000000011C67 sub_11AF0       endp
.text:0000000000011C67
