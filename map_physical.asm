.text:0000000000011790
.text:0000000000011790 ; =============== S U B R O U T I N E =======================================
.text:0000000000011790
.text:0000000000011790 ; # map_physical(DeviceObject, SystemBuffer, InputBufferLength, OutputBufferLength)
.text:0000000000011790 ;
.text:0000000000011790
.text:0000000000011790 ; __int64 __fastcall map_physical(__int64, int *)
.text:0000000000011790 map_physical    proc near               ; CODE XREF: sub_12D10+1E8↓p
.text:0000000000011790
.text:0000000000011790 var_E8          = qword ptr -0E8h
.text:0000000000011790 var_E0          = qword ptr -0E0h
.text:0000000000011790 var_D8          = qword ptr -0D8h
.text:0000000000011790 var_D0          = dword ptr -0D0h
.text:0000000000011790 var_C8          = dword ptr -0C8h
.text:0000000000011790 var_C0          = dword ptr -0C0h
.text:0000000000011790 SectionHandle   = qword ptr -0B8h
.text:0000000000011790 BaseAddress     = qword ptr -0B0h
.text:0000000000011790 size            = qword ptr -0A8h
.text:0000000000011790 var_A0          = qword ptr -0A0h
.text:0000000000011790 io_space        = dword ptr -98h
.text:0000000000011790 var_90          = qword ptr -90h
.text:0000000000011790 var_88          = qword ptr -88h
.text:0000000000011790 Object          = qword ptr -80h
.text:0000000000011790 var_78          = dword ptr -78h
.text:0000000000011790 var_70          = qword ptr -70h
.text:0000000000011790 var_68          = qword ptr -68h
.text:0000000000011790 var_60          = dword ptr -60h
.text:0000000000011790 var_58          = qword ptr -58h
.text:0000000000011790 var_50          = qword ptr -50h
.text:0000000000011790 var_48          = byte ptr -48h
.text:0000000000011790 var_30          = qword ptr -30h
.text:0000000000011790 var_28          = qword ptr -28h
.text:0000000000011790 var_20          = qword ptr -20h
.text:0000000000011790 var_18          = qword ptr -18h
.text:0000000000011790 var_10          = qword ptr -10h
.text:0000000000011790 var_8           = qword ptr -8
.text:0000000000011790 arg_8           = dword ptr  10h
.text:0000000000011790
.text:0000000000011790                 mov     r11, rsp
.text:0000000000011793                 sub     rsp, 108h
.text:000000000001179A                 mov     eax, [rdx+10h]  ; # io_space
.text:000000000001179D                 mov     [r11-8], rbx
.text:00000000000117A1                 mov     rbx, [rdx+8]    ; # physical_address
.text:00000000000117A5                 mov     [r11-10h], rbp
.text:00000000000117A9                 mov     ebp, [rdx]      ; # interface_type
.text:00000000000117AB                 mov     [r11-18h], rsi
.text:00000000000117AF                 mov     [r11-28h], r12
.text:00000000000117B3                 mov     r12d, [rdx+4]   ; # bus
.text:00000000000117B7                 mov     [rsp+108h+io_space], eax
.text:00000000000117BB                 mov     [r11+10h], eax
.text:00000000000117BF                 mov     eax, [rdx+14h]  ; # size
.text:00000000000117C2                 mov     rsi, rdx
.text:00000000000117C5                 mov     [r11-30h], r13
.text:00000000000117C9                 xor     r13d, r13d
.text:00000000000117CC                 lea     rdx, aDevicePhysical ; "\\Device\\PhysicalMemory"
.text:00000000000117D3                 lea     rcx, [r11-48h]
.text:00000000000117D7                 mov     [rsp+108h+size], rax
.text:00000000000117DC                 mov     [rsp+108h+SectionHandle], r13
.text:00000000000117E1                 mov     [r11-80h], r13
.text:00000000000117E5                 call    cs:RtlInitUnicodeString
.text:00000000000117EB                 lea     rax, [rsp+108h+var_48]
.text:00000000000117F3                 lea     r8, [rsp+108h+var_78]
.text:00000000000117FB                 lea     rcx, [rsp+108h+SectionHandle]
.text:0000000000011800                 mov     edx, 0F001Fh
.text:0000000000011805                 mov     [rsp+108h+var_68], rax
.text:000000000001180D                 mov     [rsp+108h+var_78], 30h ; '0' ; # sizeof(_OBJECT_ATTRIBUTES)
.text:0000000000011818                 mov     [rsp+108h+var_70], r13
.text:0000000000011820                 mov     [rsp+108h+var_60], 40h ; '@'
.text:000000000001182B                 mov     [rsp+108h+var_58], r13
.text:0000000000011833                 mov     [rsp+108h+var_50], r13
.text:000000000001183B                 call    cs:ZwOpenSection
.text:0000000000011841                 test    eax, eax
.text:0000000000011843                 js      loc_119BD
.text:0000000000011849                 mov     rcx, [rsp+108h+SectionHandle]
.text:000000000001184E                 lea     rax, [rsp+108h+Object]
.text:0000000000011856                 xor     r9d, r9d
.text:0000000000011859                 xor     r8d, r8d
.text:000000000001185C                 mov     edx, 0F001Fh
.text:0000000000011861                 mov     [rsp+108h+var_E0], r13
.text:0000000000011866                 mov     [rsp+108h+var_E8], rax
.text:000000000001186B                 mov     [rsp+108h+var_20], rdi
.text:0000000000011873                 call    cs:ObReferenceObjectByHandle
.text:0000000000011879                 test    eax, eax
.text:000000000001187B                 mov     edi, eax
.text:000000000001187D                 js      loc_119A8
.text:0000000000011883                 mov     eax, dword ptr [rsp+108h+size]
.text:0000000000011887                 lea     r9, [rsp+108h+arg_8]
.text:000000000001188F                 mov     r8, rbx
.text:0000000000011892                 add     rax, rbx
.text:0000000000011895                 mov     edx, r12d
.text:0000000000011898                 mov     ecx, ebp
.text:000000000001189A                 mov     [rsp+108h+var_A0], rax
.text:000000000001189F                 lea     rax, [rsp+108h+var_90]
.text:00000000000118A4                 mov     [rsp+108h+var_E8], rax
.text:00000000000118A9                 call    cs:HalTranslateBusAddress
.text:00000000000118AF                 mov     r8, [rsp+108h+var_A0]
.text:00000000000118B4                 movzx   ebx, al
.text:00000000000118B7                 lea     rax, [rsp+108h+var_A0]
.text:00000000000118BC                 lea     r9, [rsp+108h+io_space]
.text:00000000000118C1                 mov     edx, r12d
.text:00000000000118C4                 mov     ecx, ebp
.text:00000000000118C6                 mov     [rsp+108h+var_E8], rax
.text:00000000000118CB                 call    cs:HalTranslateBusAddress
.text:00000000000118D1                 test    bl, bl
.text:00000000000118D3                 jz      loc_119A3
.text:00000000000118D9                 test    al, al
.text:00000000000118DB                 jz      loc_119A3
.text:00000000000118E1                 mov     rax, [rsp+108h+var_A0]
.text:00000000000118E6                 mov     rcx, [rsp+108h+var_90]
.text:00000000000118EB                 sub     rax, rcx        ; # rcx=physical_address
.text:00000000000118EE                 test    eax, eax        ; # size
.text:00000000000118F0                 jz      loc_119A3
.text:00000000000118F6                 cmp     [rsp+108h+arg_8], r13d
.text:00000000000118FE                 mov     edx, eax
.text:0000000000011900                 mov     [rsp+108h+size], rdx
.text:0000000000011905                 jz      short loc_11914
.text:0000000000011907                 mov     eax, ecx
.text:0000000000011909                 mov     edi, r13d
.text:000000000001190C                 mov     [rsi], rax
.text:000000000001190F                 jmp     loc_119A8
.text:0000000000011914 ; ---------------------------------------------------------------------------
.text:0000000000011914
.text:0000000000011914 loc_11914:                              ; CODE XREF: map_physical+175↑j
.text:0000000000011914                 mov     [rsp+108h+var_C0], 204h
.text:000000000001191C                 mov     [rsp+108h+var_C8], r13d
.text:0000000000011921                 mov     [rsp+108h+var_D0], 1
.text:0000000000011929                 lea     rax, [rsp+108h+size]
.text:000000000001192E                 xor     r9d, r9d
.text:0000000000011931                 mov     [rsp+108h+var_88], rcx
.text:0000000000011939                 mov     rcx, [rsp+108h+SectionHandle]
.text:000000000001193E                 mov     [rsp+108h+var_D8], rax
.text:0000000000011943                 lea     rax, [rsp+108h+var_88]
.text:000000000001194B                 mov     [rsp+108h+var_E0], rax
.text:0000000000011950                 mov     [rsp+108h+var_E8], rdx
.text:0000000000011955                 lea     r8, [rsp+108h+BaseAddress]
.text:000000000001195A                 lea     rdx, [r9-1]
.text:000000000001195E                 mov     [rsp+108h+BaseAddress], r13
.text:0000000000011963                 call    cs:ZwMapViewOfSection
.text:0000000000011969                 test    eax, eax
.text:000000000001196B                 mov     edi, eax
.text:000000000001196D                 js      short loc_119A8
.text:000000000001196F                 mov     rdx, [rsp+108h+BaseAddress]
.text:0000000000011974                 mov     eax, dword ptr [rsp+108h+var_88]
.text:000000000001197B                 mov     ecx, dword ptr [rsp+108h+var_90]
.text:000000000001197F                 sub     rcx, rax
.text:0000000000011982                 add     rdx, rcx
.text:0000000000011985                 lea     rcx, aVirtualaddress ; "VirtualAddress=0x%x"
.text:000000000001198C                 mov     [rsp+108h+BaseAddress], rdx
.text:0000000000011991                 call    DbgPrint
.text:0000000000011996                 mov     r11, [rsp+108h+BaseAddress]
.text:000000000001199B                 mov     [rsi], r11
.text:000000000001199E                 mov     edi, r13d
.text:00000000000119A1                 jmp     short loc_119A8
.text:00000000000119A3 ; ---------------------------------------------------------------------------
.text:00000000000119A3
.text:00000000000119A3 loc_119A3:                              ; CODE XREF: map_physical+143↑j
.text:00000000000119A3                                         ; map_physical+14B↑j ...
.text:00000000000119A3                 mov     edi, 0C0000001h
.text:00000000000119A8
.text:00000000000119A8 loc_119A8:                              ; CODE XREF: map_physical+ED↑j
.text:00000000000119A8                                         ; map_physical+17F↑j ...
.text:00000000000119A8                 mov     rcx, [rsp+108h+SectionHandle]
.text:00000000000119AD                 call    cs:ZwClose
.text:00000000000119B3                 mov     eax, edi
.text:00000000000119B5                 mov     rdi, [rsp+108h+var_20]
.text:00000000000119BD
.text:00000000000119BD loc_119BD:                              ; CODE XREF: map_physical+B3↑j
.text:00000000000119BD                 mov     r13, [rsp+108h+var_30]
.text:00000000000119C5                 mov     r12, [rsp+108h+var_28]
.text:00000000000119CD                 mov     rsi, [rsp+108h+var_18]
.text:00000000000119D5                 mov     rbp, [rsp+108h+var_10]
.text:00000000000119DD                 mov     rbx, [rsp+108h+var_8]
.text:00000000000119E5                 add     rsp, 108h
.text:00000000000119EC                 retn
.text:00000000000119EC map_physical    endp
.text:00000000000119EC
.text:00000000000119EC ; ---------------------------------------------------------------------------
