.text:0000000000012D10
.text:0000000000012D10 ; =============== S U B R O U T I N E =======================================
.text:0000000000012D10
.text:0000000000012D10
.text:0000000000012D10 ; __int64 __fastcall sub_12D10(__int64, __int64)
.text:0000000000012D10 sub_12D10       proc near               ; DATA XREF: DriverEntry+BD↓o
.text:0000000000012D10
.text:0000000000012D10 var_28          = qword ptr -28h
.text:0000000000012D10 var_18          = qword ptr -18h
.text:0000000000012D10 var_10          = qword ptr -10h
.text:0000000000012D10 var_8           = qword ptr -8
.text:0000000000012D10 arg_0           = qword ptr  8
.text:0000000000012D10 arg_8           = qword ptr  10h
.text:0000000000012D10 arg_10          = qword ptr  18h
.text:0000000000012D10 arg_18          = qword ptr  20h
.text:0000000000012D10
.text:0000000000012D10                 mov     rax, rsp
.text:0000000000012D13                 sub     rsp, 48h
.text:0000000000012D17                 mov     [rax+8], rbx
.text:0000000000012D1B                 mov     [rax+10h], rbp
.text:0000000000012D1F                 mov     [rax+18h], rsi
.text:0000000000012D23                 mov     [rax+20h], rdi
.text:0000000000012D27                 mov     rdi, [rdx+0B8h] ; # CurrentStackLocation
.text:0000000000012D2E                 mov     [rax-8], r12
.text:0000000000012D32                 mov     qword ptr [rdx+38h], 0 ; # IoStatusBlock.Information
.text:0000000000012D3A                 mov     r12, [rcx+40h]  ; # DeviceObject->ExtensionSize
.text:0000000000012D3E                 mov     [rax-10h], r13
.text:0000000000012D42                 mov     r13, [rdx+18h]  ; # AssociatedIrp->SystemBuffer
.text:0000000000012D46                 mov     [rax-18h], r14
.text:0000000000012D4A                 mov     al, [rdi]       ; # MajorFunction
.text:0000000000012D4C                 test    al, al
.text:0000000000012D4E                 mov     r14d, [rdi+10h] ; # InputBufferLength
.text:0000000000012D52                 mov     rbp, rcx
.text:0000000000012D55                 mov     ecx, [rdi+8]    ; # OutputBufferLength
.text:0000000000012D58                 mov     rsi, rdx
.text:0000000000012D5B                 mov     ebx, 0C0000002h
.text:0000000000012D60                 jz      loc_1312D
.text:0000000000012D66                 cmp     al, 2
.text:0000000000012D68                 jz      loc_1312D
.text:0000000000012D6E                 cmp     al, 0Eh
.text:0000000000012D70                 jnz     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012D76                 mov     r8d, [rdi+18h]  ; # IoControlCode
.text:0000000000012D7A                 cmp     r8d, 0C3502800h
.text:0000000000012D81                 ja      loc_12FF4
.text:0000000000012D87                 cmp     r8d, 0C3502800h
.text:0000000000012D8E                 jz      loc_12FC3
.text:0000000000012D94                 cmp     r8d, 0C3500E68h
.text:0000000000012D9B                 ja      loc_12E63
.text:0000000000012DA1                 cmp     r8d, 0C3500E68h
.text:0000000000012DA8                 jz      loc_12E51
.text:0000000000012DAE                 add     r8d, 3CAFF1B0h  ; switch 21 cases
.text:0000000000012DB5                 cmp     r8d, 14h
.text:0000000000012DB9                 ja      def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012DBF                 lea     rdx, cs:10000h
.text:0000000000012DC6                 mov     ecx, ds:(jpt_12DD1 - 10000h)[rdx+r8*4]
.text:0000000000012DCE                 add     rcx, rdx
.text:0000000000012DD1                 jmp     rcx             ; switch jump
.text:0000000000012DD3 ; ---------------------------------------------------------------------------
.text:0000000000012DD3
.text:0000000000012DD3 loc_12DD3:                              ; CODE XREF: sub_12D10+C1↑j
.text:0000000000012DD3                                         ; DATA XREF: .text:jpt_12DD1↓o
.text:0000000000012DD3                 mov     r8, rdi         ; jumptable 0000000000012DD1 case -1018163628
.text:0000000000012DD6                 mov     rdx, rsi
.text:0000000000012DD9                 mov     rcx, rbp
.text:0000000000012DDC                 call    sub_11DD0
.text:0000000000012DE1                 mov     ebx, eax
.text:0000000000012DE3                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012DE8 ; ---------------------------------------------------------------------------
.text:0000000000012DE8
.text:0000000000012DE8 loc_12DE8:                              ; CODE XREF: sub_12D10+C1↑j
.text:0000000000012DE8                                         ; DATA XREF: .text:jpt_12DD1↓o
.text:0000000000012DE8                 mov     r8, rdi         ; jumptable 0000000000012DD1 case -1018163624
.text:0000000000012DEB                 mov     rdx, rsi
.text:0000000000012DEE                 mov     rcx, rbp
.text:0000000000012DF1                 call    sub_11FB0
.text:0000000000012DF6                 mov     ebx, eax
.text:0000000000012DF8                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012DFD ; ---------------------------------------------------------------------------
.text:0000000000012DFD
.text:0000000000012DFD loc_12DFD:                              ; CODE XREF: sub_12D10+C1↑j
.text:0000000000012DFD                                         ; DATA XREF: .text:jpt_12DD1↓o
.text:0000000000012DFD                 mov     r8, rdi         ; jumptable 0000000000012DD1 case -1018163620
.text:0000000000012E00                 mov     rdx, rsi
.text:0000000000012E03                 mov     rcx, rbp
.text:0000000000012E06                 call    sub_121B0
.text:0000000000012E0B                 mov     ebx, eax
.text:0000000000012E0D                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012E12 ; ---------------------------------------------------------------------------
.text:0000000000012E12
.text:0000000000012E12 loc_12E12:                              ; CODE XREF: sub_12D10+C1↑j
.text:0000000000012E12                                         ; DATA XREF: .text:jpt_12DD1↓o
.text:0000000000012E12                 mov     r8, rdi         ; jumptable 0000000000012DD1 case -1018163616
.text:0000000000012E15                 mov     rdx, rsi
.text:0000000000012E18                 mov     rcx, rbp
.text:0000000000012E1B                 call    sub_122D0
.text:0000000000012E20                 mov     ebx, eax
.text:0000000000012E22                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012E27 ; ---------------------------------------------------------------------------
.text:0000000000012E27
.text:0000000000012E27 loc_12E27:                              ; CODE XREF: sub_12D10+C1↑j
.text:0000000000012E27                                         ; DATA XREF: .text:jpt_12DD1↓o
.text:0000000000012E27                 mov     r8, rdi         ; jumptable 0000000000012DD1 case -1018163612
.text:0000000000012E2A                 mov     rdx, rsi
.text:0000000000012E2D                 mov     rcx, rbp
.text:0000000000012E30                 call    sub_123D0
.text:0000000000012E35                 mov     ebx, eax
.text:0000000000012E37                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012E3C ; ---------------------------------------------------------------------------
.text:0000000000012E3C
.text:0000000000012E3C loc_12E3C:                              ; CODE XREF: sub_12D10+C1↑j
.text:0000000000012E3C                                         ; DATA XREF: .text:jpt_12DD1↓o
.text:0000000000012E3C                 mov     r8, rdi         ; jumptable 0000000000012DD1 case -1018163632
.text:0000000000012E3F                 mov     rdx, rsi
.text:0000000000012E42                 mov     rcx, rbp
.text:0000000000012E45                 call    sub_124C0
.text:0000000000012E4A                 mov     ebx, eax
.text:0000000000012E4C                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012E51 ; ---------------------------------------------------------------------------
.text:0000000000012E51
.text:0000000000012E51 loc_12E51:                              ; CODE XREF: sub_12D10+98↑j
.text:0000000000012E51                 mov     r8, rdi
.text:0000000000012E54                 mov     rcx, rbp
.text:0000000000012E57                 call    sub_11C70
.text:0000000000012E5C                 mov     ebx, eax
.text:0000000000012E5E                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012E63 ; ---------------------------------------------------------------------------
.text:0000000000012E63
.text:0000000000012E63 loc_12E63:                              ; CODE XREF: sub_12D10+8B↑j
.text:0000000000012E63                 cmp     r8d, 0C3502004h
.text:0000000000012E6A                 ja      loc_12F43
.text:0000000000012E70                 cmp     r8d, 0C3502004h
.text:0000000000012E77                 jz      short loc_12EEC
.text:0000000000012E79                 cmp     r8d, 0C3500E6Ch
.text:0000000000012E80                 jz      short loc_12EDA
.text:0000000000012E82                 cmp     r8d, 0C3500E70h
.text:0000000000012E89                 jz      short loc_12EAD
.text:0000000000012E8B                 cmp     r8d, 0C3502000h
.text:0000000000012E92                 jnz     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012E98                 mov     r9d, r8d
.text:0000000000012E9B                 mov     rcx, r12
.text:0000000000012E9E                 mov     r8, rdi
.text:0000000000012EA1                 call    sub_11570
.text:0000000000012EA6                 mov     ebx, eax
.text:0000000000012EA8                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012EAD ; ---------------------------------------------------------------------------
.text:0000000000012EAD
.text:0000000000012EAD loc_12EAD:                              ; CODE XREF: sub_12D10+179↑j
.text:0000000000012EAD                 lea     rcx, aInSmbusControl ; "In SMBUS Control"
.text:0000000000012EB4                 call    DbgPrint
.text:0000000000012EB9                 mov     r8, rdi
.text:0000000000012EBC                 mov     rdx, rsi
.text:0000000000012EBF                 mov     rcx, rbp
.text:0000000000012EC2                 call    sub_12C00
.text:0000000000012EC7                 lea     rcx, aExitSmbusContr ; "Exit SMBUS Control"
.text:0000000000012ECE                 mov     ebx, eax
.text:0000000000012ED0                 call    DbgPrint
.text:0000000000012ED5                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012EDA ; ---------------------------------------------------------------------------
.text:0000000000012EDA
.text:0000000000012EDA loc_12EDA:                              ; CODE XREF: sub_12D10+170↑j
.text:0000000000012EDA                 mov     r8, rdi
.text:0000000000012EDD                 mov     rcx, rbp
.text:0000000000012EE0                 call    sub_11AF0
.text:0000000000012EE5                 mov     ebx, eax
.text:0000000000012EE7                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012EEC ; ---------------------------------------------------------------------------
.text:0000000000012EEC
.text:0000000000012EEC loc_12EEC:                              ; CODE XREF: sub_12D10+167↑j
.text:0000000000012EEC                 mov     r9d, ecx
.text:0000000000012EEF                 mov     r8d, r14d
.text:0000000000012EF2                 mov     rdx, r13
.text:0000000000012EF5                 mov     rcx, rbp
.text:0000000000012EF8                 call    map_physical    ; # map_physical(DeviceObject, SystemBuffer, InputBufferLength, OutputBufferLength)
.text:0000000000012EF8                                         ;
.text:0000000000012EFD                 test    eax, eax
.text:0000000000012EFF                 mov     ebx, eax
.text:0000000000012F01                 js      short loc_12F2D
.text:0000000000012F03                 lea     rcx, aSizeofPvoidD ; "Sizeof(PVOID)=%d"
.text:0000000000012F0A                 mov     edx, 8
.text:0000000000012F0F                 call    DbgPrint
.text:0000000000012F14                 lea     rcx, aMapmemSysMemor ; "MAPMEM.SYS: memory successfully mapped"...
.text:0000000000012F1B                 mov     qword ptr [rsi+38h], 8
.text:0000000000012F23                 call    DbgPrint
.text:0000000000012F28                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012F2D ; ---------------------------------------------------------------------------
.text:0000000000012F2D
.text:0000000000012F2D loc_12F2D:                              ; CODE XREF: sub_12D10+1F1↑j
.text:0000000000012F2D                 lea     rcx, aMapmemSysMemor_0 ; "MAPMEM.SYS: memory map failed :(\n"
.text:0000000000012F34                 mov     ebx, 0C000000Dh
.text:0000000000012F39                 call    DbgPrint
.text:0000000000012F3E                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012F43 ; ---------------------------------------------------------------------------
.text:0000000000012F43
.text:0000000000012F43 loc_12F43:                              ; CODE XREF: sub_12D10+15A↑j
.text:0000000000012F43                 cmp     r8d, 0C3502008h
.text:0000000000012F4A                 jz      short loc_12F6E
.text:0000000000012F4C                 cmp     r8d, 0C3502580h
.text:0000000000012F53                 jnz     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012F59                 mov     r9d, r8d
.text:0000000000012F5C                 mov     rcx, r12
.text:0000000000012F5F                 mov     r8, rdi
.text:0000000000012F62                 call    GIO_MSR
.text:0000000000012F67                 mov     ebx, eax
.text:0000000000012F69                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012F6E ; ---------------------------------------------------------------------------
.text:0000000000012F6E
.text:0000000000012F6E loc_12F6E:                              ; CODE XREF: sub_12D10+23A↑j
.text:0000000000012F6E                 lea     rcx, aInputbufferlen ; "InputBufferLength=%d,szieof(PVOID)=%d"
.text:0000000000012F75                 mov     r8d, 8
.text:0000000000012F7B                 mov     edx, r14d
.text:0000000000012F7E                 call    DbgPrint
.text:0000000000012F83                 cmp     r14d, 8
.text:0000000000012F87                 jb      short loc_12FAD
.text:0000000000012F89                 mov     rdx, [r13+0]
.text:0000000000012F8D                 mov     rcx, 0FFFFFFFFFFFFFFFFh
.text:0000000000012F94                 call    cs:ZwUnmapViewOfSection
.text:0000000000012F9A                 lea     rcx, aMapmemSysMemor_1 ; "MAPMEM.SYS: memory successfully unmappe"...
.text:0000000000012FA1                 mov     ebx, eax
.text:0000000000012FA3                 call    DbgPrint
.text:0000000000012FA8                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012FAD ; ---------------------------------------------------------------------------
.text:0000000000012FAD
.text:0000000000012FAD loc_12FAD:                              ; CODE XREF: sub_12D10+277↑j
.text:0000000000012FAD                 lea     rcx, aMapmemSysZwunm ; "MAPMEM.SYS: ZwUnmapViewOfSection failed"...
.text:0000000000012FB4                 mov     ebx, 0C000009Ah
.text:0000000000012FB9                 call    DbgPrint
.text:0000000000012FBE                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012FC3 ; ---------------------------------------------------------------------------
.text:0000000000012FC3
.text:0000000000012FC3 loc_12FC3:                              ; CODE XREF: sub_12D10+7E↑j
.text:0000000000012FC3                 lea     rcx, aInAllocFunctio ; "In Alloc function!!"
.text:0000000000012FCA                 call    DbgPrint
.text:0000000000012FCF                 mov     r9d, [rdi+18h]
.text:0000000000012FD3                 mov     r8, rdi
.text:0000000000012FD6                 mov     rdx, rsi
.text:0000000000012FD9                 mov     rcx, r12
.text:0000000000012FDC                 call    sub_12710
.text:0000000000012FE1                 lea     rcx, aExitAllocFunct ; "Exit Alloc function!!"
.text:0000000000012FE8                 mov     ebx, eax
.text:0000000000012FEA                 call    DbgPrint
.text:0000000000012FEF                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000012FF4 ; ---------------------------------------------------------------------------
.text:0000000000012FF4
.text:0000000000012FF4 loc_12FF4:                              ; CODE XREF: sub_12D10+71↑j
.text:0000000000012FF4                 cmp     r8d, 0C3506404h
.text:0000000000012FFB                 ja      loc_1323F
.text:0000000000013001                 cmp     r8d, 0C3506404h
.text:0000000000013008                 jz      loc_13193
.text:000000000001300E                 cmp     r8d, 0C3502840h
.text:0000000000013015                 ja      loc_13181
.text:000000000001301B                 cmp     r8d, 0C3502840h
.text:0000000000013022                 jz      short loc_13082
.text:0000000000013024                 cmp     r8d, 0C3502804h
.text:000000000001302B                 jz      short loc_1306D
.text:000000000001302D                 cmp     r8d, 0C3502808h
.text:0000000000013034                 jz      short loc_13058
.text:0000000000013036                 cmp     r8d, 0C350280Ch
.text:000000000001303D                 jnz     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000013043                 mov     r9d, r8d
.text:0000000000013046                 mov     rcx, r12
.text:0000000000013049                 mov     r8, rdi
.text:000000000001304C                 call    sub_128F0
.text:0000000000013051                 mov     ebx, eax
.text:0000000000013053                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000013058 ; ---------------------------------------------------------------------------
.text:0000000000013058
.text:0000000000013058 loc_13058:                              ; CODE XREF: sub_12D10+324↑j
.text:0000000000013058                 mov     r9d, r8d
.text:000000000001305B                 mov     rcx, r12
.text:000000000001305E                 mov     r8, rdi
.text:0000000000013061                 call    GIO_memcpy
.text:0000000000013066                 mov     ebx, eax
.text:0000000000013068                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:000000000001306D ; ---------------------------------------------------------------------------
.text:000000000001306D
.text:000000000001306D loc_1306D:                              ; CODE XREF: sub_12D10+31B↑j
.text:000000000001306D                 mov     r9d, r8d
.text:0000000000013070                 mov     rcx, r12
.text:0000000000013073                 mov     r8, rdi
.text:0000000000013076                 call    sub_127C0
.text:000000000001307B                 mov     ebx, eax
.text:000000000001307D                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000013082 ; ---------------------------------------------------------------------------
.text:0000000000013082
.text:0000000000013082 loc_13082:                              ; CODE XREF: sub_12D10+312↑j
.text:0000000000013082                 cmp     r14d, 10h
.text:0000000000013086                 jnz     loc_1317A
.text:000000000001308C                 cmp     ecx, r14d
.text:000000000001308F                 jnz     loc_1317A
.text:0000000000013095                 mov     ebp, [r13+8]
.text:0000000000013099                 mov     ecx, [r13+0]
.text:000000000001309D                 xor     r8d, r8d
.text:00000000000130A0                 mov     rdx, rbp
.text:00000000000130A3                 call    cs:MmMapIoSpace
.text:00000000000130A9                 test    rax, rax
.text:00000000000130AC                 mov     rdi, rax
.text:00000000000130AF                 jz      loc_13173
.text:00000000000130B5                 xor     r9d, r9d
.text:00000000000130B8                 xor     r8d, r8d
.text:00000000000130BB                 mov     edx, ebp
.text:00000000000130BD                 mov     rcx, rax
.text:00000000000130C0                 mov     [rsp+48h+var_28], 0
.text:00000000000130C9                 call    cs:IoAllocateMdl
.text:00000000000130CF                 test    rax, rax
.text:00000000000130D2                 mov     r14, rax
.text:00000000000130D5                 jz      loc_13167
.text:00000000000130DB                 mov     rcx, rax
.text:00000000000130DE                 call    cs:MmBuildMdlForNonPagedPool
.text:00000000000130E4                 mov     dl, 1
.text:00000000000130E6                 mov     rcx, r14
.text:00000000000130E9                 call    cs:MmMapLockedPages
.text:00000000000130EF                 mov     edx, 28h ; '('
.text:00000000000130F4                 xor     ecx, ecx
.text:00000000000130F6                 mov     r8d, 206B6444h
.text:00000000000130FC                 mov     rbx, rax
.text:00000000000130FF                 call    cs:ExAllocatePoolWithTag
.text:0000000000013105                 mov     [rax+8], r14
.text:0000000000013109                 mov     [rax+10h], rdi
.text:000000000001310D                 mov     [rax+18h], rbx
.text:0000000000013111                 mov     [rax+20h], ebp
.text:0000000000013114                 mov     rcx, [r12+18h]
.text:0000000000013119                 mov     [rax], rcx
.text:000000000001311C                 mov     [r12+18h], rax
.text:0000000000013121                 mov     [r13+0], rbx
.text:0000000000013125                 mov     qword ptr [rsi+38h], 10h
.text:000000000001312D
.text:000000000001312D loc_1312D:                              ; CODE XREF: sub_12D10+50↑j
.text:000000000001312D                                         ; sub_12D10+58↑j ...
.text:000000000001312D                 xor     ebx, ebx
.text:000000000001312F
.text:000000000001312F def_12DD1:                              ; CODE XREF: sub_12D10+60↑j
.text:000000000001312F                                         ; sub_12D10+A9↑j ...
.text:000000000001312F                 xor     edx, edx        ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000013131                 mov     rcx, rsi
.text:0000000000013134                 mov     [rsi+30h], ebx
.text:0000000000013137                 call    cs:IofCompleteRequest
.text:000000000001313D                 mov     r14, [rsp+48h+var_18]
.text:0000000000013142                 mov     r13, [rsp+48h+var_10]
.text:0000000000013147                 mov     r12, [rsp+48h+var_8]
.text:000000000001314C                 mov     rdi, [rsp+48h+arg_18]
.text:0000000000013151                 mov     rsi, [rsp+48h+arg_10]
.text:0000000000013156                 mov     rbp, [rsp+48h+arg_8]
.text:000000000001315B                 mov     eax, ebx
.text:000000000001315D                 mov     rbx, [rsp+48h+arg_0]
.text:0000000000013162                 add     rsp, 48h
.text:0000000000013166                 retn
.text:0000000000013167 ; ---------------------------------------------------------------------------
.text:0000000000013167
.text:0000000000013167 loc_13167:                              ; CODE XREF: sub_12D10+3C5↑j
.text:0000000000013167                 mov     rdx, rbp
.text:000000000001316A                 mov     rcx, rdi
.text:000000000001316D                 call    cs:MmUnmapIoSpace
.text:0000000000013173
.text:0000000000013173 loc_13173:                              ; CODE XREF: sub_12D10+39F↑j
.text:0000000000013173                 mov     ebx, 0C000009Ah
.text:0000000000013178                 jmp     short def_12DD1 ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:000000000001317A ; ---------------------------------------------------------------------------
.text:000000000001317A
.text:000000000001317A loc_1317A:                              ; CODE XREF: sub_12D10+376↑j
.text:000000000001317A                                         ; sub_12D10+37F↑j ...
.text:000000000001317A                 mov     ebx, 0C000000Dh
.text:000000000001317F                 jmp     short def_12DD1 ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000013181 ; ---------------------------------------------------------------------------
.text:0000000000013181
.text:0000000000013181 loc_13181:                              ; CODE XREF: sub_12D10+305↑j
.text:0000000000013181                 cmp     r8d, 0C3502844h
.text:0000000000013188                 jz      short loc_131A2
.text:000000000001318A                 cmp     r8d, 0C3506400h
.text:0000000000013191                 jnz     short def_12DD1 ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000013193
.text:0000000000013193 loc_13193:                              ; CODE XREF: sub_12D10+2F8↑j
.text:0000000000013193                                         ; sub_12D10+548↓j
.text:0000000000013193                 mov     rdx, rdi
.text:0000000000013196                 mov     rcx, rsi
.text:0000000000013199                 call    sub_11270
.text:000000000001319E                 mov     ebx, eax
.text:00000000000131A0                 jmp     short def_12DD1 ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:00000000000131A2 ; ---------------------------------------------------------------------------
.text:00000000000131A2
.text:00000000000131A2 loc_131A2:                              ; CODE XREF: sub_12D10+478↑j
.text:00000000000131A2                 cmp     r14d, 10h
.text:00000000000131A6                 jnz     short loc_1317A
.text:00000000000131A8                 mov     dword ptr [r13+4], 0
.text:00000000000131B0                 mov     rdi, [r12+18h]
.text:00000000000131B5                 test    rdi, rdi
.text:00000000000131B8                 mov     rbp, rdi
.text:00000000000131BB                 jz      def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:00000000000131C1                 mov     rax, [r13+0]
.text:00000000000131C5
.text:00000000000131C5 loc_131C5:                              ; CODE XREF: sub_12D10+4C4↓j
.text:00000000000131C5                 cmp     [rdi+18h], rax
.text:00000000000131C9                 jz      short loc_131DB
.text:00000000000131CB                 mov     rbp, rdi
.text:00000000000131CE                 mov     rdi, [rdi]
.text:00000000000131D1                 test    rdi, rdi
.text:00000000000131D4                 jnz     short loc_131C5
.text:00000000000131D6                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:00000000000131DB ; ---------------------------------------------------------------------------
.text:00000000000131DB
.text:00000000000131DB loc_131DB:                              ; CODE XREF: sub_12D10+4B9↑j
.text:00000000000131DB                 mov     eax, [r13+8]
.text:00000000000131DF                 cmp     [rdi+20h], eax
.text:00000000000131E2                 jnz     short loc_1317A
.text:00000000000131E4                 mov     rdx, [rdi+8]
.text:00000000000131E8                 mov     rcx, [rdi+18h]
.text:00000000000131EC                 call    cs:MmUnmapLockedPages
.text:00000000000131F2                 mov     rcx, [rdi+8]
.text:00000000000131F6                 call    cs:IoFreeMdl
.text:00000000000131FC                 mov     edx, [rdi+20h]
.text:00000000000131FF                 mov     rcx, [rdi+10h]
.text:0000000000013203                 call    cs:MmUnmapIoSpace
.text:0000000000013209                 cmp     rdi, [r12+18h]
.text:000000000001320E                 jnz     short loc_13228
.text:0000000000013210                 mov     rax, [rdi]
.text:0000000000013213                 xor     edx, edx
.text:0000000000013215                 mov     rcx, rdi
.text:0000000000013218                 mov     [r12+18h], rax
.text:000000000001321D                 call    cs:ExFreePoolWithTag
.text:0000000000013223                 jmp     loc_1312D
.text:0000000000013228 ; ---------------------------------------------------------------------------
.text:0000000000013228
.text:0000000000013228 loc_13228:                              ; CODE XREF: sub_12D10+4FE↑j
.text:0000000000013228                 mov     rax, [rdi]
.text:000000000001322B                 xor     edx, edx
.text:000000000001322D                 mov     rcx, rdi
.text:0000000000013230                 mov     [rbp+0], rax
.text:0000000000013234                 call    cs:ExFreePoolWithTag
.text:000000000001323A                 jmp     loc_1312D
.text:000000000001323F ; ---------------------------------------------------------------------------
.text:000000000001323F
.text:000000000001323F loc_1323F:                              ; CODE XREF: sub_12D10+2EB↑j
.text:000000000001323F                 cmp     r8d, 0C350A448h
.text:0000000000013246                 ja      short loc_13286
.text:0000000000013248                 cmp     r8d, 0C350A448h
.text:000000000001324F                 jz      short loc_13274
.text:0000000000013251                 cmp     r8d, 0C3506408h
.text:0000000000013258                 jz      loc_13193
.text:000000000001325E                 cmp     r8d, 0C350A440h
.text:0000000000013265                 jz      short loc_13274
.text:0000000000013267                 cmp     r8d, 0C350A444h
.text:000000000001326E                 jnz     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000013274
.text:0000000000013274 loc_13274:                              ; CODE XREF: sub_12D10+53F↑j
.text:0000000000013274                                         ; sub_12D10+555↑j
.text:0000000000013274                 mov     rdx, rdi
.text:0000000000013277                 mov     rcx, rsi
.text:000000000001327A                 call    sub_11380
.text:000000000001327F                 mov     ebx, eax
.text:0000000000013281                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:0000000000013286 ; ---------------------------------------------------------------------------
.text:0000000000013286
.text:0000000000013286 loc_13286:                              ; CODE XREF: sub_12D10+536↑j
.text:0000000000013286                 cmp     r8d, 0C350E44Ch
.text:000000000001328D                 jz      short loc_132AB
.text:000000000001328F                 cmp     r8d, 0C350E454h
.text:0000000000013296                 jnz     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:000000000001329C                 mov     rcx, rbp
.text:000000000001329F                 call    sub_11A00
.text:00000000000132A4                 mov     ebx, eax
.text:00000000000132A6                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:00000000000132AB ; ---------------------------------------------------------------------------
.text:00000000000132AB
.text:00000000000132AB loc_132AB:                              ; CODE XREF: sub_12D10+57D↑j
.text:00000000000132AB                 mov     rdx, rdi
.text:00000000000132AE                 mov     rcx, rsi
.text:00000000000132B1                 call    sub_115F0
.text:00000000000132B6                 mov     ebx, eax
.text:00000000000132B8                 jmp     def_12DD1       ; jumptable 0000000000012DD1 default case, cases -1018163631--1018163629,-1018163627--1018163625,-1018163623--1018163621,-1018163619--1018163617,-1018163615--1018163613
.text:00000000000132B8 sub_12D10       endp
.text:00000000000132B8
.text:00000000000132B8 ; ---------------------------------------------------------------------------
