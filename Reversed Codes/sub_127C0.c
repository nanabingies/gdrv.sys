
sub_127C0(PDEVICE_EXTENSION ext, PIRP Irp, PIO_STACK_LOCATION stack, ULONG IoControlCode) {

    ULONG InputBufferLength = stack->DeviceIoControl.InputBufferLength;
    Irp->IoStatus.Information = 0;
    if (InputBufferLength < 0x4) {
        DbgPrint("(FREE_PHYS_MEM) Insufficient input or output buffer");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    PVOID Buffer = Irp->AssociatedIrp.SystemBuffer;
    BOOL isValid = MmIsAddressValid(Buffer);
    DbgPrint("Valid(dwHandle)=%x", isValid);
    if (!isValid) {
        return STATUS_INVALID_PARAMETER;
    }

    MmFreeContiguousMemory(Buffer);
    return STATUS_SUCCESS;    
}