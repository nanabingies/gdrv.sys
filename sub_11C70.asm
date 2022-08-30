.text:0000000000011C70
.text:0000000000011C70 ; =============== S U B R O U T I N E =======================================
.text:0000000000011C70
.text:0000000000011C70
.text:0000000000011C70 ; __int64 __fastcall sub_11C70(__int64, __int64, __int64)
.text:0000000000011C70 sub_11C70       proc near               ; CODE XREF: sub_12D10+147↓p
.text:0000000000011C70
.text:0000000000011C70 var_48          = byte ptr -48h
.text:0000000000011C70 var_30          = dword ptr -30h
.text:0000000000011C70 var_2C          = dword ptr -2Ch
.text:0000000000011C70 var_28          = dword ptr -28h
.text:0000000000011C70 var_24          = dword ptr -24h
.text:0000000000011C70 var_20          = dword ptr -20h
.text:0000000000011C70 var_1C          = dword ptr -1Ch
.text:0000000000011C70 var_18          = dword ptr -18h
.text:0000000000011C70 var_14          = dword ptr -14h
.text:0000000000011C70 arg_0           = qword ptr  8
.text:0000000000011C70 arg_8           = qword ptr  10h
.text:0000000000011C70 arg_10          = qword ptr  18h
.text:0000000000011C70 arg_18          = qword ptr  20h
.text:0000000000011C70
.text:0000000000011C70                 mov     rax, rsp
.text:0000000000011C73                 sub     rsp, 68h
.text:0000000000011C77                 mov     [rax+8], rbx
.text:0000000000011C7B                 mov     [rax+10h], rbp
.text:0000000000011C7F                 mov     [rax+18h], rsi
.text:0000000000011C83                 mov     rbp, rcx
.text:0000000000011C86                 mov     [rax+20h], rdi
.text:0000000000011C8A                 lea     rcx, aEnteredSmartfa_0 ; "Entered SmartFanOFF"
.text:0000000000011C91                 mov     rdi, r8
.text:0000000000011C94                 mov     rsi, rdx
.text:0000000000011C97                 xor     bx, bx
.text:0000000000011C9A                 call    DbgPrint
.text:0000000000011C9F                 cmp     dword ptr [rdi+10h], 34h ; '4'
.text:0000000000011CA3                 jnz     loc_11D99
.text:0000000000011CA9                 cmp     dword ptr [rdi+8], 34h ; '4'
.text:0000000000011CAD                 jnz     loc_11D99
.text:0000000000011CB3                 mov     rcx, [rbp+40h]
.text:0000000000011CB7                 mov     rax, [rsi+18h]
.text:0000000000011CBB                 xor     ebp, ebp
.text:0000000000011CBD                 mov     [rsi+38h], rbp
.text:0000000000011CC1                 movzx   esi, word ptr [rax]
.text:0000000000011CC4                 lea     rdx, [rsp+68h+var_48]
.text:0000000000011CC9                 call    cs:KeAcquireInStackQueuedSpinLock
.text:0000000000011CCF                 nop
.text:0000000000011CD0
.text:0000000000011CD0 loc_11CD0:                              ; CODE XREF: sub_11C70+B2↓j
.text:0000000000011CD0                 cmp     bx, 0Ah
.text:0000000000011CD4                 ja      loc_11D8A
.text:0000000000011CDA                 movzx   eax, bx
.text:0000000000011CDD                 lea     rcx, [rsp+68h+var_30]
.text:0000000000011CE2                 mov     [rsp+68h+var_20], ebp
.text:0000000000011CE6                 mov     [rsp+68h+var_2C], eax
.text:0000000000011CEA                 movzx   eax, si
.text:0000000000011CED                 mov     [rsp+68h+var_1C], ebp
.text:0000000000011CF1                 mov     [rsp+68h+var_18], ebp
.text:0000000000011CF5                 mov     [rsp+68h+var_14], ebp
.text:0000000000011CF9                 mov     [rsp+68h+var_30], 113Eh
.text:0000000000011D01                 mov     [rsp+68h+var_24], eax
.text:0000000000011D05                 mov     [rsp+68h+var_28], ebp
.text:0000000000011D09                 call    sub_11112
.text:0000000000011D0E                 test    word ptr [rsp+68h+var_30], 0FF00h
.text:0000000000011D15                 jnz     short loc_11D1F
.text:0000000000011D17                 cmp     word ptr [rsp+68h+var_20], 0Bh
.text:0000000000011D1D                 jz      short loc_11D24
.text:0000000000011D1F
.text:0000000000011D1F loc_11D1F:                              ; CODE XREF: sub_11C70+A5↑j
.text:0000000000011D1F                 inc     bx
.text:0000000000011D22                 jmp     short loc_11CD0
.text:0000000000011D24 ; ---------------------------------------------------------------------------
.text:0000000000011D24
.text:0000000000011D24 loc_11D24:                              ; CODE XREF: sub_11C70+AD↑j
.text:0000000000011D24                 movzx   edi, bx
.text:0000000000011D27                 lea     rcx, [rsp+68h+var_30]
.text:0000000000011D2C                 movzx   ebx, si
.text:0000000000011D2F                 mov     [rsp+68h+var_20], ebp
.text:0000000000011D33                 mov     [rsp+68h+var_1C], ebp
.text:0000000000011D37                 mov     [rsp+68h+var_18], ebp
.text:0000000000011D3B                 mov     [rsp+68h+var_24], ebx
.text:0000000000011D3F                 mov     [rsp+68h+var_14], ebp
.text:0000000000011D43                 mov     [rsp+68h+var_30], 113Eh
.text:0000000000011D4B                 mov     [rsp+68h+var_2C], edi
.text:0000000000011D4F                 mov     [rsp+68h+var_28], 4
.text:0000000000011D57                 call    sub_11112
.text:0000000000011D5C                 lea     rcx, [rsp+68h+var_30]
.text:0000000000011D61                 mov     [rsp+68h+var_1C], ebp
.text:0000000000011D65                 mov     [rsp+68h+var_18], ebp
.text:0000000000011D69                 mov     [rsp+68h+var_14], ebp
.text:0000000000011D6D                 mov     [rsp+68h+var_30], 113Fh
.text:0000000000011D75                 mov     [rsp+68h+var_2C], edi
.text:0000000000011D79                 mov     [rsp+68h+var_28], 1
.text:0000000000011D81                 mov     [rsp+68h+var_24], ebx
.text:0000000000011D85                 call    sub_11112
.text:0000000000011D8A
.text:0000000000011D8A loc_11D8A:                              ; CODE XREF: sub_11C70+64↑j
.text:0000000000011D8A                 lea     rcx, [rsp+68h+var_48]
.text:0000000000011D8F                 call    cs:KeReleaseInStackQueuedSpinLock
.text:0000000000011D95                 xor     eax, eax
.text:0000000000011D97                 jmp     short loc_11D9E
.text:0000000000011D99 ; ---------------------------------------------------------------------------
.text:0000000000011D99
.text:0000000000011D99 loc_11D99:                              ; CODE XREF: sub_11C70+33↑j
.text:0000000000011D99                                         ; sub_11C70+3D↑j
.text:0000000000011D99                 mov     eax, 0C000000Dh
.text:0000000000011D9E
.text:0000000000011D9E loc_11D9E:                              ; CODE XREF: sub_11C70+127↑j
.text:0000000000011D9E                 mov     rdi, [rsp+68h+arg_18]
.text:0000000000011DA6                 mov     rsi, [rsp+68h+arg_10]
.text:0000000000011DAE                 mov     rbp, [rsp+68h+arg_8]
.text:0000000000011DB3                 mov     rbx, [rsp+68h+arg_0]
.text:0000000000011DB8                 add     rsp, 68h
.text:0000000000011DBC                 retn
.text:0000000000011DBC sub_11C70       endp
.text:0000000000011DBC
.text:0000000000011DBC ; ---------------------------------------------------------------------------
