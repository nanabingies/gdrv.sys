
struct _v2{
        PVOID Unknown1;     // 0x00
        PMDL mdl;           // 0x08
        PVOID Unknown2;     // 0x10
        PVOID BaseAddress;  // 0x18
        SIZE_T Size;        // 0x20
};

struct _v3{
    ULONG Unknown1;         // 0x00
    ULONG Unknown2;         // 0x04
};

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
            break;
        }

        case 0xC3500E68:
        {
            status = sub_11C70(DeviceObject, Irp, stack);                   // recheck params
            break;
        }

        case 0xC3500E6C:
        {
            status = sub_11AF0(DeviceObject, Irp, stack);                   // recheck params
            break;
        }

        case 0xC3500E70:
        {
            DbgPrint("In SMBUS Control");
            status = sub_12C00(DeviceObject, Irp, stack);
            DbgPrint("Exit SMBUS Control");
            break;
        }

        case 0xC3502000:
        {
            status = sub_11570(ext, Irp, stack, IoControlCode);             // recheck params
            break;
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
            break;
        }

        case 0xC3502008:
        {
            DbgPrint("InputBufferLength=%d,szieof(PVOID)=%d", InputBufferLength, sizeof(PVOID));
            if (InputBufferLength < 8){
                DbgPrint("MAPMEM.SYS: ZwUnmapViewOfSection failed");
                status = STATUS_INSUFFICIENT_RESOURCES;
                goto Exit;
            }

            ZwUnmapViewOfSection(PsGetCurrentProcess(), buffer);
            DbgPrint("MAPMEM.SYS: memory successfully unmapped");
            break;
        }

        case 0xC3502580:
        {
            status = GIO_MSR(ext, Irp, stack, IoControlCode);   // recheck params
            break;
        }

        case 0xC3500E68:
        {
            status = sub_11C70(DeviceObject, Irp, stack);               // recheck params
            break;
        }

        case 0xC3502804:
        {
            status = sub_127C0(ext, Irp, stack, IoControlCode);          // recheck params
            break;
        }

        case 0xC3502808:
        {
            status = GIO_memcpy(ext, Irp, stack, IoControlCode);         // recheck params
            break;
        }

        case 0xC350280C:
        {
            status = sub_128F0(ext, Irp, stack, IoControlCode);
            break;
        }

        case 0xC3506400:
        {
            status = sub_11270(Irp, stack);                             // recheck params
            break;
        }

        case 0xC3506404:
        {
            status = sub_11270(Irp, stack);                             // recheck params
            break;
        }

        case 0xC3506408:
        {
            status = sub_11270(Irp, stack);                             // recheck params
            break;
        }

        case 0xC350A440:
        {
            status = sub_11380(Irp, stack);                             // recheck params
            break;
        }

        case 0xC350A444:
        {
            status = sub_11380(Irp, stack);                             // recheck params
            break;
        }

        case 0xC350A448:
        {
            status = sub_11380(Irp, stack);                             // recheck params
            break;
        }

        case 0xC350E44C:
        {
            status = sub_115F0(Irp, stack);
            break;
        }

        case 0xC350E454:
        {
            status = sub_11A00(DeviceObject);
            break;
        }

        case 0xC3502844:
        {
            if (InputBufferLength != 0x10){
                status = STATUS_INVALID_PARAMETER;
                goto Exit;
            }

            *(DWORD*)(buffer + 0x10) = 0;
            struct _v2* v2 = *(PVOID*)(ext + 0x18);
            if (!v2){
                goto Exit;
            }

            if (buffer == v2->BaseAddress){
                if (*(DWORD*)buffer + 0x8 == v2->Size){
                    MmUnmapLockedPages(v2->BaseAddress, v2->mdl);
                    IoFreeMdl(v2->mdl);
                    MmUnmapIoSpace(v2->Unknown2, v2->Size);
                    if (v2->Unknown1 == *(PVOID*)(buffer + 0x18)){
                        ExFreePoolWithTag(v2, 0x0);
                        v2 = v2->Unknown1;
                        status = STATUS_SUCCESS;
                        goto Exit;
                    }

                    ExFreePoolWithTag(v2, 0x0);
                    DeviceObject = v2;
                    goto Exit;
                }
                else{
                    status = STATUS_INVALID_PARAMETER;
                    goto Exit;
                }
            }
            break;
        }

        case 0xC3502840:
        {
            if (InputBufferLength == 0x10){
                struct _v3 v3 = buffer;
                if (OutputBufferLength == InputBufferLength){
                    PVOID IoSpace = MmMapIoSpace(v3->Unknown1, DeviceObject, NULL);
                    if (!IoSpace){
                        status = STATUS_INSUFFICIENT_RESOURCES;
                        goto Exit;
                    }

                    PMDL mdl = IoAllocateMdl
                }
            }
        }
    }

Exit:
    Irp->IoStatus.Status = status;
    IofCompleteRequest(Irp, IO_NO_INCREMENT);
    return status;
}