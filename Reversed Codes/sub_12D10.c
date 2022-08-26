
NTSTATUS sub_12D10(_In_ PDEVICE_OBJECT DeviceObject, _In_ PIRP Irp){

    PIO_STACK_LOCATION stack = IoGetCurrentIrpStackLocation(Irp);
    Irp->IoStatus.Information = 0;
    PVOID ext = &DeviceObject->DeviceExtension;
    PVOID buffer = Irp->AssociatedIrp.SystemBuffer;
    UCHAR MajorFunction = stack->MajortFunction;
    ULONG InputBufferLength = stack->DeviceIoControl.InputBufferLength;
    ULONG OutputBufferLength = stack->DeviceIoControl.OutputBufferLength;
    NTSTATUS status = STATUS_NOT_IMPLEMENTED;

    if (MajorFunction == 0x0 || MajorFunction == 0x2){
        Irp->IoStatus.Status = status;
        IofCompleteRequest(Irp, IO_NO_INCREMENT);
        return status;
    }

    if (MajorFunction != 0xE){
        Irp->IoStatus.Status = status;
        IofCompleteRequest(Irp, IO_NO_INCREMENT);
        return status;
    }

    ULONG IoControlCode = stack->DeviceIoControl.IoControlCode;
    switch (IoControlCode){
        case 0xC3502800:
        {
            DbgPrint("In Alloc function!!");
            status = sub_12710(ext, Irp, stack, IoControlCode);
            DbgPrint("Exit Alloc function!!");
        }

        case 0xC3500E68:
        {
            status = sub_11C70(DeviceObject, Irp, stack);  // recheck params
        }

        case 0xC3500E6C:
        {
            status = sub_11AF0(DeviceObject, Irp, stack);  // recheck params
        }

        case 0xC3500E70:
        {
            DbgPrint("In SMBUS Control");
            status = sub_12C00(DeviceObject, Irp, stack);
            DbgPrint("Exit SMBUS Control");
        }

        case 0xC3502000:
        {
            status = sub_11570(ext, Irp, stack, IoControlCode); // recheck params
        }

        case 0xC3502004:
        {
            status = map_physical(DeviceObject, buffer, InputBufferLength, OutputBufferLength);
            if (!NT_SUCCESS(status)){
                DbgPrint("MAPMEM.SYS: memory map failed :(\n");
                status = STATUS_INVALID_PARAMETER;
                goto Exit;
            }
            DbgPrint("Sizeof(PVOID)=%d", sizeof(PVOID));
            DbgPrint("MAPMEM.SYS: memory successfully mapped");
            Irp->IoStatus.Information = 0x8;
        }

        case 0xC3502008:
        {
            
        }
    }

Exit:
    Irp->IoStatus.Status = status;
    IofCompleteRequest(Irp, IO_NO_INCREMENT);
    return status;
}