
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

    }
}