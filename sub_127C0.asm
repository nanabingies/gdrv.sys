.text:00000000000127C0
.text:00000000000127C0 ; =============== S U B R O U T I N E =======================================
.text:00000000000127C0
.text:00000000000127C0
.text:00000000000127C0 ; __int64 __fastcall sub_127C0(__int64, __int64, __int64)
.text:00000000000127C0 sub_127C0       proc near               ; CODE XREF: sub_12D10+366↓p
.text:00000000000127C0
.text:00000000000127C0 var_10          = qword ptr -10h
.text:00000000000127C0 var_8           = qword ptr -8
.text:00000000000127C0
.text:00000000000127C0                 sub     rsp, 38h
.text:00000000000127C4                 mov     eax, [r8+10h]
.text:00000000000127C8                 mov     [rsp+38h+var_8], rbx
.text:00000000000127CD                 xor     ebx, ebx
.text:00000000000127CF                 cmp     eax, 4
.text:00000000000127D2                 mov     [rsp+38h+var_10], rdi
.text:00000000000127D7                 mov     rdi, [rdx+18h]
.text:00000000000127DB                 mov     [rdx+38h], rbx
.text:00000000000127DF                 jnb     short loc_12801
.text:00000000000127E1                 lea     rcx, aFreePhysMemIns ; "(FREE_PHYS_MEM) Insufficient input or o"...
.text:00000000000127E8                 call    DbgPrint
.text:00000000000127ED                 mov     eax, 0C000009Ah
.text:00000000000127F2                 mov     rdi, [rsp+38h+var_10]
.text:00000000000127F7                 mov     rbx, [rsp+38h+var_8]
.text:00000000000127FC                 add     rsp, 38h
.text:0000000000012800                 retn
.text:0000000000012801 ; ---------------------------------------------------------------------------
.text:0000000000012801
.text:0000000000012801 loc_12801:                              ; CODE XREF: sub_127C0+1F↑j
.text:0000000000012801                 mov     rdi, [rdi]
.text:0000000000012804                 mov     rcx, rdi
.text:0000000000012807                 call    cs:MmIsAddressValid
.text:000000000001280D                 lea     rcx, aValidDwhandleX ; "Valid(dwHandle)=%x"
.text:0000000000012814                 movzx   edx, al
.text:0000000000012817                 call    DbgPrint
.text:000000000001281C                 mov     rcx, rdi
.text:000000000001281F                 call    cs:MmIsAddressValid
.text:0000000000012825                 test    al, al
.text:0000000000012827                 jz      short loc_12843
.text:0000000000012829                 mov     rcx, rdi
.text:000000000001282C                 call    cs:MmFreeContiguousMemory
.text:0000000000012832                 mov     eax, ebx
.text:0000000000012834                 mov     rdi, [rsp+38h+var_10]
.text:0000000000012839                 mov     rbx, [rsp+38h+var_8]
.text:000000000001283E                 add     rsp, 38h
.text:0000000000012842                 retn
.text:0000000000012843 ; ---------------------------------------------------------------------------
.text:0000000000012843
.text:0000000000012843 loc_12843:                              ; CODE XREF: sub_127C0+67↑j
.text:0000000000012843                 mov     rdi, [rsp+38h+var_10]
.text:0000000000012848                 mov     ebx, 0C000000Dh
.text:000000000001284D                 mov     eax, ebx
.text:000000000001284F                 mov     rbx, [rsp+38h+var_8]
.text:0000000000012854                 add     rsp, 38h
.text:0000000000012858                 retn
.text:0000000000012858 sub_127C0       endp
.text:0000000000012858
.text:0000000000012858 ; ---------------------------------------------------------------------------
