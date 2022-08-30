#include <ntddk.h>

extern KSPIN_LOCK spin_lock;

struct _v2{
    ULONG64 Unknown1;   // 0x00
    PVOID Unknown2;     // 0x08
};

struct _v3{
    ULONG var_30;       // 0x00
    ULONG var_2C;       // 0x04
    ULONG var_28;       // 0x08
    ULONG var_24;       // 0x0C
    ULONG var_20;       // 0x10
    ULONG var_1C;       // 0x14
    ULONG var_18;       // 0x18
    ULONG var_14;       // 0x1C
};

NTSTATUS sub_11C70(PDEVICE_OBJECT DeviceObject, PIRP Irp, PIO_STACK_LOCATION stack) {

    DbgPrint("Entered SmartFanOFF");
    ULONG InputBufferLength = stack->DeviceIoControl.InputBufferLength;
    ULONG OutputBufferLength = stack->DeviceIoControl.OutputBufferLength;
    KLOCK_QUEUE_HANDLE LockHandle;

    if (InputBufferLength != 0x34 && OutputBufferLength != 0x34){
        return STATUS_INVALID_PARAMETER;
    }

    struct _v2 v2 = Irp->AssociatedIrp.SystemBuffer;
    WORD si = (WORD)v2.Unknown1;
    Irp->IoStatus.Information = 0;
    KeAcquireInStackQueuedSpinLock(spin_lock, &LockHandle);
    struct _v3 v3 = { 0 };
    
    for (int i = 0; i < 0xA; i++){
        v3.var_30 = 0x113E;
        v3.var_2C = i;
        v3.var_24 = si;
        sub_11112(&v3);
        if (v3.var_30 == 0xFF00){
            if (v3.var_20 == 0xB){
                v3.var_2C = i;
                v3.var_24 = si;
                v3.var_30 = 0x113E;
                v3.var_28 = 4;
                sub_11112(&v3);

                v3.var_30 = 0x113F;
                v3.var_28 = 1;
                v3.var_2C = i;
                v3.var_24 = si;
                sub_11112(&v3);
                break;
            }
        }
    }

    KeReleaseInStackQueuedSpinLock(&LockHandle);
    return STATUS_SUCCESS;
}