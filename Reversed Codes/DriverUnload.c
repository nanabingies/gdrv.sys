
struct _v2{
        PVOID Unknown1;     // 0x00
        PMDL mdl;           // 0x08
        PVOID Unknown2;     // 0x10
        PVOID BaseAddress;  // 0x18
        SIZE_T Size;        // 0x20
};

void DriverUnload(_In_ PDRIVER_OBJECT DriverObject){

    PDEVICE_OBJECT DeviceObject = DriverObject->DeviceObject;
    PDEVICE_EXTENSION ext = &DeviceObject->DeviceExtension;
    if (*(PVOID*)((PUCHAR)ext + 0x18) != 0){
        *(PVOID*)((PUCHAR)ext + 0x18) = *(PVOID*)((PUCHAR)ext + 0x18); // ???????
    }

    struct _v2* v2 = *(PVOID*)((PUCHAR)ext + 0x18);
    while (v2){
        MmUnmapLockedPages(v2->BaseAddress, v2->mdl);
        IoFreeMdl(v2->mdl);
        MmUnmapIoSpace(v2->Unknown2, v2->Size);
        ExFreePoolWithTag(v2->Unknown1, 0x0);
        v2 = *(struct _v2*)((PUCHAR)ext + 0x18);
    }

    UNICODE_STRING symLink;
    RtlInitUnicodeString(&symLink, L"\\DosDevices\\GIO");
    IoDeleteSymbolicLink(&symLink);
    IoDeleteDevice(*(PVOID*)((PUCHAR)ext + 0x10));
}