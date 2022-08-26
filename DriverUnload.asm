.text:00000000000114B0
.text:00000000000114B0 ; =============== S U B R O U T I N E =======================================
.text:00000000000114B0
.text:00000000000114B0
.text:00000000000114B0 DriverUnload    proc near               ; DATA XREF: DriverEntry+DE↓o
.text:00000000000114B0
.text:00000000000114B0 var_18          = byte ptr -18h
.text:00000000000114B0 arg_10          = qword ptr  18h
.text:00000000000114B0 arg_18          = qword ptr  20h
.text:00000000000114B0
.text:00000000000114B0                 sub     rsp, 38h
.text:00000000000114B4                 mov     rax, [rcx+8]    
.text:00000000000114B8                 mov     [rsp+38h+arg_10], rbx
.text:00000000000114BD                 mov     [rsp+38h+arg_18], rdi
.text:00000000000114C2                 mov     rdi, [rax+40h]  
.text:00000000000114C6                 mov     rbx, [rdi+18h]
.text:00000000000114CA                 test    rbx, rbx
.text:00000000000114CD                 jz      short loc_114D6
.text:00000000000114CF                 mov     rax, [rbx]
.text:00000000000114D2                 mov     [rdi+18h], rax
.text:00000000000114D6
.text:00000000000114D6 loc_114D6:                              ; CODE XREF: DriverUnload+1D↑j
.text:00000000000114D6                 test    rbx, rbx
.text:00000000000114D9                 jz      short loc_11525
.text:00000000000114DB                 xchg    ax, ax
.text:00000000000114DD                 db      66h, 66h
.text:00000000000114DD                 xchg    ax, ax
.text:00000000000114E0
.text:00000000000114E0 loc_114E0:                              ; CODE XREF: DriverUnload+73↓j
.text:00000000000114E0                 mov     rdx, [rbx+8]
.text:00000000000114E4                 mov     rcx, [rbx+18h]
.text:00000000000114E8                 call    cs:MmUnmapLockedPages
.text:00000000000114EE                 mov     rcx, [rbx+8]
.text:00000000000114F2                 call    cs:IoFreeMdl
.text:00000000000114F8                 mov     edx, [rbx+20h]
.text:00000000000114FB                 mov     rcx, [rbx+10h]
.text:00000000000114FF                 call    cs:MmUnmapIoSpace
.text:0000000000011505                 xor     edx, edx
.text:0000000000011507                 mov     rcx, rbx
.text:000000000001150A                 call    cs:ExFreePoolWithTag
.text:0000000000011510                 mov     rbx, [rdi+18h]
.text:0000000000011514                 test    rbx, rbx
.text:0000000000011517                 jz      short loc_11520
.text:0000000000011519                 mov     rax, [rbx]
.text:000000000001151C                 mov     [rdi+18h], rax
.text:0000000000011520
.text:0000000000011520 loc_11520:                              ; CODE XREF: DriverUnload+67↑j
.text:0000000000011520                 test    rbx, rbx
.text:0000000000011523                 jnz     short loc_114E0
.text:0000000000011525
.text:0000000000011525 loc_11525:                              ; CODE XREF: DriverUnload+29↑j
.text:0000000000011525                 lea     rdx, aDosdevicesGio ; "\\DosDevices\\GIO"
.text:000000000001152C                 lea     rcx, [rsp+38h+var_18]
.text:0000000000011531                 call    cs:RtlInitUnicodeString
.text:0000000000011537                 lea     rcx, [rsp+38h+var_18]
.text:000000000001153C                 call    cs:IoDeleteSymbolicLink
.text:0000000000011542                 mov     rcx, [rdi+10h]
.text:0000000000011546                 call    cs:IoDeleteDevice
.text:000000000001154C                 mov     rdi, [rsp+38h+arg_18]
.text:0000000000011551                 mov     rbx, [rsp+38h+arg_10]
.text:0000000000011556                 add     rsp, 38h
.text:000000000001155A                 retn
.text:000000000001155A DriverUnload    endp
.text:000000000001155A
.text:000000000001155A ; ---------------------------------------------------------------------------
