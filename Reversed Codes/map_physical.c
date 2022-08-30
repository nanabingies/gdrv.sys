#include <ntddk.h>

struct _v2{
    ULONG Unknown1;     // 0x00
    ULONG Unknown2;     // 0x04
    PVOID Address;      // 0x08
    ULONG Unknown3;     // 0x10
    ULONG Size;         // 0x14
};

NTSTATUS map_physical(PDEVICE_OBJECT DeviceObject, PVOID buffer, ULONG InputBufferLength, ULONG OutputBufferLength) {

    UNICODE_STRING uString;
    RtlInitUnicodeString(&uString, L"\\Device\\PhysicalMemory");

    HANDLE SectionHandle;
    PVOID Object;
    NTSTATUS ntStatus;
    OBJECT_ATTRIBUTES oa = { sizeof(OBJECT_ATTRIBUTES) };
    InitializeObjectAttributes(&oa, &uString, 0x40, NULL, NULL);
    ntStatus = ZwOpenSection(&SectionHandle, 0xF001F, &oa);
    if (!NT_SUCCESS(ntStatus)){
        goto Exit;
    }

    ntStatus = ObReferenceObjectByHandle(SectionHandle, 0xF001F, NULL, NULL, (PVOID*) &Object, NULL);
    if (!NT_SUCCESS(ntStatus)){
        ZwClose(SectionHandle);
        goto Exit;
    }

    struct _v2* v2 = buffer;
    PHYSICAL_ADDRESS PhysicalAddress;
    PhysicalAddress.QuadPart = v2->Address;
    PHYSICAL TranslatedAddress;
    PHYSICAL_ADDRESS var_A0;
    var_A0.QuadPart = v2->Size;
    var_A0.QuadPart += v2->Address

    HalTranslateBusAddress(v2->Unknown1, NULL, PhysicalAddress, 0x0, &TranslatedAddress);
    HalTranslateBusAddress(v2->Unknown1, NULL, var_A0, v2->Unknown3, &var_A0);

    ULONG Size = var_A0.QuadPart - TranslatedAddress.QuadPart;
    if (Size == 0x0){
        ntStatus = STATUS_UNSUCCESSFUL;
        ZwClose(SectionHandle);
        goto Exit;
    } 

    PVOID BaseAddress = 0x0;
    LARGE_INTEGER  SectionOffset;
    SectionOffset.QuadPart = TranslatedAddress.QuadPart;
    ntStatus = ZwMapViewOfSection(SectionHandle, ZwCurrentProcess(), &BaseAddress, 0x0, Size, &SectionOffset,
        Size, ViewUnmap, NULL, 0x204);
    if (!NT_SUCCESS(ntStatus)){
        ZwClose(SectionHandle);
        goto Exit;
    }

    BaseAddress += (TranslatedAddress.QuadPart - SectionOffset.QuadPart);
    DbgPrint("VirtualAddress=0x%x", BaseAddress);

    *v2 = BaseAddress;
    ZwClose(SectionHandle);

Exit:
    return ntStatus;
}