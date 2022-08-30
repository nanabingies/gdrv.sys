#include <ntddk.h>

struct _v2{
    ULONG Unknown1;     // 0x00
    ULONG Unknown2;     // 0x04
    PVOID Address;      // 0x08
    ULONG Unknown3;     // 0x10
    ULONG Size;         // 0x14
};

NTSTATUS map_physical(PDEVICE_OBJECT DeviceObject, PVOID buffer, ULONG InputBufferLength, ULONG OutputBufferLength) {

    
}