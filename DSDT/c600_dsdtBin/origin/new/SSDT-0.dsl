/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-0.aml, Fri May  5 12:27:08 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000110 (272)
 *     Revision         0x01
 *     Checksum         0xA3
 *     OEM ID           "INTEL "
 *     OEM Table ID     "SataAhci"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("", "SSDT", 1, "INTEL ", "SataAhci", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (\_SB.PCI0)
    {
        Device (AHCI)
        {
            OperationRegion (SATI, PCI_Config, Zero, 0x0100)
            Field (SATI, AnyAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                DID1,   8, 
                DID2,   8, 
                Offset (0x08), 
                RID1,   8, 
                Offset (0x92), 
                    ,   4, 
                P4EN,   1, 
                P5EN,   1
            }

            Name (_ADR, 0x001F0002)  // _ADR: Address
            Name (GTF0, Buffer (0x38)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
            })
            Device (PRT0)
            {
                Name (_ADR, 0xFFFF)  // _ADR: Address
            }

            Device (PRT1)
            {
                Name (_ADR, 0x0001FFFF)  // _ADR: Address
            }

            Device (PRT2)
            {
                Name (_ADR, 0x0002FFFF)  // _ADR: Address
            }

            Device (PRT3)
            {
                Name (_ADR, 0x0003FFFF)  // _ADR: Address
            }

            Device (PRT4)
            {
                Name (_ADR, 0x0004FFFF)  // _ADR: Address
            }

            Device (CHA4)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Device (ESTA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }
                }
            }

            Device (PRT5)
            {
                Name (_ADR, 0x0005FFFF)  // _ADR: Address
            }
        }
    }
}

