.text:0000000000013320
.text:0000000000013320 ; =============== S U B R O U T I N E =======================================
.text:0000000000013320
.text:0000000000013320
.text:0000000000013320 DriverEntry     proc near               ; CODE XREF: start+54↓j
.text:0000000000013320
.text:0000000000013320 var_58          = dword ptr -58h
.text:0000000000013320 var_50          = byte ptr -50h
.text:0000000000013320 var_48          = qword ptr -48h
.text:0000000000013320 var_38          = qword ptr -38h
.text:0000000000013320 var_30             = byte ptr -30h
.text:0000000000013320 var_20          = byte ptr -20h
.text:0000000000013320 arg_10          = qword ptr  18h
.text:0000000000013320 arg_18          = qword ptr  20h
.text:0000000000013320
.text:0000000000013320                 sub     rsp, 78h
.text:0000000000013324                 mov     [rsp+78h+arg_18], rdi
.text:000000000001332C                 mov     rdi, rcx
.text:000000000001332F                 lea     rdx, aDeviceGio ; "\\Device\\GIO"
.text:0000000000013336                 lea     rcx, [rsp+78h+var_30]
.text:000000000001333B                 call    cs:RtlInitUnicodeString
.text:0000000000013341                 lea     r11, [rsp+78h+var_38]
.text:0000000000013346                 lea     r8, [rsp+78h+var_30]
.text:000000000001334B                 mov     [rsp+78h+var_48], r11
.text:0000000000013350                 mov     r9d, 0C350h
.text:0000000000013356                 mov     edx, 20h ; ' '
.text:000000000001335B                 mov     rcx, rdi
.text:000000000001335E                 mov     [rsp+78h+var_50], 0
.text:0000000000013363                 mov     [rsp+78h+var_58], 0
.text:000000000001336B                 call    cs:IoCreateDevice
.text:0000000000013371                 test    eax, eax
.text:0000000000013373                 js      loc_13413
.text:0000000000013379                 mov     rax, [rsp+78h+var_38]
.text:000000000001337E                 xor     edx, edx
.text:0000000000013380                 mov     [rsp+78h+arg_10], rbx
.text:0000000000013388                 mov     rcx, [rax+40h]
.text:000000000001338C                 mov     [rcx], rdx
.text:000000000001338F                 mov     [rcx+8], rdx
.text:0000000000013393                 mov     [rcx+10h], rdx
.text:0000000000013397                 mov     [rcx+18h], rdx
.text:000000000001339B                 lea     rdx, aDosdevicesGio ; "\\DosDevices\\GIO"
.text:00000000000133A2                 lea     rcx, [rsp+78h+var_20]
.text:00000000000133A7                 call    cs:RtlInitUnicodeString
.text:00000000000133AD                 lea     rdx, [rsp+78h+var_30]
.text:00000000000133B2                 lea     rcx, [rsp+78h+var_20]
.text:00000000000133B7                 call    cs:IoCreateSymbolicLink
.text:00000000000133BD                 test    eax, eax
.text:00000000000133BF                 mov     ebx, eax
.text:00000000000133C1                 jns     short loc_133D0
.text:00000000000133C3                 mov     rcx, [rsp+78h+var_38]
.text:00000000000133C8                 call    cs:IoDeleteDevice
.text:00000000000133CE                 jmp     short loc_13409
.text:00000000000133D0 ; ---------------------------------------------------------------------------
.text:00000000000133D0
.text:00000000000133D0 loc_133D0:                              ; CODE XREF: DriverEntry+A1↑j
.text:00000000000133D0                 mov     rax, [rsp+78h+var_38]
.text:00000000000133D5                 mov     rcx, [rax+40h]
.text:00000000000133D9                 mov     [rcx+10h], rax
.text:00000000000133DD                 lea     rax, sub_12D10
.text:00000000000133E4                 mov     qword ptr [rcx+18h], 0
.text:00000000000133EC                 mov     [rdi+70h], rax
.text:00000000000133F0                 mov     [rdi+80h], rax
.text:00000000000133F7                 mov     [rdi+0E0h], rax
.text:00000000000133FE                 lea     rax, DriverUnload
.text:0000000000013405                 mov     [rdi+68h], rax
.text:0000000000013409
.text:0000000000013409 loc_13409:                              ; CODE XREF: DriverEntry+AE↑j
.text:0000000000013409                 mov     eax, ebx
.text:000000000001340B                 mov     rbx, [rsp+78h+arg_10]
.text:0000000000013413
.text:0000000000013413 loc_13413:                              ; CODE XREF: DriverEntry+53↑j
.text:0000000000013413                 mov     rdi, [rsp+78h+arg_18]
.text:000000000001341B                 add     rsp, 78h
.text:000000000001341F                 retn
.text:000000000001341F DriverEntry     endp
.text:000000000001341F
.text:000000000001341F ; ---------------------------------------------------------------------------