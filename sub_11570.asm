.text:0000000000011570
.text:0000000000011570 ; =============== S U B R O U T I N E =======================================
.text:0000000000011570
.text:0000000000011570
.text:0000000000011570 ; __int64 __fastcall sub_11570(__int64, __int64, __int64)
.text:0000000000011570 sub_11570       proc near               ; CODE XREF: sub_12D10+191↓p
.text:0000000000011570
.text:0000000000011570 var_20          = qword ptr -20h
.text:0000000000011570 var_18          = qword ptr -18h
.text:0000000000011570 var_10          = qword ptr -10h
.text:0000000000011570 var_8           = qword ptr -8
.text:0000000000011570
.text:0000000000011570                 sub     rsp, 48h
.text:0000000000011574                 mov     [rsp+48h+var_8], rbx
.text:0000000000011579                 mov     [rsp+48h+var_10], rbp
.text:000000000001157E                 mov     [rsp+48h+var_18], rsi
.text:0000000000011583                 mov     esi, [r8+10h]
.text:0000000000011587                 mov     rbp, rdx
.text:000000000001158A                 mov     [rsp+48h+var_20], rdi
.text:000000000001158F                 mov     rdi, [rdx+18h]
.text:0000000000011593                 xor     r8d, r8d
.text:0000000000011596                 mov     edx, [rdi+14h]
.text:0000000000011599                 mov     rcx, [rdi+8]
.text:000000000001159D                 call    cs:MmMapIoSpace
.text:00000000000115A3                 mov     r8d, [rdi+14h]
.text:00000000000115A7                 movsxd  rcx, dword ptr [rdi+18h]
.text:00000000000115AB                 mov     rdx, rax
.text:00000000000115AE                 mov     rbx, rax
.text:00000000000115B1                 call    memmove
.text:00000000000115B6                 mov     edx, [rdi+14h]
.text:00000000000115B9                 mov     rcx, rbx
.text:00000000000115BC                 call    cs:MmUnmapIoSpace
.text:00000000000115C2                 mov     rdi, [rsp+48h+var_20]
.text:00000000000115C7                 mov     rbx, [rsp+48h+var_8]
.text:00000000000115CC                 mov     [rbp+38h], rsi
.text:00000000000115D0                 mov     rsi, [rsp+48h+var_18]
.text:00000000000115D5                 mov     rbp, [rsp+48h+var_10]
.text:00000000000115DA                 xor     eax, eax
.text:00000000000115DC                 add     rsp, 48h
.text:00000000000115E0                 retn
.text:00000000000115E0 sub_11570       endp
.text:00000000000115E0
.text:00000000000115E0 ; ---------------------------------------------------------------------------
