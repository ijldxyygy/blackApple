/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT2.aml, Sat Jul 13 00:07:39 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000971 (2417)
 *     Revision         0x02
 *     Checksum         0x60
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "Ther_Rvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "ALASKA", "Ther_Rvp", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.AAC0, UnknownObj)    // (from opcode)
    External (_SB_.ACRT, UnknownObj)    // (from opcode)
    External (_SB_.APSV, UnknownObj)    // (from opcode)
    External (_SB_.DTS1, UnknownObj)    // (from opcode)
    External (_SB_.DTS2, UnknownObj)    // (from opcode)
    External (_SB_.DTS3, UnknownObj)    // (from opcode)
    External (_SB_.DTS4, UnknownObj)    // (from opcode)
    External (_SB_.DTSE, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.THOT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.XHPP, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PDTS, UnknownObj)    // (from opcode)
    External (_SB_.PKGA, UnknownObj)    // (from opcode)
    External (_SB_.PR00, UnknownObj)    // (from opcode)
    External (_SB_.PR01, UnknownObj)    // (from opcode)
    External (_SB_.PR02, UnknownObj)    // (from opcode)
    External (_SB_.PR03, UnknownObj)    // (from opcode)
    External (_SB_.PR04, UnknownObj)    // (from opcode)
    External (_SB_.PR05, UnknownObj)    // (from opcode)
    External (_SB_.PR06, UnknownObj)    // (from opcode)
    External (_SB_.PR07, UnknownObj)    // (from opcode)
    External (_SB_.PR08, UnknownObj)    // (from opcode)
    External (_SB_.PR09, UnknownObj)    // (from opcode)
    External (_SB_.PR10, UnknownObj)    // (from opcode)
    External (_SB_.PR11, UnknownObj)    // (from opcode)
    External (_SB_.PR12, UnknownObj)    // (from opcode)
    External (_SB_.PR13, UnknownObj)    // (from opcode)
    External (_SB_.PR14, UnknownObj)    // (from opcode)
    External (_SB_.PR15, UnknownObj)    // (from opcode)
    External (AC0F, IntObj)    // (from opcode)
    External (AC1F, IntObj)    // (from opcode)
    External (ACT1, IntObj)    // (from opcode)
    External (ACTT, IntObj)    // (from opcode)
    External (CRTT, IntObj)    // (from opcode)
    External (CTYP, IntObj)    // (from opcode)
    External (DPTF, IntObj)    // (from opcode)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (PSVT, IntObj)    // (from opcode)
    External (TC1V, IntObj)    // (from opcode)
    External (TC2V, IntObj)    // (from opcode)
    External (TCNT, IntObj)    // (from opcode)
    External (TSPV, IntObj)    // (from opcode)
    External (VFN0, IntObj)    // (from opcode)
    External (VFN1, IntObj)    // (from opcode)
    External (VFN2, IntObj)    // (from opcode)
    External (VFN3, IntObj)    // (from opcode)
    External (VFN4, IntObj)    // (from opcode)

    Scope (\_TZ)
    {
        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, \CTYP)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_SB.ACRT))
                {
                    If (LNotEqual (\_SB.ACRT, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_SB.ACRT, 0x0A)))
                    }
                }

                If (LEqual (DPTF, Zero))
                {
                    Return (Add (0x0AAC, Multiply (\CRTT, 0x0A)))
                }
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling
            {
                If (CondRefOf (\_SB.AAC0))
                {
                    If (LNotEqual (\_SB.AAC0, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_SB.AAC0, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\ACTT, 0x0A)))
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (Add (0x0AAC, Multiply (\ACT1, 0x0A)))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x32))
            }

            Method (_AC3, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x64))
            }

            Method (_AC4, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x96))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (CondRefOf (\_SB.DTSE))
                {
                    If (LEqual (\_SB.DTSE, 0x03))
                    {
                        Return (Add (0x0B10, Multiply (\CRTT, 0x0A)))
                    }
                }

                If (CondRefOf (\_SB.DTSE))
                {
                    If (LEqual (\_SB.DTSE, One))
                    {
                        If (LEqual (\_SB.PKGA, One))
                        {
                            Store (\_SB.PDTS, Local0)
                            Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                        }

                        Store (\_SB.DTS1, Local0)
                        If (LGreater (\_SB.DTS2, Local0))
                        {
                            Store (\_SB.DTS2, Local0)
                        }

                        If (LGreater (\_SB.DTS3, Local0))
                        {
                            Store (\_SB.DTS3, Local0)
                        }

                        If (LGreater (\_SB.DTS4, Local0))
                        {
                            Store (\_SB.DTS4, Local0)
                        }

                        Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                    }
                }

                If (LNotEqual (\_SB.PCI0.LPCB.EC0.THOT, Zero))
                {
                    Store (Zero, \_SB.PCI0.LPCB.EC0.THOT)
                    If (CondRefOf (\_SB.ACRT))
                    {
                        If (LNotEqual (\_SB.ACRT, Zero))
                        {
                            Return (Add (0x0AAC, Multiply (\_SB.ACRT, 0x0A)))
                        }
                    }

                    Subtract (\CRTT, 0x05, Local0)
                    Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                }
                Else
                {
                    Store (\_SB.PCI0.LPCB.EC0.XHPP, Local0)
                    Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                }

                Return (0x0BC2)
            }

            Method (XPSL, 0, Serialized)
            {
                If (LEqual (\TCNT, 0x10))
                {
                    Return (Package (0x10)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11, 
                        \_SB.PR12, 
                        \_SB.PR13, 
                        \_SB.PR14, 
                        \_SB.PR15
                    })
                }

                If (LEqual (\TCNT, 0x0E))
                {
                    Return (Package (0x0E)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11, 
                        \_SB.PR12, 
                        \_SB.PR13
                    })
                }

                If (LEqual (\TCNT, 0x0C))
                {
                    Return (Package (0x0C)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11
                    })
                }

                If (LEqual (\TCNT, 0x0A))
                {
                    Return (Package (0x0A)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09
                    })
                }

                If (LEqual (\TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07
                    })
                }

                If (LEqual (\TCNT, 0x07))
                {
                    Return (Package (0x07)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06
                    })
                }

                If (LEqual (\TCNT, 0x06))
                {
                    Return (Package (0x06)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05
                    })
                }

                If (LEqual (\TCNT, 0x05))
                {
                    Return (Package (0x05)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04
                    })
                }

                If (LEqual (\TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03
                    })
                }

                If (LEqual (\TCNT, 0x03))
                {
                    Return (Package (0x03)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02
                    })
                }

                If (LEqual (\TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_SB.PR00, 
                        \_SB.PR01
                    })
                }

                Return (Package (0x01)
                {
                    \_SB.PR00
                })
            }

            Method (XPSV, 0, Serialized)
            {
                If (CondRefOf (\_SB.APSV))
                {
                    If (LNotEqual (\_SB.APSV, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_SB.APSV, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\PSVT, 0x0A)))
            }

            Method (XTC1, 0, Serialized)
            {
                Return (\TC1V)
            }

            Method (XTC2, 0, Serialized)
            {
                Return (\TC2V)
            }

            Method (XTSP, 0, Serialized)
            {
                Return (\TSPV)
            }
        }
    }
}

