#include <ntddk.h>

struct _v2{
    PVOID Unknown1;     // 0x00
    PVOID Address;      // 0x08
    ULONG Unknown2;     // 0x10
    SIZE_t Size;        // 0x14
    PVOID Unknown3;     // 0x18
};

NTSTATUS sub_11570(PDEVICE_EXTENSION ext, PIRP Irp, PIO_STACK_LOCATION stack, ULONG IoControlCode) {

    ULONG InputBufferLength = stack->DeviceIoControl.InputBufferLength;
    struct _v2* v2 = Irp->AssociatedIrp.SystemBuffer;
    PHYSICAL_ADDRESS PhysicalAddress;
    PhysicalAddress.QuadPart = v2->Address;

    PVOID MappedIo = MmMapIoSpace(PhysicalAddress, v2->Size, MmNonCached);
    memmove(v2->Unknown3, MappedIo, v2->Size);
    MmUnmapIoSpace(MappedIo, v2->Size);

    Irp->IoStatus.Information = InputBufferLength;
    return STATUS_SUCCESS;
}