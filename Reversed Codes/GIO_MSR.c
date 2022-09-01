
extern DWORD ValueHigh;
extern DWORD ValueLow;
extern DWORD reg;

struct _v2{
    ULONG a1;   // 0x00
    ULONG a2;   // 0x04
    ULONG a3;   // 0x08
    ULONG a4;   // 0x0C
}

NTSTATUS GIO_MSR(PDEVICE_EXTENSION ext, PIRP Irp, PIO_STACK_LOCATION stack, ULONG IoControlCode) {

    ULONG OutputBufferLength = stack->DeviceIoControl.OutputBufferLength;
    ULONG InputBufferLength = stack->DeviceIoControl.InputBufferLength;
    struct _v2* v2 = (struct _v2*)Irp->AssociatedIrp.SystemBuffer;
    NTSTATUS status;

    if (InputBufferLength != OutputBufferLength) {
        goto Exit;
    }

    if (OutputBufferLength != 0x10){
        goto Exit;
    }

    Irp->IoStatus.Information = 0;
    reg = v2->a2;
    ValueHigh = 0x0;
    ValueLow = 0x0;
    if (!v2->a1){
        ValueLow = v2->a3;
        ValueHigh = v2->a4;
        ULONG64 val = ((ValueLow & 0xFFFF) | (ValueHigh << 16));
        __writemsr(reg, val);
        Irp->IoStatus.Information = 0x10;
        status = STATUS_SUCCESS;
        return status;
    }
    else if (v2->a1 == 0x1) {
        ULONG64 val = __readmsr(reg);
        ValueLow = val & 0xFFFF;
        val = val >> 16;
        ValueHigh = val;
        v2->a3 = ValueLow;
        v2->a4 = ValueHigh;
        Irp->IoStatus.Information = 0x0;
        status = STATUS_SUCCESS;
        return status;
    }
    

Exit:
    status = STATUS_INVALID_PARAMETER;
    return status;
}