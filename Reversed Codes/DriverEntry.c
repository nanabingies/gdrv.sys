#include <ntddk.h>

DRIVER_DISPATCH sub_12D10;
DRIVER_UNLOAD DriverUnload;

NTSTATUS DriverEntry(_In_ PDRIVER_OBJECT DriverOBject, _In_ PUNICODE_STRING RegistryPath){

    NTSTATUS status;
    PDEVICE_OBJECT DeviceObject;
    UNICODE_STRING devName;
    UNICODE_STRING symLink;

    RtlInitUnicodeString(&devName, L"\\Device\\GIO");
    status = IoCreateDevice(DriverObject, 0x20, &devName, 0xC350, 0, FALSE, &DeviceObject);
    if (!NT_SUCCESS(status)){
        return status;
    }

    PDEVICE_EXTENSION ext = &DeviceObject->DeviceExtension;
    *(PVOID*)((PUCHAR)ext) = 0x0;
    *(PVOID*)((PUCHAR)ext + 0x8) = 0x0;
    *(PVOID*)((PUCHAR)ext + 0x10) = 0x0;
    *(PVOID*)((PUCHAR)ext + 0x18) = 0x0;

    RtlInitUnicodeString(&symLink, L"\\DosDevices\\GIO");
    status = IoCreateSymbolicLink(&symLink, &devName);
    if (!NT_SUCCESS(status)){
        IoDeleteDevice(DeviceObject);
        return status;
    }

    *(PVOID*)((PUCHAR)ext + 0x10) = DeviceObject;
    *(PVOID*)((PUCHAR)ext + 0x18) = 0x0;

    DriverObject->MajorFunction[IRP_MJ_CREATE] = sub_12D10;
    DriverObject->MajorFunction[IRP_MJ_CLOSE] = sub_12D10;
    DriverObject->MajorFunction[IRP_MJ_DEVICE_CONTROL] = sub_12D10;
    DriverObject->DriverUnload = DriverUnload;

    return status;
}