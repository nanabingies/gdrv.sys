.text:0000000000012710
.text:0000000000012710 ; =============== S U B R O U T I N E =======================================
.text:0000000000012710
.text:0000000000012710
.text:0000000000012710 ; __int64 __fastcall sub_12710(__int64, __int64)
.text:0000000000012710 sub_12710       proc near               ; CODE XREF: sub_12D10+2CC↓p
.text:0000000000012710
.text:0000000000012710 var_18          = qword ptr -18h
.text:0000000000012710 var_10          = qword ptr -10h
.text:0000000000012710 var_8           = qword ptr -8
.text:0000000000012710 arg_10          = qword ptr  18h
.text:0000000000012710
.text:0000000000012710                 mov     [rsp+arg_10], r8
.text:0000000000012715                 sub     rsp, 38h
.text:0000000000012719                 mov     [rsp+38h+var_8], rbx
.text:000000000001271E                 mov     qword ptr [rdx+38h], 0
.text:0000000000012726                 mov     [rsp+38h+var_10], rsi
.text:000000000001272B                 mov     rsi, [rdx+18h]
.text:000000000001272F                 mov     [rsp+38h+var_18], rdi
.text:0000000000012734                 mov     rdi, rdx
.text:0000000000012737                 mov     ebx, [rsi]
.text:0000000000012739                 lea     rcx, aAllocateSizeD ; "Allocate Size=%d"
.text:0000000000012740                 mov     edx, ebx
.text:0000000000012742                 call    DbgPrint
.text:0000000000012747                 xor     r11d, r11d
.text:000000000001274A                 lea     ecx, [rbx+0FFFh]
.text:0000000000012750                 mov     dword ptr [rsp+38h+arg_10+4], r11d
.text:0000000000012755                 mov     dword ptr [rsp+38h+arg_10], 0FFFFFFh
.text:000000000001275D                 mov     rdx, [rsp+38h+arg_10]
.text:0000000000012762                 and     ecx, 0FFFFF000h
.text:0000000000012768                 call    cs:MmAllocateContiguousMemory
.text:000000000001276E                 mov     rbx, [rsp+38h+var_8]
.text:0000000000012773                 test    rax, rax
.text:0000000000012776                 mov     [rsi+8], rax
.text:000000000001277A                 jz      short loc_1279C
.text:000000000001277C                 lea     rcx, aPtpageaddrDwha ; "ptPageAddr->dwHandle VA=%x,sizeof(dwHan"...
.text:0000000000012783                 mov     r8d, 8
.text:0000000000012789                 mov     rdx, rax
.text:000000000001278C                 mov     [rsi], rax
.text:000000000001278F                 call    DbgPrint
.text:0000000000012794                 mov     qword ptr [rdi+38h], 8
.text:000000000001279C
.text:000000000001279C loc_1279C:                              ; CODE XREF: sub_12710+6A↑j
.text:000000000001279C                 mov     rdi, [rsp+38h+var_18]
.text:00000000000127A1                 mov     rsi, [rsp+38h+var_10]
.text:00000000000127A6                 xor     eax, eax
.text:00000000000127A8                 add     rsp, 38h
.text:00000000000127AC                 retn
.text:00000000000127AC sub_12710       endp
.text:00000000000127AC
.text:00000000000127AC ; ---------------------------------------------------------------------------
