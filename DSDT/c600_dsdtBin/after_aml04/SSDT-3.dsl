/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of acpi_ssdt03.aml, Thu May  4 20:29:44 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003A6 (934)
 *     Revision         0x01
 *     Checksum         0x95
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (_PR_.CPU0, ProcessorObj)
    External (ACPS, FieldUnitObj)
    External (CFGD, IntObj)
    External (NPSS, IntObj)    // Warning: Unknown object
    External (PDC0, IntObj)
    External (TCNT, UnknownObj)    // Warning: Unknown object

    Scope (\_PR.CPU0)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (ACPS)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (LAnd (And (CFGD, One), And (PDC0, One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x10,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000800, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x00000000000000B3, // Address
                        ,)
                }
            })
        }

        Method (XPSS, 0, NotSerialized)
        {
            If (And (PDC0, One))
            {
                Return (NPSS)
            }

            Return (SPSS)
        }

        Name (SPSS, Package (0x0A)
        {
            Package (0x06)
            {
                0x00000855, 
                0x000061A8, 
                0x0000006E, 
                0x0000000A, 
                0x00000083, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x000007CF, 
                0x00005A67, 
                0x0000006E, 
                0x0000000A, 
                0x00000183, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x0000074A, 
                0x0000537B, 
                0x0000006E, 
                0x0000000A, 
                0x00000283, 
                0x00000002
            }, 

            Package (0x06)
            {
                0x000006C5, 
                0x00004C99, 
                0x0000006E, 
                0x0000000A, 
                0x00000383, 
                0x00000003
            }, 

            Package (0x06)
            {
                0x0000063F, 
                0x000045DF, 
                0x0000006E, 
                0x0000000A, 
                0x00000483, 
                0x00000004
            }, 

            Package (0x06)
            {
                0x000005BA, 
                0x00003F44, 
                0x0000006E, 
                0x0000000A, 
                0x00000583, 
                0x00000005
            }, 

            Package (0x06)
            {
                0x00000535, 
                0x000038E2, 
                0x0000006E, 
                0x0000000A, 
                0x00000683, 
                0x00000006
            }, 

            Package (0x06)
            {
                0x000004AF, 
                0x0000328C, 
                0x0000006E, 
                0x0000000A, 
                0x00000783, 
                0x00000007
            }, 

            Package (0x06)
            {
                0x0000042A, 
                0x00002C7B, 
                0x0000006E, 
                0x0000000A, 
                0x00000883, 
                0x00000008
            }, 

            Package (0x06)
            {
                0x000003A5, 
                0x00002668, 
                0x0000006E, 
                0x0000000A, 
                0x00000983, 
                0x00000009
            }
        })
        Name (_PSS, Package (0x0A)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x00000855, 
                0x000061A8, 
                0x0000000A, 
                0x0000000A, 
                0x00000010, 
                0x00000010
            }, 

            Package (0x06)
            {
                0x000007CF, 
                0x00005A67, 
                0x0000000A, 
                0x0000000A, 
                0x0000000F, 
                0x0000000F
            }, 

            Package (0x06)
            {
                0x0000074A, 
                0x0000537B, 
                0x0000000A, 
                0x0000000A, 
                0x0000000E, 
                0x0000000E
            }, 

            Package (0x06)
            {
                0x000006C5, 
                0x00004C99, 
                0x0000000A, 
                0x0000000A, 
                0x0000000D, 
                0x0000000D
            }, 

            Package (0x06)
            {
                0x0000063F, 
                0x000045DF, 
                0x0000000A, 
                0x0000000A, 
                0x0000000C, 
                0x0000000C
            }, 

            Package (0x06)
            {
                0x000005BA, 
                0x00003F44, 
                0x0000000A, 
                0x0000000A, 
                0x0000000B, 
                0x0000000B
            }, 

            Package (0x06)
            {
                0x00000535, 
                0x000038E2, 
                0x0000000A, 
                0x0000000A, 
                0x0000000A, 
                0x0000000A
            }, 

            Package (0x06)
            {
                0x000004AF, 
                0x0000328C, 
                0x0000000A, 
                0x0000000A, 
                0x00000009, 
                0x00000009
            }, 

            Package (0x06)
            {
                0x0000042A, 
                0x00002C7B, 
                0x0000000A, 
                0x0000000A, 
                0x00000008, 
                0x00000008
            }, 

            Package (0x06)
            {
                0x000003A5, 
                0x00002668, 
                0x0000000A, 
                0x0000000A, 
                0x00000007, 
                0x00000007
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (PDC0, 0x0800))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFE, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    Zero, 
                    0xFC, 
                    TCNT
                }
            })
        }
    }
}

