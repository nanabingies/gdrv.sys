#include <ntddk.h>

struct _v2{
    ULONG64 Unknown1;   // 0x00
    PVOID Unknown2;     // 0x08
}

NTSTATUS sub_12710(PDEVICE_EXTENSION ext, PIRP Irp, PIO_STACK_LOCATION stack, ULONG IoControlCode){

    UNREFERENCED_PARAMETER(stack);
    UNREFERENCED_PARAMETER(IoControlCode);

    Irp->IoStatus.Information = 0;
    struct _v2 v2 = Irp->AssociatedIrp.SystemBuffer
    DbgPrint("Allocate Size=%d", v2);

    PHYSICAL_ADDRESS address;
    address.QuadPart = 0xFFFFFF;

    v2.Unknown1 += 0xFFF;
    v2.Unknown1 &= 0xFFFFF000;
    PVOID Mem = MmAllocateContiguousMemory(v2.Unknown1, address);
    if (!Mem){
        return STATUS_SUCCESS;
    }

    v2.Unknown2 = Mem;
    v2.Unknown1 = Mem;
    DbgPrint("ptPageAddr->dwHandle VA=%x,sizeof(dwHandle)=%d", Mem ,sizeof(PVOID));
    Irp->IoStatus.Information = 8;

    return STATUS_SUCCESS;
}