#include <ntddk.h>

NTSTATUS DriverEntry(_In_ PDRIVER_OBJECT DriverOBject, _In_ PUNICODE_STRING RegistryPath){

    NTSTATUS status;
    PDEVICE_OBJECT DeviceObject;
    UNICODE_STRING unString;

    RtlInitUnicodeString(&unString, L"\\Device\\GIO");
    status = IoCreateDEvice(DriverObject, 0x20, &unString, 0xC350, 0, FALSE, &DeviceObject);
    if (!NT_SUCCESS(status)){
        return status;
    }
}