
struct _v2{
    PVOID a1;   // 0x00
    PVOID a2;   // 0x08
    PVOID a3;   // 0x010
};

NTSTATUS GIO_memcpy(PDEVICE_EXTENSION ext, PIRP Irp, PIO_STACK_LOCATION stack, ULONG IoControlCode) {

    UNREFERENCED_PARAMTER(ext);
    UNREFERENCED_PARAMTER(IoControlCode);
    UNREFERENCED_PARAMTER(stack);

    struct _v2* v2 = (struct _v2*)Irp->AssociatedIrp.SystemBuffer;
    Irp->IoStatus.Information = 0;
    if (!v2){
        return STATUS_INVALID_PARAMETER;
    }

    PVOID where = v2->a1;
    ULONG size = v2->a3;
    PVOID what = v2->a2;
    DbgPrint("Dest=%x,Src=%x,size=%d", where, what, size);
    if (!size){
        return STATUS_SUCCESS;
    }

    int i = 0;
    while (size > 0){
        memcpy(&where[i], &what[i], 0x1);
        i++;
        size--;
    }

    return STATUS_SUCCESS;
}