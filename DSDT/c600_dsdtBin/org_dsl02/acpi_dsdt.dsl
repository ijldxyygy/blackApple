/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of acpi_dsdt.aml, Thu May  4 20:29:44 2017
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000555C (21852)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x5B
 *     OEM ID           "TOSINV"
 *     OEM Table ID     "TOSINV00"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("", "DSDT", 1, "TOSINV", "TOSINV00", 0x00000001)
{
    OperationRegion (PSMI, SystemIO, 0xB2, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    Name (PCM1, Zero)
    Name (IW1S, Zero)
    Name (IW2S, Zero)
    Name (PS48, Zero)
    Name (PS49, Zero)
    Name (PS4A, Zero)
    Name (PS4B, Zero)
    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        Store (Arg0, Index (PRWP, Zero))
        Store (Arg1, Index (PRWP, One))
        If (LAnd (LEqual (DAS3, Zero), LEqual (DAS1, Zero)))
        {
            If (LLessEqual (Arg1, 0x03))
            {
                Store (Zero, Index (PRWP, One))
            }
        }
        Else
        {
            If (LAnd (LEqual (DAS3, Zero), LEqual (Arg1, 0x03)))
            {
                Store (One, Index (PRWP, One))
            }

            If (LAnd (LEqual (DAS1, Zero), LEqual (Arg1, One)))
            {
                Store (Zero, Index (PRWP, One))
            }
        }

        Return (PRWP)
    }

    OperationRegion (PCFG, SystemMemory, 0xE0000000, 0x10000000)
    Field (PCFG, AnyAcc, NoLock, Preserve)
    {
        Offset (0x90024), 
        STB5,   32, 
        Offset (0x98042), 
        PT0D,   1, 
        PT1D,   1, 
        PT2D,   1, 
        PT3D,   1, 
        PT4D,   1, 
        PT5D,   1, 
        PT6D,   1, 
        PT7D,   1, 
        PT8D,   1, 
        PT9D,   1
    }

    OperationRegion (BAR, SystemMemory, STB5, 0x1000)
    Field (BAR, AnyAcc, NoLock, Preserve)
    {
        Offset (0x120), 
            ,   7, 
        PMBY,   1, 
        Offset (0x128), 
        PMS0,   4, 
        Offset (0x129), 
        PMS1,   4, 
        Offset (0x12C), 
        DET0,   4, 
        Offset (0x130), 
        Offset (0x132), 
        PRC0,   1, 
        Offset (0x1A0), 
            ,   7, 
        SMBY,   1, 
        Offset (0x1A8), 
        SMS0,   4, 
        Offset (0x1A9), 
        SMS1,   4, 
        Offset (0x1AC), 
        DET1,   4, 
        Offset (0x1B0), 
        Offset (0x1B2), 
        PRC1,   1, 
        Offset (0x220), 
            ,   7, 
        PSBY,   1, 
        Offset (0x228), 
        PSS0,   4, 
        Offset (0x229), 
        PSS1,   4, 
        Offset (0x22C), 
        DET2,   4, 
        Offset (0x230), 
        Offset (0x232), 
        PRC2,   1, 
        Offset (0x2A0), 
            ,   7, 
        SSBY,   1, 
        Offset (0x2A8), 
        SSS0,   4, 
        Offset (0x2A9), 
        SSS1,   4, 
        Offset (0x2AC), 
        DET3,   4, 
        Offset (0x2B0), 
        Offset (0x2B2), 
        PRC3,   1
    }

    OperationRegion (LCLM, SystemIO, 0x0C50, 0x03)
    Field (LCLM, ByteAcc, NoLock, Preserve)
    {
        CLMI,   8, 
        CLMD,   8, 
        CLGP,   8
    }

    IndexField (CLMI, CLMD, ByteAcc, NoLock, Preserve)
    {
        IDRG,   8, 
        Offset (0x02), 
        TSTS,   8, 
        TINT,   8, 
        Offset (0x12), 
        I2CC,   8, 
        GPIO,   8
    }

    Method (RGPM, 0, NotSerialized)
    {
        Store (GPIO, Local0)
        And (Local0, 0xFFFFFF3F, Local0)
        Store (Local0, GPIO)
        Store (CLGP, Local1)
        Return (Local1)
    }

    OperationRegion (NVST, SystemMemory, 0xD8000000, 0x2000)
    Field (NVST, AnyAcc, Lock, Preserve)
    {
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        BRTL,   8, 
        TLST,   8, 
        IGDS,   8, 
        LCDA,   16, 
        CSTE,   16, 
        NSTE,   16, 
        CADL,   16, 
        PADL,   16, 
        LIDS,   8, 
        PWRS,   8, 
        BVAL,   32, 
        OSYS,   16, 
        CLMT,   8, 
        CMPF,   8, 
        CSTF,   8, 
        GTF0,   56, 
        GTF1,   56, 
        IDEM,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        TOML,   8, 
        TOMH,   8, 
        Offset (0x78), 
        ACPS,   8, 
        CPUS,   8, 
        CPUL,   8, 
        ECRO,   8, 
        ECRM,   8, 
        ECRS,   8, 
        ECRD,   8, 
        REVD,   8, 
        DAS1,   8, 
        DAS3,   8, 
        WKPM,   8
    }

    Field (NVST, AnyAcc, Lock, Preserve)
    {
        Offset (0x7F), 
        BTIN,   1, 
        TPID,   1, 
        Offset (0x80), 
        EGST,   8, 
        LCDS,   4, 
        CECS,   1, 
        CECP,   1, 
        HDMI,   1, 
        HKMD,   1, 
        TSBK,   1, 
        SDAT,   1, 
        DCIR,   1, 
        DBTN,   2, 
        HKEM,   1, 
        HSEM,   1, 
        IECC,   1, 
        HSWK,   8, 
        LCMD,   8, 
        SVCF,   8, 
        SWB0,   64, 
        SWB1,   64, 
        SWB2,   64, 
        SWB3,   64, 
        SWB4,   64, 
        SWB5,   64, 
        SWB6,   64, 
        VALC,   208, 
        CECI,   16, 
        CECZ,   8, 
        CECF,   8, 
        CEC1,   32, 
        CEC2,   32, 
        CEC3,   32, 
        CEC4,   32, 
        CEC5,   32
    }

    OperationRegion (MBOX, SystemIO, 0x0600, 0x02)
    Field (MBOX, ByteAcc, NoLock, Preserve)
    {
        INPM,   8, 
        DAPM,   8
    }

    IndexField (INPM, DAPM, ByteAcc, NoLock, Preserve)
    {
        Offset (0x02), 
        LRPM,   8, 
        HRPM,   8, 
        RCPU,   8, 
        EVCT,   8, 
        Offset (0x08), 
            ,   4, 
        EPRG,   1, 
        EIDL,   1, 
        GE2S,   1, 
        LDWK,   1, 
        WMEC,   8, 
        VGAT,   8, 
        THRF,   3, 
        Offset (0x17), 
        FKST,   2, 
        Offset (0x18), 
        CMW1,   160, 
        CMR1,   160, 
        EC92,   8, 
        EC93,   8, 
        EC94,   8, 
        EC95,   8, 
        EC96,   8, 
        EC99,   8, 
        EC9A,   8, 
        EC9C,   8, 
        EC9D,   8, 
        EC9E,   8, 
        EC9F,   8, 
        ECA0,   8, 
        ECA2,   8, 
        ECA3,   8, 
        ECA4,   8, 
        ECA5,   8, 
        ECA7,   8, 
        ECA8,   8, 
        ECA9,   8, 
        ECAA,   8, 
        ECAB,   8, 
        ECAC,   8, 
        ECAD,   8, 
        ECAE,   8, 
        ECAF,   8, 
        ECB6,   8, 
        ECB8,   8, 
        ECB9,   8, 
        ECBA,   8, 
        ECBD,   8, 
        ECBE,   8, 
        ECBF,   8, 
        ECC0,   8, 
        ECC1,   8, 
        ECC2,   8, 
        ECC5,   8, 
        ECC6,   8, 
        ECC8,   8, 
        ECC9,   8, 
        ECCA,   8, 
        ECCB,   8, 
        ECD7,   8, 
        ECDB,   8, 
        ECDF,   8
    }

    Method (RDEC, 3, Serialized)
    {
        Store (Arg0, ECRO)
        Store (Arg1, ECRM)
        Store (Arg2, ECRS)
        FLNK (0x50, 0x1E)
        Store (ECRD, Local0)
        Return (Local0)
    }

    Method (WREC, 4, Serialized)
    {
        Store (Arg0, ECRO)
        Store (Arg1, ECRM)
        Store (Arg2, ECRS)
        Store (Arg3, ECRD)
        FLNK (0x50, 0x1F)
    }

    Method (FLNK, 2, Serialized)
    {
        Store (Arg1, SWB0)
        Store (Arg0, LCMD)
        Store (Zero, APMD)
        Store (0x90, APMC)
        Return (And (SWB0, 0xFF))
    }

    Method (CHKB, 1, Serialized)
    {
        FLNK (0x09, Arg0)
        Store (SWB0, Local0)
        Return (Local0)
    }

    Device (_SB.HSB1)
    {
        Name (_HID, EisaId ("PNP0C32"))  // _HID: Hardware ID
        Name (_UID, One)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (CHKB (One))
        }

        Method (GHID, 0, NotSerialized)
        {
            Return (Buffer (One)
            {
                 0x01                                           
            })
        }
    }

    Device (_SB.HSB2)
    {
        Name (_HID, EisaId ("PNP0C32"))  // _HID: Hardware ID
        Name (_UID, 0x02)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (CHKB (0x02))
        }

        Method (GHID, 0, NotSerialized)
        {
            Return (Buffer (One)
            {
                 0x02                                           
            })
        }
    }

    Device (_SB.HSB3)
    {
        Name (_HID, EisaId ("PNP0C32"))  // _HID: Hardware ID
        Name (_UID, 0x03)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (CHKB (0x03))
        }

        Method (GHID, 0, NotSerialized)
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }
    }

    Device (_SB.HSB4)
    {
        Name (_HID, EisaId ("PNP0C32"))  // _HID: Hardware ID
        Name (_UID, 0x04)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (CHKB (0x04))
        }

        Method (GHID, 0, NotSerialized)
        {
            Return (Buffer (One)
            {
                 0x04                                           
            })
        }
    }

    Device (_SB.HSB5)
    {
        Name (_HID, EisaId ("PNP0C32"))  // _HID: Hardware ID
        Name (_UID, 0x05)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (CHKB (0x05))
        }

        Method (GHID, 0, NotSerialized)
        {
            Return (Buffer (One)
            {
                 0x05                                           
            })
        }
    }

    Device (_SB.HSB6)
    {
        Name (_HID, EisaId ("PNP0C32"))  // _HID: Hardware ID
        Name (_UID, 0x06)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (CHKB (0x06))
        }

        Method (GHID, 0, NotSerialized)
        {
            Return (Buffer (One)
            {
                 0x06                                           
            })
        }
    }

    Device (_SB.VALZ)
    {
        Name (_HID, "TOS1900")  // _HID: Hardware ID
        Name (PTST, 0xFF)
        Method (_DDN, 0, NotSerialized)  // _DDN: DOS Device Name
        {
            Return ("VALZeneral")
        }

        Method (ENAB, 0, NotSerialized)
        {
            Store (One, TSBK)
        }

        Method (HMB1, 0, NotSerialized)
        {
            Name (RETB, Buffer (0x1C) {})
            Name (HBT1, Package (0x06)
            {
                Buffer (0x1C) {}, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            If (And (EC94, One))
            {
                FLNK (0x09, 0x14)
                Store (SWB0, RETB)
                Store (RETB, Index (HBT1, Zero))
                Store (SWB1, Index (HBT1, One))
            }

            Return (HBT1)
        }

        Method (HMB2, 0, NotSerialized)
        {
            Return (Package (0x06)
            {
                Buffer (0x1C)
                {
                     0x00                                           
                }, 

                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
        }

        Method (ODLS, 0, Serialized)
        {
            Name (RETS, Buffer (One)
            {
                 0x01                                           
            })
            Return (RETS)
        }

        Method (ODLT, 0, Serialized)
        {
            Name (RETT, Buffer (One)
            {
                 0x02                                           
            })
            Return (RETT)
        }

        Method (ODLB, 0, Serialized)
        {
            Name (RETB, Buffer (0x10)
            {
                /* 0000 */  0x86, 0x80, 0x29, 0x3B, 0x79, 0x11, 0x1E, 0xFF,
                /* 0008 */  0x06, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Return (RETB)
        }

        Method (INFO, 0, NotSerialized)
        {
            Store (Zero, Local0)
            If (LNotEqual (EVCT, Zero))
            {
                FLNK (0x09, 0x15)
                Store (And (SWB0, 0xFF), Local0)
                ShiftRight (SWB0, 0x08, SWB0)
            }
            Else
            {
                Return (Zero)
            }

            Add (Local0, 0x0100, Local0)
            Return (Local0)
        }

        Method (SPFC, 6, Serialized)
        {
            Name (RETP, Package (0x06)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (CAG0, Package (0x0E)
            {
                Zero, 
                0xF300050E, 
                0xF400050E, 
                0xFE00001E, 
                0xFE000011, 
                0xFE000056, 
                0xFE000062, 
                0xFE00007F, 
                0xFE00C000, 
                0xFF00001E, 
                0xFF000056, 
                0xFF00005A, 
                0xFF00007F, 
                0xFF00C000
            })
            Name (FLNC, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00             
            })
            Name (ARGA, Buffer (0x04) {})
            Name (ARGB, Buffer (0x04) {})
            Name (ARGC, Buffer (0x04) {})
            Name (ARGD, Buffer (0x04) {})
            Name (ARGE, Buffer (0x04) {})
            Name (ARGF, Buffer (0x04) {})
            Store (VALC, FLNC)
            Store (0x8000, Index (RETP, Zero))
            Store (Arg0, ARGA)
            Store (Arg1, ARGB)
            Store (Arg2, ARGC)
            Store (Arg3, ARGD)
            Store (Arg4, ARGE)
            Store (Arg5, ARGF)
            Store (0x0D, Local6)
            While (Local6)
            {
                Store (Index (CAG0, Local6), Local1)
                Add (ShiftLeft (ARGA, 0x10), And (ARGB, 0xFFFF), Local2)
                If (LEqual (Local2, Local1))
                {
                    Store (Index (FLNC, Local6), Local5)
                    Break
                }

                Decrement (Local6)
            }

            If (LEqual (Local6, One))
            {
                If (LEqual (PTST, 0xFF))
                {
                    Store (FLNK (Local5, 0x0F), PTST)
                }

                Store (PTST, Index (RETP, 0x02))
                Store (Zero, Index (RETP, Zero))
            }
            ElseIf (LEqual (Local6, 0x02))
            {
                If (LEqual (And (ARGC, 0xFFFE), Zero))
                {
                    Store (ARGC, PTST)
                    FLNK (Local5, ARGC)
                    Store (Zero, Index (RETP, Zero))
                }
            }
            ElseIf (LEqual (Local6, 0x03))
            {
                Store (One, Local0)
                If (LEqual (HKEM, One))
                {
                    Store (0x03, Local0)
                }

                If (LEqual (HSEM, One))
                {
                    Add (Local0, 0x08, Local0)
                }

                Store (Local0, Index (RETP, 0x02))
                Store (Zero, Index (RETP, Zero))
            }
            ElseIf (LEqual (Local6, 0x04))
            {
                Or (Or (Or (ARGC, ARGD), ARGE), ARGF, Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (LCDS, Local0)
                    ShiftLeft (Local0, 0x08, Local0)
                    If (LEqual (LCDS, 0x0F))
                    {
                        Store (0xFFFF, Local0)
                    }

                    Store (Local0, Index (RETP, 0x02))
                    Store (Zero, Index (RETP, Zero))
                }
            }
            ElseIf (LEqual (Local6, 0x05))
            {
                If (LEqual (ARGD, One))
                {
                    If (LNotEqual (And (EC93, 0x22), Zero))
                    {
                        Add (ShiftLeft (And (EC93, 0x08), 0x06), ShiftRight (And (EC93, 0x10), 0x04), Index (RETP, 0x02))
                        Store (Zero, Index (RETP, Zero))
                    }
                }
            }
            ElseIf (LEqual (Local6, 0x06))
            {
                Store (EGST, Index (RETP, 0x03))
                Store (Zero, Index (RETP, Zero))
            }
            ElseIf (LEqual (Local6, 0x07))
            {
                Store (Zero, Local0)
                Store (FLNK (Local5, 0xFF), Local0)
                Store (Local0, Index (RETP, 0x02))
                Store (One, Index (RETP, 0x03))
                Store (Zero, Index (RETP, Zero))
            }
            ElseIf (LEqual (Local6, 0x08))
            {
                If (LEqual (ARGC, 0x03))
                {
                    Store (Zero, Index (RETP, 0x03))
                    If (LEqual (HDMI, One))
                    {
                        ShiftLeft (FLNK (Local5, 0xFF), 0x04, Local0)
                        Store (And (Local0, 0x10), Index (RETP, 0x03))
                    }

                    Store (Zero, Index (RETP, Zero))
                }
            }
            ElseIf (LEqual (Local6, 0x09))
            {
                If (LEqual (And (ARGC, One), One))
                {
                    Store (And (ShiftRight (ARGC, One), One), Local0)
                    Store (Local0, HKEM)
                    Store (And (ShiftRight (ARGC, 0x03), One), Local0)
                    Store (Local0, HSEM)
                    WREC (0xDB, 0x20, 0x05, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Notify (HSB2, 0x02)
                    }

                    Store (Zero, Index (RETP, Zero))
                }
            }
            ElseIf (LEqual (Local6, 0x0A))
            {
                If (LEqual (ARGD, 0x0200))
                {
                    If (LNotEqual (FLNK (Local5, ARGC), 0xFF))
                    {
                        Store (Zero, Index (RETP, Zero))
                    }
                }
            }
            ElseIf (LEqual (Local6, 0x0B))
            {
                If (LEqual (ARGD, One))
                {
                    If (LEqual (And (ARGC, 0xFFFC), Zero))
                    {
                        If (LEqual (And (ARGC, 0x03), 0x02))
                        {
                            Store (0x07, Local0)
                        }
                        Else
                        {
                            ShiftLeft (ARGC, One, Local0)
                            Add (Local0, One, Local0)
                        }

                        FLNK (Local5, Local0)
                        Store (Zero, Index (RETP, Zero))
                    }
                }
            }
            ElseIf (LEqual (Local6, 0x0C))
            {
                If (LEqual (And (ARGC, 0xFFFE), Zero))
                {
                    FLNK (Local5, ARGC)
                    Store (Zero, Index (RETP, Zero))
                }
            }
            ElseIf (LEqual (Local6, 0x0D))
            {
                If (LEqual (ARGC, Zero))
                {
                    If (LEqual (And (ARGD, 0xFFFE), Zero))
                    {
                        Store (Zero, Index (RETP, Zero))
                    }
                }
            }
            Else
            {
                Store (ARGA, SWB0)
                Store (ARGB, SWB1)
                Store (ARGC, SWB2)
                Store (ARGD, SWB3)
                Store (ARGE, SWB4)
                Store (ARGF, SWB5)
                FLNK (0x09, 0x16)
                Store (SWB0, Index (RETP, Zero))
                Store (SWB1, Index (RETP, One))
                Store (SWB2, Index (RETP, 0x02))
                Store (SWB3, Index (RETP, 0x03))
                Store (SWB4, Index (RETP, 0x04))
                Store (SWB5, Index (RETP, 0x05))
            }

            Return (RETP)
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LLess (OSYS, 0x07D6))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0B)
            }
        }
    }

    Device (_SB.FWEX)
    {
        Name (_HID, "TOS1901")  // _HID: Hardware ID
        Method (FWES, 7, NotSerialized)
        {
            Name (FWEB, Package (0x07) {})
            Store (Index (Arg0, Zero), SWB0)
            Store (Index (Arg1, Zero), SWB1)
            Store (Index (Arg2, Zero), SWB2)
            Store (Index (Arg3, Zero), SWB3)
            Store (Index (Arg4, Zero), SWB4)
            Store (Index (Arg5, Zero), SWB5)
            Store (Index (Arg6, Zero), SWB6)
            FLNK (0x09, 0x10)
            Store (SWB0, Index (FWEB, Zero))
            Store (SWB1, Index (FWEB, One))
            Store (SWB2, Index (FWEB, 0x02))
            Store (SWB3, Index (FWEB, 0x03))
            Store (SWB4, Index (FWEB, 0x04))
            Store (SWB5, Index (FWEB, 0x05))
            Store (SWB6, Index (FWEB, 0x06))
            Return (FWEB)
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0B)
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x00, 0x00000410, 0x06) {}
        Processor (CPU1, 0x01, 0x00000000, 0x00) {}
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (LEqual (DAS1, One))
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (LEqual (DAS3, One))
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x03, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Name (GPIC, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        If (GPIC)
        {
            \_SB.DSPI ()
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (LEqual (Arg0, One))
        {
            \_SB.S80H (0x51)
        }
        ElseIf (LEqual (Arg0, 0x02)) {}
        ElseIf (LEqual (Arg0, 0x03))
        {
            \_SB.S80H (0x53)
        }
        ElseIf (LEqual (Arg0, 0x04))
        {
            \_SB.S80H (0x54)
            \_SB.GSMI (0x03)
            If (LEqual (Arg0, 0x05))
            {
                \_SB.S80H (0x55)
                \_SB.GSMI (0x03)
            }
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (LEqual (Arg0, One))
        {
            \_SB.S80H (0xE1)
            Store (0xF1, \_SB.PCI0.P2P.PR4B)
        }
        ElseIf (LEqual (Arg0, 0x03))
        {
            \_SB.S80H (0xE3)
            If (RDEC (0xA2, 0xFF, Zero))
            {
                Notify (\_SB.PWRB, 0x02)
            }

            If (\_SB.PCI0.LPC0.EC0.ECOK)
            {
                Store (RDEC (0x9C, 0xFF, Zero), Local0)
                And (Local0, 0x7F, Local0)
                STEV (Local0)
            }
        }
        ElseIf (LEqual (Arg0, 0x04))
        {
            \_SB.S80H (0xE4)
            If (RDEC (0xA2, 0xFF, Zero))
            {
                Notify (\_SB.PWRB, 0x02)
            }
        }

        Store (One, \_SB.PCI0.SMBS.NCPW)
        WREC (0xD2, 0xFF, Zero, 0x80)
        Return (Zero)
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                One, 
                0x04
            })
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    If (RDEC (0x92, One, Zero))
                    {
                        WREC (0xB6, One, Zero, One)
                    }
                    Else
                    {
                        WREC (0xB6, One, Zero, Zero)
                    }
                }
                Else
                {
                    WREC (0xB6, One, Zero, Zero)
                }
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    If (RDEC (0x92, One, Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }
                Else
                {
                    Return (One)
                }
            }
        }

        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (BIF1, Package (0x0D)
            {
                One, 
                0x10CC, 
                0x10CC, 
                One, 
                0x3A98, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                "PA3478U-1BAS/BRS", 
                "0000", 
                "Li-ion", 
                ""
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    If (And (EC94, One))
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Name (BST1, Package (0x04)
            {
                One, 
                0x0A90, 
                0x1000, 
                0x23A0
            })
            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    Store (ECAE, Local0)
                    Store (ECAE, Local5)
                    ShiftLeft (Local5, 0x08, Local5)
                    Add (Local0, Local5, Local0)
                    Store (Local0, Index (BIF1, 0x04))
                    Store (ECAA, Local0)
                    Store (ECAB, Local5)
                    Add (Local0, Local5, Local0)
                    Store (Local0, Index (BIF1, 0x02))
                    Store (ECAC, Local1)
                    Store (ECAD, Local5)
                    Add (Local1, Local5, Local1)
                    Store (Local1, Index (BIF1, One))
                    Store (Local0, Index (BIF1, 0x08))
                    Store (ECDF, Local0)
                    If (And (RDEC (0xE2, One, Zero), 0x04))
                    {
                        If (LEqual (Local0, 0x05))
                        {
                            Store ("PA3537U-1BRS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, 0x04))
                        {
                            Store ("PA3536U-1BRS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, 0x03))
                        {
                            Store ("PA3533U-1BRS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, 0x02))
                        {
                            Store ("PA3537U-1BAS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, One))
                        {
                            Store ("PA3536U-1BAS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, Zero))
                        {
                            Store ("PA3533U-1BAS", Index (BIF1, 0x09))
                        }
                    }
                    Else
                    {
                        If (LEqual (Local0, 0x05))
                        {
                            Store ("PA3535U-1BRS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, 0x04))
                        {
                            Store ("PA3534U-1BRS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, 0x03))
                        {
                            Store ("PA3533U-1BRS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, 0x02))
                        {
                            Store ("PA3535U-1BAS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, One))
                        {
                            Store ("PA3534U-1BAS", Index (BIF1, 0x09))
                        }

                        If (LEqual (Local0, Zero))
                        {
                            Store ("PA3533U-1BAS", Index (BIF1, 0x09))
                        }
                    }

                    Store (ECB9, Local0)
                    Store (ECBA, Local5)
                    Add (Local0, Local5, Local0)
                    Store (ITOS (Local0), Local1)
                    Store (Local1, Index (BIF1, 0x0A))
                }
                Else
                {
                    Store (Ones, Index (BIF1, One))
                    Store (Ones, Index (BIF1, 0x04))
                }

                Return (BIF1)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    And (ShiftRight (EC94, 0x04), One, Local1)
                    And (EC95, One, Local3)
                    Store (ECC6, Local2)
                    Store (ECC5, Local0)
                    Store (Local1, Index (BST1, One))
                    Store (ECA4, Local0)
                    If (LLess (Local0, 0x0F))
                    {
                        Or (Local3, 0x04, Local3)
                    }

                    Store (Local3, Index (BST1, Zero))
                    Store (Index (BIF1, 0x02), Local1)
                    Store (Local2, Index (BST1, 0x02))
                    Store (Index (BIF1, 0x04), Local3)
                    Store (Local3, Index (BST1, 0x03))
                }
                Else
                {
                    Store (One, Index (BST1, Zero))
                    Store (Ones, Index (BST1, One))
                    Store (Ones, Index (BST1, 0x02))
                    Store (Ones, Index (BST1, 0x03))
                }

                Return (BST1)
            }
        }

        Method (ITOS, 1, NotSerialized)
        {
            Store ("", Local0)
            Store (0x04, Local1)
            While (Local1)
            {
                Decrement (Local1)
                And (ShiftRight (Arg0, ShiftLeft (Local1, 0x02)), 0x0F, Local4)
                Store (DerefOf (Index (CHAR, Local4)), Local2)
                Concatenate (Local0, Local2, Local5)
                Store (Local5, Local0)
            }

            Return (Local0)
        }

        Name (CHAR, Package (0x10)
        {
            "0", 
            "1", 
            "2", 
            "3", 
            "4", 
            "5", 
            "6", 
            "7", 
            "8", 
            "9", 
            "A", 
            "B", 
            "C", 
            "D", 
            "E", 
            "F"
        })
        Device (ADP0)
        {
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    And (ShiftRight (EC92, 0x03), One, Local0)
                    If (Local0)
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (One)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (HAPS)
        {
            Name (_HID, "TOS620A")  // _HID: Hardware ID
            Name (HDSE, Zero)
            Name (ODDL, One)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                FLNK (0x09, 0x11)
                Store (Zero, Local0)
                If (SWB0)
                {
                    Store (0x0F, Local0)
                }

                Return (Local0)
            }

            Method (PTLV, 1, NotSerialized)
            {
                Store (Arg0, SWB0)
                FLNK (0x09, 0x12)
            }

            Method (RSSS, 0, NotSerialized)
            {
                FLNK (0x09, 0x13)
            }
        }

        Device (BT)
        {
            Name (_HID, "TOS6205")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (ShiftRight (EC93, 0x05), One, Local2)
                Store (Zero, Local0)
                If (Local2)
                {
                    Store (0x0F, Local0)
                }

                Return (Local0)
            }

            Method (BTST, 0, NotSerialized)
            {
                If (LEqual (BTIN, Zero))
                {
                    Store (One, BTIN)
                    WREC (0x93, 0x80, 0x07, Zero)
                    WREC (0x93, 0x40, 0x06, Zero)
                }

                Store (Zero, Local0)
                If (LEqual (And (EC93, 0x20), 0x20))
                {
                    And (EC93, 0xC0, Local0)
                    If (LEqual (And (EC93, 0x10), 0x10))
                    {
                        Add (Local0, One, Local0)
                    }
                }

                Return (Local0)
            }

            Method (AUSB, 0, NotSerialized)
            {
                WREC (0x93, 0x80, 0x07, One)
                WREC (0x93, 0x40, 0x06, One)
                Store (One, ^^PCI0.SMBS.BTRS)
            }

            Method (DUSB, 0, NotSerialized)
            {
                Store (Zero, ^^PCI0.SMBS.BTRS)
                FLNK (0x16, 0xFC)
                Sleep (0x96)
            }

            Method (BTPO, 0, NotSerialized)
            {
                Store (RDEC (0x93, 0x20, 0x05), Local2)
                If (Local2)
                {
                    Store (RDEC (0x93, 0x10, 0x04), Local3)
                    If (Local3)
                    {
                        WREC (0x93, 0x80, 0x07, One)
                        WREC (0x93, 0x40, 0x06, One)
                        FLNK (0x16, 0xFA)
                        Store (One, ^^PCI0.SMBS.BTRS)
                    }
                }
            }

            Method (BTPF, 0, NotSerialized)
            {
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    Store (RDEC (0x93, 0x20, 0x05), Local2)
                    If (Local2)
                    {
                        Sleep (0xFA)
                    }
                }
            }
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            OperationRegion (SCTH, PCI_Config, 0x7A, One)
            Field (SCTH, ByteAcc, NoLock, Preserve)
            {
                RSMF,   1
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LEqual (GPIC, Zero)) {}
                Else
                {
                    DSPI ()
                }

                If (CondRefOf (_OSI, Local0))
                {
                    Store (0x07D0, OSYS)
                    If (_OSI ("Windows 2001"))
                    {
                        Store (0x07D1, OSYS)
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        Store (0x07D1, OSYS)
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        Store (0x07D2, OSYS)
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        Store (0x07D6, OSYS)
                    }
                }
            }

            OperationRegion (NBRV, PCI_Config, 0x08, One)
            Field (NBRV, ByteAcc, NoLock, Preserve)
            {
                PREV,   8
            }

            Method (NBR2, 0, NotSerialized)
            {
                If (And (PREV, 0xF0))
                {
                    Return (Ones)
                }
                Else
                {
                    Return (Zero)
                }
            }

            OperationRegion (NBMS, PCI_Config, 0x60, 0x08)
            Field (NBMS, DWordAcc, NoLock, Preserve)
            {
                MIDX,   32, 
                MIDR,   32
            }

            Method (NBMR, 1, NotSerialized)
            {
                And (Arg0, 0x7F, Local0)
                Store (Local0, MIDX)
                Store (MIDR, Local0)
                Store (0x07, MIDX)
                Return (Local0)
            }

            OperationRegion (NBXP, PCI_Config, 0xE0, 0x08)
            Field (NBXP, DWordAcc, NoLock, Preserve)
            {
                NBXI,   32, 
                NBXD,   32
            }

            Mutex (NBXM, 0x00)
            Method (NBXR, 1, NotSerialized)
            {
                Acquire (NBXM, 0xFFFF)
                Store (Arg0, NBXI)
                Store (NBXD, Local0)
                Store (Zero, NBXI)
                Release (NBXM)
                Return (Local0)
            }

            Method (NBXW, 2, NotSerialized)
            {
                Acquire (NBXM, 0xFFFF)
                Store (Arg0, NBXI)
                Store (Arg1, NBXD)
                Store (Zero, NBXI)
                Release (NBXM)
            }

            Method (GFXM, 0, NotSerialized)
            {
                Store (NBMR (0x08), Local0)
                And (Local0, 0x0F, Local0)
                Return (Local0)
            }

            Method (GPPM, 0, NotSerialized)
            {
                Store (NBMR (0x31), Local0)
                And (Local0, 0x0F, Local0)
                Return (Local0)
            }

            Method (XPTR, 2, NotSerialized)
            {
                If (LAnd (LLess (Arg0, 0x02), LGreater (Arg0, 0x07)))
                {
                    Return (Zero)
                }
                Else
                {
                    Store (One, Local0)
                    If (LLess (Arg0, 0x04))
                    {
                        Add (Arg0, 0x02, Local1)
                    }
                    Else
                    {
                        Add (Arg0, 0x11, Local1)
                    }

                    ShiftLeft (Local0, Local1, Local0)
                    Store (NBMR (0x08), Local2)
                    If (Arg1)
                    {
                        And (Local2, Not (Local0), Local2)
                    }
                    Else
                    {
                        Or (Local2, Local0, Local2)
                    }

                    Return (Ones)
                }
            }

            Method (TOM, 0, NotSerialized)
            {
                Multiply (TOML, 0x00010000, Local0)
                Multiply (TOMH, 0x01000000, Local1)
                Add (Local0, Local1, Local0)
                Return (Local0)
            }

            OperationRegion (NBBR, PCI_Config, 0x1C, 0x08)
            Field (NBBR, DWordAcc, NoLock, Preserve)
            {
                BR3L,   32, 
                BR3H,   32
            }

            OperationRegion (NBBI, PCI_Config, 0x84, 0x04)
            Field (NBBI, DWordAcc, NoLock, Preserve)
            {
                PARB,   32
            }

            Name (PX3L, 0x80000000)
            Name (PX3H, 0x80000000)
            Name (PX3S, 0x10000000)
            Name (PX3K, 0xF0000000)
            Mutex (BR3X, 0x00)
            Method (BR3M, 0, NotSerialized)
            {
                Store (PARB, Local0)
                ShiftRight (Local0, 0x10, Local0)
                And (Local0, 0x07, Local0)
                If (Local0)
                {
                    ShiftLeft (One, Local0, Local1)
                    Subtract (0x1000, Local1, Local1)
                    ShiftLeft (Local1, 0x14, Local1)
                    Store (Local1, PX3K)
                    ShiftLeft (One, Local0, Local1)
                    Multiply (Local1, 0x00100000, Local1)
                    Store (Local1, PX3S)
                }

                Acquire (BR3X, 0xFFFF)
                Store (NBMR (Zero), Local0)
                And (Local0, 0xFFFFFFF7, Local0)
                Store (BR3L, Local0)
                And (Local0, PX3K, Local0)
                Store (Local0, PX3L)
                Store (BR3H, Local0)
                And (Local0, 0xFF, Local0)
                Store (Local0, PX3H)
                Store (NBMR (Zero), Local0)
                Or (Local0, 0x08, Local0)
                Release (BR3X)
                Return (PX3L)
            }

            Name (CRES, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    0x00,, )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    0x00,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFFFDFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFFFE0000,         // Length
                    0x00,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xF0000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x10000000,         // Length
                    0x00,, _Y01, AddressRangeMemory, TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordMemory (ResourceConsumer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0xFFF00000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00100000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRES, \_SB.PCI0._Y00._MIN, BTMN)  // _MIN: Minimum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y00._MAX, BTMX)  // _MAX: Maximum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y00._LEN, BTLN)  // _LEN: Length
                CreateDWordField (CRES, \_SB.PCI0._Y01._MIN, BTN1)  // _MIN: Minimum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y01._MAX, BTX1)  // _MAX: Maximum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y01._LEN, BTL1)  // _LEN: Length
                Store (TOM (), BTMN)
                Subtract (BR3M (), BTMN, BTLN)
                Subtract (Add (BTMN, BTLN), One, BTMX)
                Store (PX3S, Local0)
                Add (Local0, BR3M (), Local0)
                Store (Local0, BTN1)
                Store (BTX1, Local1)
                Subtract (Local1, Local0, Local2)
                Store (Local2, BTL1)
                Return (CRES)
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (LEqual (GPIC, Zero))
                {
                    Return (PICM)
                }
                Else
                {
                    Return (APIC)
                }
            }

            Name (PICM, Package (0x0C)
            {
                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    Zero, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    One, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    0x02, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    0x03, 
                    LNKG, 
                    Zero
                }
            })
            Name (APIC, Package (0x09)
            {
                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    Zero, 
                    Zero, 
                    0x16
                }
            })
            Device (AGP)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LEqual (GPIC, Zero))
                    {
                        Return (PIC)
                    }
                    Else
                    {
                        Return (APIC)
                    }
                }

                Name (PIC, Package (0x04)
                {
                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        LNKB, 
                        Zero
                    }
                })
                Name (APIC, Package (0x04)
                {
                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        Zero, 
                        0x11
                    }
                })
                Device (VGA)
                {
                    Name (_ADR, 0x00050000)  // _ADR: Address
                    Name (DOSA, One)
                    Name (BCML, 0x64)
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        UDCS ()
                        UDGS ()
                    }

                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        Store (Arg0, DOSA)
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x03)
                        {
                            0x00010100, 
                            0x00010110, 
                            0x00010200
                        })
                    }

                    Device (CRT)
                    {
                        Name (_ADR, 0x0100)  // _ADR: Address
                        Name (_DCS, 0x1F)  // _DCS: Display Current Status
                        Name (_DGS, Zero)  // _DGS: Display Graphics State
                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (_DCS, 0xFFFFFFFD, _DCS)
                            And (Arg0, One, Local0)
                            ShiftLeft (Local0, One, Local0)
                            Or (_DCS, Local0, _DCS)
                        }
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Name (_DCS, 0x1F)  // _DCS: Display Current Status
                        Name (_DGS, Zero)  // _DGS: Display Graphics State
                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (_DCS, 0xFFFFFFFD, _DCS)
                            And (Arg0, One, Local0)
                            ShiftLeft (Local0, One, Local0)
                            Or (_DCS, Local0, _DCS)
                        }

                        Name (BRLV, Package (0x0A)
                        {
                            0x5A, 
                            0x23, 
                            0x0A, 
                            0x19, 
                            0x23, 
                            0x32, 
                            0x3C, 
                            0x4B, 
                            0x5A, 
                            0x64
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (BRLV)
                        }

                        Method (_BQC, 0, Serialized)  // _BQC: Brightness Query Current
                        {
                            Return (BCML)
                        }

                        Method (_BCM, 1, Serialized)  // _BCM: Brightness Control Method
                        {
                            Store (Arg0, BCML)
                            Store (SizeOf (BRLV), Local0)
                            While (Local0)
                            {
                                Decrement (Local0)
                                Store (DerefOf (Index (BRLV, Local0)), Local1)
                                If (LEqual (Arg0, Local1))
                                {
                                    Break
                                }
                            }

                            Subtract (Local0, 0x02, Local0)
                            Store (Local0, BRTL)
                            OSMI (0xA2)
                        }
                    }

                    Device (TV)
                    {
                        Name (_ADR, 0x0200)  // _ADR: Address
                        Name (_DCS, 0x0F)  // _DCS: Display Current Status
                        Name (_DGS, Zero)  // _DGS: Display Graphics State
                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (_DCS, 0xFFFFFFFD, _DCS)
                            And (Arg0, One, Local0)
                            ShiftLeft (Local0, One, Local0)
                            Or (_DCS, Local0, _DCS)
                        }
                    }

                    Method (UDCS, 0, NotSerialized)
                    {
                        And (^LCD._DCS, 0xFFFFFFFD, ^LCD._DCS)
                        And (^CRT._DCS, 0xFFFFFFFD, ^CRT._DCS)
                        And (^TV._DCS, 0xFFFFFFFD, ^TV._DCS)
                        OSMI (0xA8)
                        If (LEqual (CSTE, Zero))
                        {
                            Or (^LCD._DCS, 0x02, ^LCD._DCS)
                        }

                        If (LEqual (CSTE, One))
                        {
                            Or (^LCD._DCS, 0x02, ^LCD._DCS)
                            Or (^CRT._DCS, 0x02, ^CRT._DCS)
                        }

                        If (LEqual (CSTE, 0x02))
                        {
                            Or (^CRT._DCS, 0x02, ^CRT._DCS)
                        }

                        If (LEqual (CSTE, 0x03))
                        {
                            Or (^LCD._DCS, 0x02, ^LCD._DCS)
                            Or (^TV._DCS, 0x02, ^TV._DCS)
                        }

                        If (LEqual (CSTE, 0x04))
                        {
                            Or (^TV._DCS, 0x02, ^TV._DCS)
                        }
                    }

                    Method (UDGS, 0, NotSerialized)
                    {
                        And (^LCD._DGS, 0xFFFFFFFE, ^LCD._DGS)
                        And (^CRT._DGS, 0xFFFFFFFE, ^CRT._DGS)
                        And (^TV._DGS, 0xFFFFFFFE, ^TV._DGS)
                        And (^LCD._DCS, 0x02, Local1)
                        And (^CRT._DCS, 0x02, Local2)
                        And (^TV._DCS, 0x02, Local3)
                        ShiftRight (Local1, One, Local1)
                        ShiftLeft (Local3, One, Local3)
                        Or (Local1, Local2, Local1)
                        Or (Local1, Local3, Local1)
                        If (LEqual (Local1, One))
                        {
                            Store (Zero, Local0)
                        }

                        If (LEqual (Local1, 0x03))
                        {
                            Store (One, Local0)
                        }

                        If (LEqual (Local1, 0x02))
                        {
                            Store (0x02, Local0)
                        }

                        If (LEqual (Local1, 0x05))
                        {
                            Store (0x03, Local0)
                        }

                        If (LEqual (Local1, 0x04))
                        {
                            Store (0x04, Local0)
                        }

                        Increment (Local0)
                        If (LGreater (Local0, 0x04))
                        {
                            Store (Zero, Local0)
                        }

                        If (LEqual (Local0, Zero))
                        {
                            Or (^LCD._DGS, One, ^LCD._DGS)
                        }

                        If (LEqual (Local0, One))
                        {
                            Or (^LCD._DGS, One, ^LCD._DGS)
                            Or (^CRT._DGS, One, ^CRT._DGS)
                        }

                        If (LEqual (Local0, 0x02))
                        {
                            Or (^CRT._DGS, One, ^CRT._DGS)
                        }

                        If (LEqual (Local0, 0x03))
                        {
                            Or (^LCD._DGS, One, ^LCD._DGS)
                            Or (^TV._DGS, One, ^TV._DGS)
                        }

                        If (LEqual (Local0, 0x04))
                        {
                            Or (^TV._DGS, One, ^TV._DGS)
                        }

                        Store (Local0, NSTE)
                    }

                    Name (ATIB, Buffer (0x80) {})
                    Method (ATIF, 2, NotSerialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Return (AF00 ())
                        }

                        If (LEqual (Arg0, 0x05))
                        {
                            Return (AF05 ())
                        }

                        If (LEqual (Arg0, 0x06))
                        {
                            AF06 (Arg1)
                            Return (ATIB)
                        }
                        Else
                        {
                            CreateWordField (ATIB, Zero, SSZE)
                            CreateWordField (ATIB, 0x02, VERN)
                            CreateDWordField (ATIB, 0x04, NMSK)
                            CreateDWordField (ATIB, 0x08, SFUN)
                            Store (Zero, SSZE)
                            Store (Zero, VERN)
                            Store (Zero, NMSK)
                            Store (Zero, SFUN)
                            Return (ATIB)
                        }
                    }

                    Method (AF00, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateWordField (ATIB, 0x02, VERN)
                        CreateDWordField (ATIB, 0x04, NMSK)
                        CreateDWordField (ATIB, 0x08, SFUN)
                        Store (0x0C, SSZE)
                        Store (One, VERN)
                        Store (Zero, NMSK)
                        Store (0x30, SFUN)
                        Return (ATIB)
                    }

                    Method (AF05, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateByteField (ATIB, 0x02, TSEF)
                        CreateByteField (ATIB, 0x03, TVIF)
                        Store (0x04, SSZE)
                        Store (Zero, TSEF)
                        OSMI (0x56)
                        Store (PRM1, TVIF)
                        Return (ATIB)
                    }

                    Method (AF06, 1, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateByteField (ATIB, 0x02, TSEF)
                        CreateByteField (ATIB, 0x03, TVIF)
                        Store (0x04, SSZE)
                        Store (Zero, TSEF)
                        Store (Arg0, TVIF)
                        Store (TVIF, PRM0)
                        OSMI (0x57)
                    }
                }
            }

            Device (AGP1)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LEqual (GPIC, Zero))
                    {
                        Return (PIC)
                    }
                    Else
                    {
                        Return (APIC)
                    }
                }

                Name (PIC, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKB, 
                        Zero
                    }
                })
                Name (APIC, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x11
                    }
                })
                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (DOSA, One)
                    Name (BCML, 0x64)
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        UDCS ()
                        UDGS ()
                    }

                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        Store (Arg0, DOSA)
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x03)
                        {
                            0x00010100, 
                            0x00010110, 
                            0x00010200
                        })
                    }

                    Device (CRT)
                    {
                        Name (_ADR, 0x0100)  // _ADR: Address
                        Name (_DCS, 0x1F)  // _DCS: Display Current Status
                        Name (_DGS, Zero)  // _DGS: Display Graphics State
                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (_DCS, 0xFFFFFFFD, _DCS)
                            And (Arg0, One, Local0)
                            ShiftLeft (Local0, One, Local0)
                            Or (_DCS, Local0, _DCS)
                        }
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Name (_DCS, 0x1F)  // _DCS: Display Current Status
                        Name (_DGS, Zero)  // _DGS: Display Graphics State
                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (_DCS, 0xFFFFFFFD, _DCS)
                            And (Arg0, One, Local0)
                            ShiftLeft (Local0, One, Local0)
                            Or (_DCS, Local0, _DCS)
                        }

                        Name (BRLV, Package (0x0A)
                        {
                            0x5A, 
                            0x23, 
                            0x0A, 
                            0x19, 
                            0x23, 
                            0x32, 
                            0x3C, 
                            0x4B, 
                            0x5A, 
                            0x64
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (BRLV)
                        }

                        Method (_BQC, 0, Serialized)  // _BQC: Brightness Query Current
                        {
                            Return (BCML)
                        }

                        Method (_BCM, 1, Serialized)  // _BCM: Brightness Control Method
                        {
                            Store (Arg0, BCML)
                            Store (SizeOf (BRLV), Local0)
                            While (Local0)
                            {
                                Decrement (Local0)
                                Store (DerefOf (Index (BRLV, Local0)), Local1)
                                If (LEqual (Arg0, Local1))
                                {
                                    Break
                                }
                            }

                            Subtract (Local0, 0x02, Local0)
                            Store (Local0, BRTL)
                            OSMI (0xA2)
                        }
                    }

                    Device (TV)
                    {
                        Name (_ADR, 0x0200)  // _ADR: Address
                        Name (_DCS, 0x0F)  // _DCS: Display Current Status
                        Name (_DGS, Zero)  // _DGS: Display Graphics State
                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (_DCS, 0xFFFFFFFD, _DCS)
                            And (Arg0, One, Local0)
                            ShiftLeft (Local0, One, Local0)
                            Or (_DCS, Local0, _DCS)
                        }
                    }

                    Method (UDCS, 0, NotSerialized)
                    {
                        And (^LCD._DCS, 0xFFFFFFFD, ^LCD._DCS)
                        And (^CRT._DCS, 0xFFFFFFFD, ^CRT._DCS)
                        And (^TV._DCS, 0xFFFFFFFD, ^TV._DCS)
                        OSMI (0xA8)
                        If (LEqual (CSTE, Zero))
                        {
                            Or (^LCD._DCS, 0x02, ^LCD._DCS)
                        }

                        If (LEqual (CSTE, One))
                        {
                            Or (^LCD._DCS, 0x02, ^LCD._DCS)
                            Or (^CRT._DCS, 0x02, ^CRT._DCS)
                        }

                        If (LEqual (CSTE, 0x02))
                        {
                            Or (^CRT._DCS, 0x02, ^CRT._DCS)
                        }

                        If (LEqual (CSTE, 0x03))
                        {
                            Or (^LCD._DCS, 0x02, ^LCD._DCS)
                            Or (^TV._DCS, 0x02, ^TV._DCS)
                        }

                        If (LEqual (CSTE, 0x04))
                        {
                            Or (^TV._DCS, 0x02, ^TV._DCS)
                        }
                    }

                    Method (UDGS, 0, NotSerialized)
                    {
                        And (^LCD._DGS, 0xFFFFFFFE, ^LCD._DGS)
                        And (^CRT._DGS, 0xFFFFFFFE, ^CRT._DGS)
                        And (^TV._DGS, 0xFFFFFFFE, ^TV._DGS)
                        And (^LCD._DCS, 0x02, Local1)
                        And (^CRT._DCS, 0x02, Local2)
                        And (^TV._DCS, 0x02, Local3)
                        ShiftRight (Local1, One, Local1)
                        ShiftLeft (Local3, One, Local3)
                        Or (Local1, Local2, Local1)
                        Or (Local1, Local3, Local1)
                        If (LEqual (Local1, One))
                        {
                            Store (Zero, Local0)
                        }

                        If (LEqual (Local1, 0x03))
                        {
                            Store (One, Local0)
                        }

                        If (LEqual (Local1, 0x02))
                        {
                            Store (0x02, Local0)
                        }

                        If (LEqual (Local1, 0x05))
                        {
                            Store (0x03, Local0)
                        }

                        If (LEqual (Local1, 0x04))
                        {
                            Store (0x04, Local0)
                        }

                        Increment (Local0)
                        If (LGreater (Local0, 0x04))
                        {
                            Store (Zero, Local0)
                        }

                        If (LEqual (Local0, Zero))
                        {
                            Or (^LCD._DGS, One, ^LCD._DGS)
                        }

                        If (LEqual (Local0, One))
                        {
                            Or (^LCD._DGS, One, ^LCD._DGS)
                            Or (^CRT._DGS, One, ^CRT._DGS)
                        }

                        If (LEqual (Local0, 0x02))
                        {
                            Or (^CRT._DGS, One, ^CRT._DGS)
                        }

                        If (LEqual (Local0, 0x03))
                        {
                            Or (^LCD._DGS, One, ^LCD._DGS)
                            Or (^TV._DGS, One, ^TV._DGS)
                        }

                        If (LEqual (Local0, 0x04))
                        {
                            Or (^TV._DGS, One, ^TV._DGS)
                        }

                        Store (Local0, NSTE)
                    }

                    Name (ATIB, Buffer (0x80) {})
                    Method (ATIF, 2, NotSerialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Return (AF00 ())
                        }

                        If (LEqual (Arg0, 0x05))
                        {
                            Return (AF05 ())
                        }

                        If (LEqual (Arg0, 0x06))
                        {
                            AF06 (Arg1)
                            Return (ATIB)
                        }
                        Else
                        {
                            CreateWordField (ATIB, Zero, SSZE)
                            CreateWordField (ATIB, 0x02, VERN)
                            CreateDWordField (ATIB, 0x04, NMSK)
                            CreateDWordField (ATIB, 0x08, SFUN)
                            Store (Zero, SSZE)
                            Store (Zero, VERN)
                            Store (Zero, NMSK)
                            Store (Zero, SFUN)
                            Return (ATIB)
                        }
                    }

                    Method (AF00, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateWordField (ATIB, 0x02, VERN)
                        CreateDWordField (ATIB, 0x04, NMSK)
                        CreateDWordField (ATIB, 0x08, SFUN)
                        Store (0x0C, SSZE)
                        Store (One, VERN)
                        Store (Zero, NMSK)
                        Store (0x30, SFUN)
                        Return (ATIB)
                    }

                    Method (AF05, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateByteField (ATIB, 0x02, TSEF)
                        CreateByteField (ATIB, 0x03, TVIF)
                        Store (0x04, SSZE)
                        Store (Zero, TSEF)
                        OSMI (0x56)
                        Store (PRM1, TVIF)
                        Return (ATIB)
                    }

                    Method (AF06, 1, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateByteField (ATIB, 0x02, TSEF)
                        CreateByteField (ATIB, 0x03, TVIF)
                        Store (0x04, SSZE)
                        Store (Zero, TSEF)
                        Store (Arg0, TVIF)
                        Store (TVIF, PRM0)
                        OSMI (0x57)
                    }
                }
            }

            Device (PB4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
                OperationRegion (XPCB, PCI_Config, 0x58, 0x24)
                Field (XPCB, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    LKCN,   16, 
                    LKST,   16, 
                    Offset (0x1A), 
                    SLST,   16
                }

                OperationRegion (XPRI, PCI_Config, 0xE0, 0x08)
                Field (XPRI, ByteAcc, NoLock, Preserve)
                {
                    XPIR,   32, 
                    XPID,   32
                }

                OperationRegion (XPEX, SystemMemory, 0xE0020100, 0x0100)
                Field (XPEX, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    ECPH,   32, 
                    Offset (0x58), 
                    VC02,   32, 
                    VC0S,   32
                }

                Method (XPDL, 0, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (NBR2 ())
                    {
                        If (And (VC02, 0x00020000))
                        {
                            Store (Ones, Local0)
                        }
                    }
                    ElseIf (And (VC0S, 0x02))
                    {
                        Store (Ones, Local0)
                    }

                    Return (Local0)
                }

                Method (XPRD, 1, NotSerialized)
                {
                    Store (Arg0, XPIR)
                    Store (XPID, Local0)
                    Store (Zero, XPIR)
                    Return (Local0)
                }

                Method (XPWR, 2, NotSerialized)
                {
                    Store (Arg0, XPIR)
                    Store (Arg1, XPID)
                    Store (Zero, XPIR)
                }

                Method (XPRT, 0, NotSerialized)
                {
                    Store (XPRD (0xA2), Local0)
                    And (Local0, 0xFFFFFFF8, Local0)
                    ShiftRight (Local0, 0x04, Local1)
                    And (Local1, 0x07, Local1)
                    Or (Local0, Local1, Local0)
                    Or (Local0, 0x0100, Local0)
                    XPWR (0xA2, Local0)
                }

                Method (XPLP, 1, NotSerialized)
                {
                    Store (0x1010, Local1)
                    Store (NBXR (0x00010065), Local2)
                    If (Arg0)
                    {
                        And (Local2, Not (Local1), Local2)
                    }
                    Else
                    {
                        Or (Local2, Local1, Local2)
                    }

                    NBXW (0x00010065, Local2)
                }

                Method (XPR2, 0, NotSerialized)
                {
                    Store (LKCN, Local0)
                    And (Local0, 0xFFFFFFDF, Local0)
                    Store (Local0, LKCN)
                    Or (Local0, 0x20, Local0)
                    Store (Local0, LKCN)
                    Store (0x64, Local1)
                    Store (One, Local2)
                    While (LAnd (Local1, Local2))
                    {
                        Sleep (One)
                        Store (LKST, Local3)
                        If (And (Local3, 0x0800))
                        {
                            Decrement (Local1)
                        }
                        Else
                        {
                            Store (Zero, Local2)
                        }
                    }

                    And (Local0, 0xFFFFFFDF, Local0)
                    Store (Local0, LKCN)
                    If (LNot (Local2))
                    {
                        Return (Ones)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (LEqual (WKPM, One))
                    {
                        Return (GPRW (0x12, 0x05))
                    }
                    Else
                    {
                        Return (GPRW (0x12, Zero))
                    }
                }

                Device (NCRD)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (PCF1, PCI_Config, Zero, 0x08)
                    Field (PCF1, DWordAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        PCMS,   32
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (GE2S)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x10
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x13
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                LNKA, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                LNKD, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (PB5)
            {
                Name (_ADR, 0x00050000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x13
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x10
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                LNKD, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                LNKA, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (PB6)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (LEqual (WKPM, One))
                    {
                        Return (GPRW (0x12, 0x05))
                    }
                    Else
                    {
                        Return (GPRW (0x12, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x13
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x10
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x11
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                LNKD, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                LNKA, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                LNKB, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (HPET)
            {
                Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (^^SMBS.HPAD, Ones))
                    {
                        If (LEqual (OSYS, 0x07D6))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (BUF0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y02)
                    })
                    CreateDWordField (BUF0, \_SB.PCI0.HPET._CRS._Y02._BAS, HPEB)  // _BAS: Base Address
                    Store (^^SMBS.HPAD, Local0)
                    And (Local0, 0xFFFFFFC0, HPEB)
                    Return (BUF0)
                }
            }

            Device (AZAL)
            {
                Name (_ADR, 0x00140002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x1B, 0x03))
                }
            }

            Device (USB0)
            {
                Name (_ADR, 0x00130000)  // _ADR: Address
                OperationRegion (U0CS, PCI_Config, 0xC4, 0x04)
                Field (U0CS, DWordAcc, NoLock, Preserve)
                {
                    U0EN,   2
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x03))
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U0EN)
                    }
                    Else
                    {
                        Store (Zero, U0EN)
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
            }

            Device (USB1)
            {
                Name (_ADR, 0x00130001)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x03))
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
            }

            Device (USB2)
            {
                Name (_ADR, 0x00130002)  // _ADR: Address
                OperationRegion (U2CS, PCI_Config, 0xC4, 0x04)
                Field (U2CS, DWordAcc, NoLock, Preserve)
                {
                    U2EN,   2
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x03))
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U2EN)
                    }
                    Else
                    {
                        Store (Zero, U2EN)
                    }
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
            }

            Device (USB3)
            {
                Name (_ADR, 0x00130003)  // _ADR: Address
                OperationRegion (U3CS, PCI_Config, 0xC4, 0x04)
                Field (U3CS, DWordAcc, NoLock, Preserve)
                {
                    U3EN,   2
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
            }

            Device (USB4)
            {
                Name (_ADR, 0x00130004)  // _ADR: Address
                OperationRegion (U4CS, PCI_Config, 0xC4, 0x04)
                Field (U4CS, DWordAcc, NoLock, Preserve)
                {
                    U4EN,   2
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                {
                    Return (0x02)
                }

                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
            }

            Device (USB5)
            {
                Name (_ADR, 0x00130005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x03))
                }

                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    Zero, 
                    0xFF, 
                    Zero, 
                    Zero
                })
            }

            Device (SMBS)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (IRQF, PCI_Config, Zero, 0xFF)
                Field (IRQF, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    RVID,   8, 
                    Offset (0x14), 
                    HPAD,   32, 
                    Offset (0x62), 
                    IRQK,   1, 
                    IRQM,   1, 
                    Offset (0x63), 
                    Offset (0xAD), 
                    SA1E,   1, 
                        ,   3, 
                    SA2E,   1
                }

                OperationRegion (GPIO, PCI_Config, Zero, 0x0100)
                Field (GPIO, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x50), 
                    G49O,   1, 
                    G50O,   1, 
                    G51O,   1, 
                    G52O,   1, 
                    G49E,   1, 
                    G50E,   1, 
                    G51E,   1, 
                    G52E,   1, 
                    Offset (0x52), 
                        ,   3, 
                    BTRS,   1, 
                    Offset (0x56), 
                        ,   3, 
                    G64O,   1, 
                        ,   3, 
                    G64E,   1, 
                    Offset (0x7E), 
                        ,   1, 
                    G66O,   1, 
                        ,   3, 
                    G66E,   1, 
                    Offset (0x7F), 
                        ,   1, 
                    G66S,   1, 
                    Offset (0x80), 
                        ,   3, 
                    G03O,   1, 
                        ,   3, 
                    G03E,   1, 
                        ,   3, 
                    G03S,   1, 
                    Offset (0x82), 
                    G13O,   1, 
                        ,   3, 
                    G13E,   1, 
                    Offset (0xA6), 
                        ,   3, 
                    G48O,   1, 
                        ,   3, 
                    G48E,   1, 
                    Offset (0xA8), 
                        ,   1, 
                    G05O,   1, 
                        ,   1, 
                    G07O,   1, 
                    G08O,   1, 
                    G09O,   1, 
                    NCPW,   1, 
                    Offset (0xA9), 
                        ,   1, 
                    G05E,   1, 
                        ,   1, 
                    G07E,   1, 
                    G08E,   1, 
                    G09E,   1, 
                    Offset (0xAA), 
                        ,   3, 
                    G07S,   1
                }
            }

            Device (LPC0)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (LAnd (^^^SMBS.HPAD, Ones))
                        {
                            Return (BUF0)
                        }

                        Return (BUF1)
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (LAnd (^^^SMBS.HPAD, Ones))
                        {
                            Return (BUF0)
                        }

                        Return (BUF1)
                    }
                }

                Device (KBC0)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (LEqual (TPID, One))
                        {
                            Return (0x130FD041)
                        }

                        Return (0x13192E4F)
                    }

                    Name (_CID, Package (0x03)  // _CID: Compatible ID
                    {
                        EisaId ("SYN1900"), 
                        EisaId ("SYN0002"), 
                        EisaId ("PNP0F13")
                    })
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                }

                Device (SYSR)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0068,             // Range Minimum
                            0x0068,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x006C,             // Range Minimum
                            0x006C,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0xD0,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D6,             // Range Minimum
                            0x04D6,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x05A0,             // Range Minimum
                            0x05A0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x077A,             // Range Minimum
                            0x077A,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C00,             // Range Minimum
                            0x0C00,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C14,             // Range Minimum
                            0x0C14,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C50,             // Range Minimum
                            0x0C50,             // Range Maximum
                            0x01,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0C6C,             // Range Minimum
                            0x0C6C,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C6F,             // Range Minimum
                            0x0C6F,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0CD0,             // Range Minimum
                            0x0CD0,             // Range Maximum
                            0x01,               // Alignment
                            0x0C,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0B10,             // Range Minimum
                            0x0B10,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0CDC,             // Range Minimum
                            0x0CDC,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                    })
                }

                Device (MEM)
                {
                    Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                    Name (MSRC, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x000A0000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x000EC000,         // Address Base
                            0x00014000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00100000,         // Address Base
                            0x08000000,         // Address Length
                            _Y03)
                        Memory32Fixed (ReadWrite,
                            0xE0000000,         // Address Base
                            0x10000000,         // Address Length
                            _Y04)
                        Memory32Fixed (ReadWrite,
                            0xFEC00000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFEE00000,         // Address Base
                            0x00001000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y03._LEN, EMLN)  // _LEN: Length
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y04._BAS, PEBS)  // _BAS: Base Address
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y04._LEN, PELN)  // _LEN: Length
                        Subtract (TOM (), 0x00100000, EMLN)
                        Store (BR3M (), PEBS)
                        Store (PX3S, PELN)
                        Return (MSRC)
                    }
                }

                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                    Name (_GPE, 0x07)  // _GPE: General Purpose Events
                    Name (ECOK, Zero)
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            If (LEqual (Arg1, One))
                            {
                                Store (One, ECOK)
                                If (LGreater (OSYS, 0x07D5))
                                {
                                    WREC (0xDB, One, Zero, One)
                                    FLNK (0x14, One)
                                    Store (One, HKEM)
                                    WREC (0xDB, 0x10, 0x04, One)
                                    Store (One, HSEM)
                                    WREC (0xDB, 0x20, 0x05, One)
                                    If (LNotEqual (EVCT, Zero))
                                    {
                                        FLNK (0x11, EVCT)
                                        Store (And (SWB0, 0xFF), HSWK)
                                        Store (Zero, SWB0)
                                    }

                                    FLNK (0x10, One)
                                    FLNK (0x15, 0xFF)
                                }
                                Else
                                {
                                    WREC (0xDB, One, Zero, Zero)
                                    FLNK (0x15, 0xFF)
                                }
                            }
                            Else
                            {
                                Store (Zero, ECOK)
                            }
                        }
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (RDEC (0x9C, 0xFF, Zero), Local0)
                        And (Local0, 0x7F, Local0)
                        STEV (Local0)
                        Notify (\_TZ.THZN, 0x80)
                    }

                    Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (ADP0, Zero)
                        Notify (BAT0, 0x80)
                        Notify (BAT0, 0x81)
                    }

                    Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (LID, 0x80)
                    }

                    Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        _Q13 ()
                    }

                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^^^AGP.VGA.DOSA)
                        {
                            OSMI (0xA7)
                            ^^^AGP.VGA.UDCS ()
                        }
                        Else
                        {
                            ^^^AGP.VGA.UDCS ()
                            Notify (^^^AGP.VGA, 0x80)
                        }

                        ^^^AGP.VGA.UDGS ()
                    }

                    Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (Zero, ^^^AGP.VGA.CRT._DGS)
                        Store (One, ^^^AGP.VGA.LCD._DGS)
                        _Q25 ()
                    }

                    Method (_Q28, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (ECOK)
                        {
                            If (LEqual (And (EC93, 0x30), 0x30))
                            {
                                WREC (0x93, 0x80, 0x07, One)
                                WREC (0x93, 0x40, 0x06, One)
                                Store (One, ^^^SMBS.BTRS)
                                FLNK (0x16, 0xFA)
                            }
                        }

                        Notify (BT, Zero)
                    }

                    Method (_Q29, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (ECOK)
                        {
                            If (LEqual (And (EC93, 0x30), 0x30))
                            {
                                WREC (0x93, 0x80, 0x07, Zero)
                                WREC (0x93, 0x40, 0x06, Zero)
                                Store (Zero, ^^^SMBS.BTRS)
                                FLNK (0x16, 0xF9)
                            }
                        }
                    }

                    Method (_Q31, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                    }

                    Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (RDEC (0x9C, 0xFF, Zero), Local0)
                        And (Local0, 0x7F, Local0)
                        STEV (Local0)
                        Notify (\_TZ.THZN, 0x81)
                    }

                    Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (And (CPUS, 0x80), Local0)
                        Store (And (CPUS, 0x7F), Local1)
                        If (LEqual (Local0, Zero))
                        {
                            If (LEqual (THRF, Zero))
                            {
                                Store (CPUL, ACPS)
                            }
                            Else
                            {
                                Decrement (Local1)
                                Store (Local1, ACPS)
                            }
                        }

                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                    }

                    Method (_Q59, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        FLNK (0x16, 0xFB)
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LLess (OSYS, 0x07D6))
                        {
                            Notify (FWEX, 0x80)
                        }
                        ElseIf (TSBK)
                        {
                            Notify (VALZ, 0x80)
                        }
                        ElseIf (LNotEqual (EVCT, Zero))
                        {
                            FLNK (0x11, EVCT)
                            Store (And (SWB0, 0xFF), Local0)
                            Store (Zero, SWB0)
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (HSB1, 0x80)
                    }

                    Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (HSB2, 0x80)
                    }

                    Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (^^^AGP.VGA.LCD, 0x87)
                    }

                    Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (^^^AGP.VGA.LCD, 0x86)
                    }

                    Method (_Q99, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Name (HPOK, Zero)
                        If (LNot (GE2S))
                        {
                            Sleep (0x14)
                            Store ("HotPlug:04: Removal Event", Debug)
                            Store (0x08, ^^^PB4.SLST)
                            Store (^^^PB4.NCRD.DVID, Local7)
                            Sleep (0x0A)
                            Store (One, Local4)
                            Store (0x05, Local5)
                            While (LAnd (Local4, Local5))
                            {
                                Store (^^^PB4.XPRD (0xA5), Local6)
                                And (Local6, 0x3F, Local6)
                                If (LLessEqual (Local6, 0x04))
                                {
                                    Store (Zero, Local4)
                                }
                                Else
                                {
                                    Store (^^^PB4.NCRD.DVID, Local7)
                                    Sleep (0x05)
                                    Decrement (Local5)
                                }
                            }

                            XPTR (0x04, Zero)
                            ^^^PB4.XPLP (Zero)
                            Store (One, HPOK)
                        }
                        Else
                        {
                            Store (One, ^^^SMBS.NCPW)
                            Sleep (0x14)
                            Store ("HotPlug:04: Insertion Event", Debug)
                            Store (Zero, HPOK)
                            ^^^PB4.XPLP (One)
                            Sleep (0xC8)
                            XPTR (0x04, One)
                            Sleep (0x14)
                            Store (Zero, Local2)
                            While (LLess (Local2, 0x0F))
                            {
                                Store (0x08, ^^^PB4.SLST)
                                Store (One, Local4)
                                Store (0xC8, Local5)
                                While (LAnd (Local4, Local5))
                                {
                                    Store (^^^PB4.XPRD (0xA5), Local6)
                                    And (Local6, 0x3F, Local6)
                                    If (LEqual (Local6, 0x10))
                                    {
                                        Store ("HotPlug:04: TrainingState=0x10", Debug)
                                        Store (Zero, Local4)
                                    }
                                    Else
                                    {
                                        Sleep (0x05)
                                        Decrement (Local5)
                                    }
                                }

                                If (LNot (Local4))
                                {
                                    Store ("HotPlug:04: Check VC Negotiation Pending", Debug)
                                    Store (^^^PB4.XPDL (), Local5)
                                    If (Local5)
                                    {
                                        Store ("HotPlug:04: Retraining Link", Debug)
                                        ^^^PB4.XPRT ()
                                        Sleep (0x05)
                                        Increment (Local2)
                                    }
                                    Else
                                    {
                                        Store ("HotPlug:04: Device OK", Debug)
                                        If (LEqual (^^^PB4.XPR2 (), Ones))
                                        {
                                            Store (One, HPOK)
                                            Store (0x10, Local2)
                                        }
                                        Else
                                        {
                                            Store ("HotPlug:04: Common Clock Retraining Failed", Debug)
                                            Store (Zero, HPOK)
                                            Store (0x10, Local2)
                                        }
                                    }
                                }
                                Else
                                {
                                    Store ("HotPlug:04: TrainingState Timeout", Debug)
                                    Store (0x10, Local2)
                                }
                            }

                            If (LNot (HPOK))
                            {
                                Store ("HotPlug:04: Insertion Failed: Disable Training & PowerDown", Debug)
                                Store (^^^PB4.NCRD.DVID, Local7)
                                Sleep (0x0A)
                                Store (One, Local4)
                                Store (0x05, Local5)
                                While (LAnd (Local4, Local5))
                                {
                                    Store (^^^PB4.XPRD (0xA5), Local6)
                                    And (Local6, 0x3F, Local6)
                                    If (LLessEqual (Local6, 0x04))
                                    {
                                        Store (Zero, Local4)
                                    }
                                    Else
                                    {
                                        Store (^^^PB4.NCRD.DVID, Local7)
                                        Sleep (0x05)
                                        Decrement (Local5)
                                    }
                                }

                                XPTR (0x04, Zero)
                                ^^^PB4.XPLP (Zero)
                            }
                        }

                        If (HPOK)
                        {
                            Notify (PB4, Zero)
                        }
                    }
                }
            }

            Device (P2P)
            {
                Name (_ADR, 0x00140004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (LEqual (WKPM, One))
                    {
                        Return (GPRW (0x04, 0x05))
                    }
                    Else
                    {
                        Return (GPRW (0x04, Zero))
                    }
                }

                OperationRegion (PCPC, PCI_Config, Zero, 0xFF)
                Field (PCPC, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x04), 
                    PCMD,   8, 
                    Offset (0x1C), 
                    IOW1,   8, 
                    IOW2,   8, 
                    Offset (0x48), 
                    PR48,   8, 
                    PR49,   8, 
                    PR4A,   8, 
                    PR4B,   8
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LEqual (GPIC, Zero))
                    {
                        Return (PIC)
                    }
                    Else
                    {
                        Return (APIC)
                    }
                }

                Name (PIC, Package (0x02)
                {
                    Package (0x04)
                    {
                        0x0006FFFF, 
                        Zero, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0006FFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }
                })
                Name (APIC, Package (0x02)
                {
                    Package (0x04)
                    {
                        0x0006FFFF, 
                        Zero, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0006FFFF, 
                        One, 
                        Zero, 
                        0x15
                    }
                })
            }

            Device (SATA)
            {
                Name (_ADR, 0x00120000)  // _ADR: Address
                Name (B5EN, Zero)
                Name (BA_5, Zero)
                OperationRegion (SATX, PCI_Config, Zero, 0x28)
                Field (SATX, AnyAcc, NoLock, Preserve)
                {
                    VIDI,   32, 
                    Offset (0x24), 
                    BA05,   32
                }

                Method (GBAA, 0, NotSerialized)
                {
                    Store (BA_5, B5EN)
                    If (LOr (LEqual (BA_5, Ones), LEqual (BA_5, Zero)))
                    {
                        Store (Zero, B5EN)
                        Return (0xFFF80000)
                    }
                    Else
                    {
                        Store (One, B5EN)
                        Return (BA_5)
                    }
                }

                OperationRegion (BAR5, SystemMemory, GBAA (), 0x1000)
                Field (BAR5, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x120), 
                        ,   7, 
                    PMBY,   1, 
                    Offset (0x128), 
                    PMS0,   4, 
                    Offset (0x129), 
                    PMS1,   4, 
                    Offset (0x12C), 
                    DET0,   4, 
                    Offset (0x130), 
                    Offset (0x132), 
                    PRC0,   1, 
                    Offset (0x1A0), 
                        ,   7, 
                    SMBY,   1, 
                    Offset (0x1A8), 
                    SMS0,   4, 
                    Offset (0x1A9), 
                    SMS1,   4, 
                    Offset (0x1AC), 
                    DET1,   4, 
                    Offset (0x1B0), 
                    Offset (0x1B2), 
                    PRC1,   1, 
                    Offset (0x220), 
                        ,   7, 
                    PSBY,   1, 
                    Offset (0x228), 
                    PSS0,   4, 
                    Offset (0x229), 
                    PSS1,   4, 
                    Offset (0x22C), 
                    DET2,   4, 
                    Offset (0x230), 
                    Offset (0x232), 
                    PRC2,   1, 
                    Offset (0x2A0), 
                        ,   7, 
                    SSBY,   1, 
                    Offset (0x2A8), 
                    SSS0,   4, 
                    Offset (0x2A9), 
                    SSS1,   4, 
                    Offset (0x2AC), 
                    DET3,   4, 
                    Offset (0x2B0), 
                    Offset (0x2B2), 
                    PRC3,   1
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (BA05, BA_5)
                    GBAA ()
                    \_GPE._L1F ()
                }

                Device (PRID)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (SPTM, Buffer (0x14)
                    {
                        /* 0000 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,
                        /* 0008 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,
                        /* 0010 */  0x1F, 0x00, 0x00, 0x00                         
                    })
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM)
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, SPTM)
                    }

                    Name (PRIS, Zero)
                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        If (LEqual (OSYS, 0x07D6))
                        {
                            Store (0x32, Local0)
                            While (LAnd (LEqual (PMBY, One), Local0))
                            {
                                Sleep (0xFA)
                                Decrement (Local0)
                            }
                        }

                        Store (Zero, PRIS)
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        Store (0x03, PRIS)
                    }

                    Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                    {
                        Return (PRIS)
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Store (BA05, BA_5)
                            GBAA ()
                            If (LEqual (B5EN, Zero))
                            {
                                Return (Zero)
                            }

                            If (Not (LEqual (PMS1, Zero)))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            Store (Zero, S12P)
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            Store (0x03, S12P)
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P)
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Store (Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF       
                                }, Local0)
                            Return (Local0)
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Store (BA05, BA_5)
                            GBAA ()
                            If (LEqual (B5EN, Zero))
                            {
                                Return (Zero)
                            }

                            If (Not (LEqual (SMS1, Zero)))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            Store (Zero, S12P)
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            Store (0x03, S12P)
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P)
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Store (Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF       
                                }, Local0)
                            Return (Local0)
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (SPTM, Buffer (0x14)
                    {
                        /* 0000 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,
                        /* 0008 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,
                        /* 0010 */  0x1F, 0x00, 0x00, 0x00                         
                    })
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM)
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, SPTM)
                    }

                    Name (SECS, Zero)
                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        If (LEqual (OSYS, 0x07D6))
                        {
                            Store (0x32, Local0)
                            While (LAnd (LEqual (SMBY, One), Local0))
                            {
                                Sleep (0xFA)
                                Decrement (Local0)
                            }
                        }

                        Store (Zero, SECS)
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        Store (0x03, SECS)
                    }

                    Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                    {
                        Return (SECS)
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Store (BA05, BA_5)
                            GBAA ()
                            If (LEqual (B5EN, Zero))
                            {
                                Return (Zero)
                            }

                            If (Not (LEqual (PSS1, Zero)))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            Store (Zero, S12P)
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            Store (0x03, S12P)
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P)
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Store (Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF       
                                }, Local0)
                            Return (Local0)
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Store (BA05, BA_5)
                            GBAA ()
                            If (LEqual (B5EN, Zero))
                            {
                                Return (Zero)
                            }

                            If (Not (LEqual (SSS0, Zero)))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            Store (Zero, S12P)
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            Store (0x03, S12P)
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P)
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Store (Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF       
                                }, Local0)
                            Return (Local0)
                        }
                    }
                }
            }

            Scope (\_GPE)
            {
                Method (_L1F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                {
                    Sleep (0x07D0)
                    Store (\_SB.PCI0.SATA.BA05, \_SB.PCI0.SATA.BA_5)
                    \_SB.PCI0.SATA.GBAA ()
                    If (\_SB.PCI0.SATA.B5EN)
                    {
                        If (\_SB.PCI0.SATA.PRC0)
                        {
                            If (Not (LEqual (\_SB.PCI0.SATA.PMS1, Zero)))
                            {
                                Sleep (0x1E)
                            }

                            Notify (\_SB.PCI0.SATA.PRID.P_D0, One)
                            Store (One, \_SB.PCI0.SATA.PRC0)
                        }

                        If (\_SB.PCI0.SATA.PRC1)
                        {
                            If (Not (LEqual (\_SB.PCI0.SATA.SMS1, Zero)))
                            {
                                Sleep (0x1E)
                            }

                            Notify (\_SB.PCI0.SATA.SECD.S_D0, One)
                            Store (One, \_SB.PCI0.SATA.PRC1)
                        }

                        If (\_SB.PCI0.SATA.PRC2)
                        {
                            If (Not (LEqual (\_SB.PCI0.SATA.PSS1, Zero)))
                            {
                                Sleep (0x1E)
                            }

                            Notify (\_SB.PCI0.SATA.PRID.P_D1, One)
                            Store (One, \_SB.PCI0.SATA.PRC2)
                        }

                        If (\_SB.PCI0.SATA.PRC3)
                        {
                            If (Not (LEqual (\_SB.PCI0.SATA.SSS1, Zero)))
                            {
                                Sleep (0x1E)
                            }

                            Notify (\_SB.PCI0.SATA.SECD.S_D1, One)
                            Store (One, \_SB.PCI0.SATA.PRC3)
                        }
                    }
                }
            }

            Device (IDE)
            {
                Name (_ADR, 0x00140001)  // _ADR: Address
                Name (UDMT, Package (0x08)
                {
                    0x78, 
                    0x5A, 
                    0x3C, 
                    0x2D, 
                    0x1E, 
                    0x14, 
                    Zero, 
                    Zero
                })
                Name (PIOT, Package (0x06)
                {
                    0x0258, 
                    0x0186, 
                    0x010E, 
                    0xB4, 
                    0x78, 
                    Zero
                })
                Name (PITR, Package (0x06)
                {
                    0x99, 
                    0x47, 
                    0x34, 
                    0x22, 
                    0x20, 
                    0x99
                })
                Name (MDMT, Package (0x04)
                {
                    0x01E0, 
                    0x96, 
                    0x78, 
                    Zero
                })
                Name (MDTR, Package (0x04)
                {
                    0x77, 
                    0x21, 
                    0x20, 
                    0xFF
                })
                OperationRegion (IDE, PCI_Config, 0x40, 0x20)
                Field (IDE, WordAcc, NoLock, Preserve)
                {
                    PPIT,   16, 
                    SPIT,   16, 
                    PMDT,   16, 
                    SMDT,   16, 
                    PPIC,   8, 
                    SPIC,   8, 
                    PPIM,   8, 
                    SPIM,   8, 
                    Offset (0x14), 
                    PUDC,   2, 
                    SUDC,   2, 
                    Offset (0x16), 
                    PUDM,   8, 
                    SUDM,   8
                }

                Method (GETT, 1, NotSerialized)
                {
                    Store (And (Arg0, 0x0F), Local0)
                    Store (ShiftRight (Arg0, 0x04), Local1)
                    Return (Multiply (0x1E, Add (Add (Local0, One), Add (Local1, One))))
                }

                Method (GTM, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, PIT1)
                    CreateByteField (Arg0, One, PIT0)
                    CreateByteField (Arg0, 0x02, MDT1)
                    CreateByteField (Arg0, 0x03, MDT0)
                    CreateByteField (Arg0, 0x04, PICX)
                    CreateByteField (Arg0, 0x05, UDCX)
                    CreateByteField (Arg0, 0x06, UDMX)
                    Name (BUF, Buffer (0x14)
                    {
                        /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (BUF, Zero, PIO0)
                    CreateDWordField (BUF, 0x04, DMA0)
                    CreateDWordField (BUF, 0x08, PIO1)
                    CreateDWordField (BUF, 0x0C, DMA1)
                    CreateDWordField (BUF, 0x10, FLAG)
                    If (And (PICX, One))
                    {
                        Return (BUF)
                    }

                    Store (GETT (PIT0), PIO0)
                    Store (GETT (PIT1), PIO1)
                    If (And (UDCX, One))
                    {
                        Or (FLAG, One, FLAG)
                        Store (DerefOf (Index (UDMT, And (UDMX, 0x0F))), DMA0)
                    }
                    ElseIf (LNotEqual (MDT0, 0xFF))
                    {
                        Store (GETT (MDT0), DMA0)
                    }

                    If (And (UDCX, 0x02))
                    {
                        Or (FLAG, 0x04, FLAG)
                        Store (DerefOf (Index (UDMT, ShiftRight (UDMX, 0x04))), DMA1)
                    }
                    ElseIf (LNotEqual (MDT1, 0xFF))
                    {
                        Store (GETT (MDT1), DMA1)
                    }

                    Or (FLAG, 0x1A, FLAG)
                    Return (BUF)
                }

                Method (STM, 3, NotSerialized)
                {
                    CreateDWordField (Arg0, Zero, PIO0)
                    CreateDWordField (Arg0, 0x04, DMA0)
                    CreateDWordField (Arg0, 0x08, PIO1)
                    CreateDWordField (Arg0, 0x0C, DMA1)
                    CreateDWordField (Arg0, 0x10, FLAG)
                    Name (BUF, Buffer (0x07)
                    {
                         0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00       
                    })
                    CreateByteField (BUF, Zero, PIT1)
                    CreateByteField (BUF, One, PIT0)
                    CreateByteField (BUF, 0x02, MDT1)
                    CreateByteField (BUF, 0x03, MDT0)
                    CreateByteField (BUF, 0x04, PIMX)
                    CreateByteField (BUF, 0x05, UDCX)
                    CreateByteField (BUF, 0x06, UDMX)
                    Store (Match (PIOT, MLE, PIO0, MTR, Zero, Zero), Local0)
                    Divide (Local0, 0x05, Local0)
                    Store (Match (PIOT, MLE, PIO1, MTR, Zero, Zero), Local1)
                    Divide (Local1, 0x05, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), PIMX)
                    Store (DerefOf (Index (PITR, Local0)), PIT0)
                    Store (DerefOf (Index (PITR, Local1)), PIT1)
                    If (And (FLAG, One))
                    {
                        Store (Match (UDMT, MLE, DMA0, MTR, Zero, Zero), Local0)
                        Divide (Local0, 0x06, Local0)
                        Or (UDMX, Local0, UDMX)
                        Or (UDCX, One, UDCX)
                    }
                    ElseIf (LNotEqual (DMA0, Ones))
                    {
                        Store (Match (MDMT, MLE, DMA0, MTR, Zero, Zero), Local0)
                        Store (DerefOf (Index (MDTR, Local0)), MDT0)
                    }

                    If (And (FLAG, 0x04))
                    {
                        Store (Match (UDMT, MLE, DMA1, MTR, Zero, Zero), Local0)
                        Divide (Local0, 0x06, Local0)
                        Or (UDMX, ShiftLeft (Local0, 0x04), UDMX)
                        Or (UDCX, 0x02, UDCX)
                    }
                    ElseIf (LNotEqual (DMA1, Ones))
                    {
                        Store (Match (MDMT, MLE, DMA1, MTR, Zero, Zero), Local0)
                        Store (DerefOf (Index (MDTR, Local0)), MDT1)
                    }

                    Return (BUF)
                }

                Method (GTF, 2, NotSerialized)
                {
                    CreateByteField (Arg1, Zero, MDT1)
                    CreateByteField (Arg1, One, MDT0)
                    CreateByteField (Arg1, 0x02, PIMX)
                    CreateByteField (Arg1, 0x03, UDCX)
                    CreateByteField (Arg1, 0x04, UDMX)
                    If (LEqual (Arg0, 0xA0))
                    {
                        Store (And (PIMX, 0x0F), Local0)
                        Store (MDT0, Local1)
                        And (UDCX, One, Local2)
                        Store (And (UDMX, 0x0F), Local3)
                    }
                    Else
                    {
                        Store (ShiftRight (PIMX, 0x04), Local0)
                        Store (MDT1, Local1)
                        And (UDCX, 0x02, Local2)
                        Store (ShiftRight (UDMX, 0x04), Local3)
                    }

                    Name (BUF, Buffer (0x0E)
                    {
                        /* 0000 */  0x03, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF, 0x03,
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF             
                    })
                    CreateByteField (BUF, One, PMOD)
                    CreateByteField (BUF, 0x08, DMOD)
                    CreateByteField (BUF, 0x05, CMDA)
                    CreateByteField (BUF, 0x0C, CMDB)
                    Store (Arg0, CMDA)
                    Store (Arg0, CMDB)
                    Or (Local0, 0x08, PMOD)
                    If (Local2)
                    {
                        Or (Local3, 0x40, DMOD)
                    }
                    ElseIf (LNotEqual (Local1, 0xFF))
                    {
                        Store (Match (MDMT, MLE, GETT (Local1), MTR, Zero, Zero), Local4)
                        If (LLess (Local4, 0x03))
                        {
                            Or (0x20, Local4, DMOD)
                        }
                    }

                    Return (BUF)
                }

                Device (PRID)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00       
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIC)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        Store (PPIT, VPIT)
                        Store (PMDT, VMDT)
                        Store (PPIC, VPIC)
                        Store (PUDC, VUDC)
                        Store (PUDM, VUDM)
                        Return (GTM (BUF))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIM)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        Store (STM (Arg0, Arg1, Arg2), BUF)
                        Store (VPIT, PPIT)
                        Store (VMDT, PMDT)
                        Store (VPIM, PPIM)
                        Store (VUDC, PUDC)
                        Store (VUDM, PUDM)
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                   
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            Store (PMDT, VMDT)
                            Store (PPIM, VPIM)
                            Store (PUDC, VUDC)
                            Store (PUDM, VUDM)
                            Return (GTF (0xA0, BUF))
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                   
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            Store (PMDT, VMDT)
                            Store (PPIM, VPIM)
                            Store (PUDC, VUDC)
                            Store (PUDM, VUDM)
                            Return (GTF (0xB2, BUF))
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00       
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIC)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        Store (SPIT, VPIT)
                        Store (SMDT, VMDT)
                        Store (SPIC, VPIC)
                        Store (SUDC, VUDC)
                        Store (SUDM, VUDM)
                        Return (GTM (BUF))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIM)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        Store (STM (Arg0, Arg1, Arg2), BUF)
                        Store (VPIT, SPIT)
                        Store (VMDT, SMDT)
                        Store (VPIM, SPIM)
                        Store (VUDC, SUDC)
                        Store (VUDM, SUDM)
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                   
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            Store (SMDT, VMDT)
                            Store (SPIM, VPIM)
                            Store (SUDC, VUDC)
                            Store (SUDM, VUDM)
                            Return (GTF (0xA0, BUF))
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                   
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            Store (SMDT, VMDT)
                            Store (SPIM, VPIM)
                            Store (SUDC, VUDC)
                            Store (SUDM, VUDM)
                            Return (GTF (0xB2, BUF))
                        }
                    }
                }
            }
        }

        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRS,   8, 
            Offset (0x09), 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8
        }

        Method (DSPI, 0, NotSerialized)
        {
            Store (Zero, PIRA)
            Store (Zero, PIRB)
            Store (Zero, PIRC)
            Store (Zero, PIRD)
            Store (Zero, PIRE)
            Store (Zero, PIRF)
            Store (Zero, PIRG)
            Store (Zero, PIRH)
            Store (Zero, PIRS)
        }

        Name (PRS1, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,7,10,11,12,14,15}
        })
        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Name (IPRA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRD, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRA)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (Zero, PIRA)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRA, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRA)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRB)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (Zero, PIRB)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRB, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRB)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRC)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (Zero, PIRC)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRC, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRC)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRD)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (Zero, PIRD)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRD, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRD)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRE)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (Zero, PIRE)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRE, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRE)
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRF)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (Zero, PIRF)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRF, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRF)
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRG)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (Zero, PIRG)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRG, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRG)
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRH)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Store (Zero, PIRH)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                ShiftLeft (One, PIRH, IRQX)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRH)
            }
        }

        Method (GSMI, 1, NotSerialized)
        {
            Store (Arg0, APMD)
            Store (0xE4, APMC)
        }

        Method (S80H, 1, NotSerialized)
        {
            Store (Arg0, APMD)
            Store (0xE5, APMC)
        }

        Method (OSMI, 1, NotSerialized)
        {
            Store (Arg0, APMD)
            Store (0xBE, APMC)
        }
    }

    Name (CTPB, Buffer (0x0D)
    {
        /* 0000 */  0x2A, 0x30, 0x31, 0x38, 0x39, 0x40, 0x41, 0x48,
        /* 0008 */  0x51, 0x58, 0x55, 0x61, 0x66                   
    })
    Name (MTPB, Buffer (0x0D)
    {
        /* 0000 */  0x2A, 0x30, 0x39, 0x40, 0x42, 0x48, 0x4D, 0x54,
        /* 0008 */  0x4D, 0x54, 0x58, 0x61, 0x66                   
    })
    Name (PTPB, Buffer (0x0D)
    {
        /* 0000 */  0x2A, 0x30, 0x39, 0x40, 0x42, 0x48, 0x4D, 0x54,
        /* 0008 */  0x4D, 0x54, 0x49, 0x52, 0x66                   
    })
    Name (BTPB, Buffer (0x0D)
    {
        /* 0000 */  0x35, 0x3C, 0x3D, 0x41, 0x45, 0x4C, 0x50, 0x57,
        /* 0008 */  0x50, 0x57, 0x43, 0x49, 0x66                   
    })
    Name (TPOK, Zero)
    Name (PLCY, One)
    Name (CTMP, Zero)
    Name (TFST, Zero)
    Name (EAC1, 0x2A)
    Name (TMPL, 0x2A)
    Name (TMPH, 0x30)
    Name (CFSP, Zero)
    Name (PASH, 0x62)
    Name (PASL, 0x5A)
    Name (CTTP, 0x69)
    Method (STEV, 1, NotSerialized)
    {
        CreateByteField (CTPB, Zero, TPL0)
        CreateByteField (CTPB, One, TPH0)
        CreateByteField (CTPB, 0x02, TPL1)
        CreateByteField (CTPB, 0x03, TPH1)
        CreateByteField (CTPB, 0x04, TPL2)
        CreateByteField (CTPB, 0x05, TPH2)
        CreateByteField (CTPB, 0x06, TPL3)
        CreateByteField (CTPB, 0x07, TPH3)
        CreateByteField (CTPB, 0x08, TPL4)
        CreateByteField (CTPB, 0x09, TPH4)
        CreateByteField (CTPB, 0x0A, PSPL)
        CreateByteField (CTPB, 0x0B, PSPH)
        CreateByteField (CTPB, 0x0C, CRTT)
        Store (TPL0, EAC1)
        Store (Arg0, Local0)
        If (LLess (Local0, TPH0))
        {
            Store (Zero, TMPL)
            Store (TPH0, TMPH)
            Store (Zero, CFSP)
        }
        ElseIf (LAnd (LLess (Local0, TPH1), LGreater (Local0, TPL0)))
        {
            Store (TPL0, TMPL)
            Store (TPH1, TMPH)
            Store (One, CFSP)
        }
        ElseIf (LAnd (LLess (Local0, TPH2), LGreater (Local0, TPL1)))
        {
            Store (TPL1, TMPL)
            Store (TPH2, TMPH)
            Store (0x02, CFSP)
        }
        ElseIf (LAnd (LLess (Local0, TPH3), LGreater (Local0, TPL2)))
        {
            Store (TPL2, TMPL)
            Store (TPH3, TMPH)
            Store (0x03, CFSP)
        }
        ElseIf (LAnd (LLess (Local0, TPH4), LGreater (Local0, TPL3)))
        {
            Store (TPL3, TMPL)
            Store (TPH4, TMPH)
            Store (0x04, CFSP)
        }
        Else
        {
            Store (TPL4, TMPL)
            Store (CRTT, TMPH)
            Store (0x04, CFSP)
        }

        WREC (0x9D, 0xFF, Zero, TMPL)
        WREC (0x9E, 0xFF, Zero, TMPH)
        WREC (0xA0, 0xFF, Zero, CFSP)
    }

    Name (F1ST, Zero)
    Scope (_TZ)
    {
        PowerResource (PFA1, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (F1ST)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                Store (One, F1ST)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                Store (Zero, F1ST)
            }
        }

        Device (FAN1)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PFA1
            })
        }

        ThermalZone (THZN)
        {
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PCI0.LPC0.EC0.ECOK)
                {
                    Store (RDEC (0x9C, 0xFF, Zero), Local0)
                    And (Local0, 0x7F, Local0)
                    Store (Local0, CTMP)
                    If (LEqual (TPOK, Zero))
                    {
                        Store (RDEC (0x9D, 0xFF, Zero), Local1)
                        Store (RDEC (0x9E, 0xFF, Zero), Local2)
                    }

                    Return (Add (0x0AAC, Multiply (CTMP, 0x0A)))
                }
                Else
                {
                    Return (0x0C80)
                }
            }

            Method (_AC1, 0, NotSerialized)  // _ACx: Active Cooling
            {
                Store (EAC1, Local0)
                Add (Local0, 0x0111, Local0)
                Multiply (Local0, 0x0A, Local0)
                Return (Local0)
            }

            Name (_AL1, Package (0x01)  // _ALx: Active List
            {
                FAN1
            })
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (Add (0x0AAC, Multiply (CTTP, 0x0A)))
            }

            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, PLCY)
            }

            Name (_PSL, Package (0x01)  // _PSL: Passive List
            {
                \_PR.CPU0
            })
            Name (_TSP, 0x96)  // _TSP: Thermal Sampling Period
        }
    }
}

