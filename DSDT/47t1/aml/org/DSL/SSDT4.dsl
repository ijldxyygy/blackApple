/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT4.aml, Fri Jul 12 23:44:38 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000144 (324)
 *     Revision         0x02
 *     Checksum         0xF2
 *     OEM ID           "Intel "
 *     OEM Table ID     "ADebTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "Intel ", "ADebTabl", 0x00001000)
{
    Scope (\)
    {
        Name (DPTR, 0x39249000)
        Name (EPTR, 0x39259000)
        Name (CPTR, 0x39249020)
        Mutex (MMUT, 0x00)
        OperationRegion (ADBP, SystemIO, 0xB2, 0x02)
        Field (ADBP, ByteAcc, NoLock, Preserve)
        {
            B2PT,   8, 
            B3PT,   8
        }

        Method (MDBG, 1, Serialized)
        {
            OperationRegion (ADHD, SystemMemory, DPTR, 0x20)
            Field (ADHD, ByteAcc, NoLock, Preserve)
            {
                ASIG,   128, 
                ASIZ,   32, 
                ACHP,   32, 
                ACTP,   32, 
                SMIN,   8, 
                WRAP,   8, 
                SMMV,   8, 
                TRUN,   8
            }

            Store (Acquire (MMUT, 0x03E8), Local0)
            If (LEqual (Local0, Zero))
            {
                OperationRegion (ABLK, SystemMemory, CPTR, 0x20)
                Field (ABLK, ByteAcc, NoLock, Preserve)
                {
                    AAAA,   256
                }

                ToHexString (Arg0, Local1)
                Store (Zero, TRUN)
                If (LGreaterEqual (SizeOf (Local1), 0x20))
                {
                    Store (One, TRUN)
                }

                Mid (Local1, Zero, 0x1F, AAAA)
                Add (CPTR, 0x20, CPTR)
                If (LGreaterEqual (CPTR, EPTR))
                {
                    Add (DPTR, 0x20, CPTR)
                    Store (One, WRAP)
                }

                Store (CPTR, ACTP)
                If (SMMV)
                {
                    Store (SMIN, B2PT)
                }

                Release (MMUT)
            }

            Return (Local0)
        }
    }
}

