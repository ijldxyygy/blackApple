//
DefinitionBlock ("", "SSDT", 2, "hack", "BAT0", 0x00000000)
{
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.B1ST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT0, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT0.BASC, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.ECMT, MutexObj)
    External (_SB_.PCI0.LPCB.H_EC.ECON, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.MAMW, MethodObj)    
    External (_SB_.PCI0.LPCB.H_EC.VPC0, DeviceObj)

    Scope (_SB.PCI0.LPCB.H_EC)
    {
        OperationRegion (ECFX, EmbeddedControl, Zero, 0xFF)
        Field (ECFX, ByteAcc, Lock, Preserve)
        {
            Offset (0x0E), 
            ,   8, 
            ,   8, 
            ,   16,
            ML00,   8, 
            ML01,   8, 
            ,   16,
            AV00,   8, 
            AV01,   8, 
            AC00,   8, 
            AC01,   8, 
            ,   8, 
            Offset (0x1C), 
            RC00,   8, 
            RC01,   8, 
            TP00,   8, 
            TP01,   8, 
            CC00,   8, 
            CC01,   8, 
            ,   16, 
            ,   16,
            FC00,   8, 
            FC01,   8, 
            DC00,   8, 
            DC01,   8, 
            DV00,   8, 
            DV01,   8, 
            MD00,   8, 
            MD01,   8, 
            ,   16, 
            ,   96, 
            ,   16, 
            ,   16, 
            ,   8, 
            Offset (0x42), 
            ,   8, 
            ,   8, 
            Offset (0x4A), 
            ,   8, 
            ,   8, 
            Offset (0x4D), 
            ,   8, 
            Offset (0x50), 
            ,   8,  
            Offset (0x52), 
            ,   8, 
            ,   8, 
            Offset (0x64), 
            ,   1, 
            ,   1, 
            Offset (0x65), 
            ,   4, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   8,             
            Offset (0x8B), 
            ,   8, 
            ,   64, 
            HEM0,   8, 
            HEM1,   8, 
            HEM2,   8, 
            HEM3,   8, 
            ,   16, 
            ,   16, 
            TE00,   8, 
            TE01,   8, 
            TF00,   8, 
            TF01,   8, 
            ,   64, 
            ,   128, 
            Offset (0xC6)

        }
    }

    Scope (_SB.PCI0.LPCB.H_EC.VPC0)
    {
        Method (MHIF, 1, NotSerialized)
        {
            Name (BFWI, Buffer (0x0A){})
            CreateField (BFWI, Zero, 0x10, RES)
            CreateField (BFWI, 0x10, 0x40, ECI)
            Store (Arg0, Local0)
            If (LAnd (Local0, One))
            {
                Store (Zero, BFWI) /* \_SB_.PCI0.LPCB.H_EC.VPC0.MHIF.BFWI */
            }
            Else
            {
                MAMW (0x8E, 0xE0)
                Store (Zero, RES) /* \_SB_.PCI0.LPCB.H_EC.VPC0.MHIF.RES_ */
                Store (RECB (0xA0, 0x40), ECI) /* \_SB_.PCI0.LPCB.H_EC.VPC0.MHIF.ECI_ */
            }

            Return (BFWI) /* \_SB_.PCI0.LPCB.H_EC.VPC0.MHIF.BFWI */
        }

        Method (SMTF, 0, Serialized)
        {
            Name (ATTF, Buffer (0x04){})
            Store (B1B2 (TF00, TF01), ATTF) /* \_SB_.PCI0.LPCB.H_EC.VPC0.SMTF.ATTF */
            Return (ATTF) /* \_SB_.PCI0.LPCB.H_EC.VPC0.SMTF.ATTF */
        }

        Method (GSBI, 0, Serialized)
        {
            Name (BATE, Buffer (0x53){})
            CreateField (BATE, Zero, 0x10, BUF1)
            CreateField (BATE, 0x10, 0x10, BUF2)
            CreateField (BATE, 0x20, 0x10, BUF3)
            CreateField (BATE, 0x30, 0x10, BUF4)
            CreateField (BATE, 0x40, 0x10, BUF5)
            CreateField (BATE, 0x50, 0x10, BUF6)
            CreateField (BATE, 0x60, 0x10, BUF7)
            CreateField (BATE, 0x70, 0x10, BUF8)
            CreateField (BATE, 0x80, 0x10, BUF9)
            CreateField (BATE, 0x90, 0x10, BUFA)
            CreateField (BATE, 0xA0, 0x10, BUFB)
            CreateField (BATE, 0xB0, 0x50, BUFC)
            CreateField (BATE, 0x0100, 0x40, BUFD)
            CreateField (BATE, 0x0140, 0x60, BUFE)
            CreateField (BATE, 0x01A0, 0xB8, BUFF)
            CreateField (BATE, 0x0258, 0x40, BUFG)
            Store (B1B2 (DC00, DC01), BUF1) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUF1 */
            Store (B1B2 (FC00, FC01), BUF2) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUF2 */
            Store (B1B2 (RC00, RC01), BUF3) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUF3 */
            Store (B1B2 (TE00, TE01), BUF4) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUF4 */
            Store (B1B2 (TF00, TF01), BUF5) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUF5 */
            Store (B1B2 (AV00, AV01), BUF6) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUF6 */
            Store (B1B2 (CC00, CC01), BUF7) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUF7 */
            Store (B1B2 (TP00, TP01), BUF8) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUF8 */
            Store (B1B2 (MD00, MD01), BUF9) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUF9 */
            Store (0xFFFF, BUFA) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUFA */
            Store (B1B2 (DV00, DV01), BUFB) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUFB */
            Store (B1B4 (HEM0, HEM1, HEM2, HEM3), BUFC) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUFC */
            Store (RECB (0x8C, 0x40), BUFD) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUFD */
            Store (RECB (0x30, 0x60), BUFE) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUFE */
            Store (RECB (0xA8, 0x80), BUFF) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUFF */
            Store (RECB (0xA0, 0x40), BUFG) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BUFG */
            Return (BATE) /* \_SB_.PCI0.LPCB.H_EC.VPC0.GSBI.BATE */
        }
    }

    Scope (_SB.PCI0.LPCB.H_EC.BAT0)
    {
        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
        {
            Name (BPKG, Package (0x0D)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                Zero, 
                Zero, 
                0x0100, 
                0x40, 
                "BASE-BAT", 
                "12345678", 
                "LiP", 
                "LENOVO"
            })
            If (ECON)
            {
                Acquire (ECMT, 0xFFFF)
                Store (B1B2 (ML00, ML01), Local1)
                And (Local1, 0x8000, Local1)
                If (LEqual (Local1, 0x8000))
                {
                    Store (0x0A, BASC) 
                    Store (Zero, Index (BPKG, Zero))
                }
                Else
                {
                    Store (One, BASC) 
                    Store (One, Index (BPKG, Zero))
                }

                Multiply (B1B2 (DC00, DC01), BASC, Index (BPKG, One))
                Multiply (B1B2 (FC00, FC01), BASC, Index (BPKG, 0x02))
                Store (B1B2 (DV00, DV01), Index (BPKG, 0x04))
                If (B1B2 (FC00, FC01))
                {
                    Divide (Multiply (B1B2 (FC00, FC01), BASC), 0x0A, , Index (BPKG, 0x05
                        ))
                    Divide (Multiply (B1B2 (FC00, FC01), BASC), 0x19, , Index (BPKG, 0x06
                        ))
                    Divide (Multiply (B1B2 (DC00, DC01), BASC), 0x64, , Index (BPKG, 0x07
                        ))
                }

                Release (ECMT)
            }

            Return (BPKG) 
        }

        Method (_BST, 0, NotSerialized)  
        {
            Name (PKG1, Package (0x04)
            {
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            If (ECON)
            {
                Sleep (0x14)
                And (B1ST, 0x07, Index (PKG1, Zero))
                Sleep (0x14)
                If (And (B1ST, One))
                {
                    Sleep (0x14)
                    Add (Not (And (B1B2 (AC00, AC01), 0xFFFF)), One, Local0)
                }
                Else
                {
                    Sleep (0x14)
                    Store (B1B2 (AC00, AC01), Local0)
                }

                Store (B1B2 (ML00, ML01), Local1)
                And (Local1, 0x8000, Local1)
                If (LEqual (Local1, 0x8000))
                {
                    Divide (Multiply (Local0, B1B2 (AV00, AV01)), 0x03E8, , Local0)
                }

                Store (Local0, Index (PKG1, One))
                Sleep (0x14)
                Multiply (B1B2 (RC00, RC01), BASC, Index (PKG1, 0x02))
                Store (B1B2 (AV00, AV01), Index (PKG1, 0x03))
            }

            Return (PKG1) 
        }
    }

    Method (RE1B, 1, NotSerialized)
    {
        OperationRegion (ERAM, EmbeddedControl, Arg0, One)
        Field (ERAM, ByteAcc, NoLock, Preserve)
        {
            BYTE,   8
        }

        Return (BYTE) 
    }

    Method (RECB, 2, Serialized)
    {
        ShiftRight (Arg1, 0x03, Arg1)
        Name (TEMP, Buffer (Arg1){})
        Add (Arg0, Arg1, Arg1)
        Store (Zero, Local0)
        While (LLess (Arg0, Arg1))
        {
            Store (RE1B (Arg0), Index (TEMP, Local0))
            Increment (Arg0)
            Increment (Local0)
        }

        Return (TEMP) 
    }

    Method (B1B2, 2, NotSerialized)
    {
        Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
    }

    Method (B1B4, 4, NotSerialized)
    {
        Store (Arg3, Local0)
        Or (Arg2, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg1, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg0, ShiftLeft (Local0, 0x08), Local0)
        Return (Local0)
    }
}

