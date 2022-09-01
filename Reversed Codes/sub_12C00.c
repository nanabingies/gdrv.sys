#include <ntddk.h>

struct _v2{
    WORD a1;    // 0x00
    WORD a2;    // 0x02
    WORD a3;    // 0x04
    WORD a4;    // 0x06
    WORD a5;    // 0x08
}

NTSTATUS sub_12C00(PDEVICE_OBJECT DeviceObject, PIRP Irp, PIO_STACK_LOCATION stack) {

    UNREFERENCED_PARAMTER(DeviceObject);

    DbgPrint("Entry IoctlSMBUSCmd");

    ULONG InputBufferLength = stack->DeviceIoControl.InputBufferLength;
    ULONG OutputBufferLength = stack->DeviceIoControl.OutputBufferLength;
    if (InputBufferLength != 0xC && OutputBufferLength != 0x1){
        DbgPrint("Size check error!!");
        return STATUS_INVALID_PARAMETER;
    }

    struct _v2* v2 = Irp->AssociatedIrp.SystemBuffer;
    ULONG ret = 0x0;
    DbgPrint("ptr[0]=0x%x,ptr[1]=0x%x,ptr[2]=0x%x,ptr[3]=0x%x,ptr[4]=0x%x,ptr[5]=0x%x",
        v2->a1, v2->a2, v2->a3, v2->a4, v2->a5);
    if (v2->a1 == 0){
        ret = sub_129A0(&v2);
    }
    else if (v2->a1 == 0x1){
        ret = sub_12AC0(&v2);
    }
    DbgPrint("Ret Value=0x%x", ret);
    *v2 = ret;

    Irp->IoStatus.Information = 0x1;
    return STATUS_SUCCESS;
}