/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of DSDT.aml, Fri May  5 12:27:08 2017
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00009960 (39264)
 *     Revision         0x02
 *     Checksum         0xD8
 *     OEM ID           "TOSINV"
 *     OEM Table ID     "TOSINV00"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x01000013 (16777235)
 */
DefinitionBlock ("", "DSDT", 2, "TOSINV", "TOSINV00", 0x00000001)
{
    /*
     * iASL Warning: There were 5 external control methods found during
     * disassembly, but only 0 were resolved (5 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0.IEIT.EITV, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (CFGD, IntObj)
    External (ECST, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (HDOS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (HNOT, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)
    External (TNOT, MethodObj)    // Warning: Unknown method, guessing 0 arguments

    Name (SP2O, 0x4E)
    Name (SP1O, 0x2E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0600)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED1B000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xF0000000)
    Name (PELN, 0x04000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0xEFA0)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, Zero)
    Name (SHPC, One)
    Name (PEPM, Zero)
    Name (PEER, Zero)
    Name (PECS, Zero)
    Name (ITKE, Zero)
    Name (FHPP, One)
    Name (DSSP, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (BRF, One)
    Name (BPH, 0x02)
    Name (BLC, 0x03)
    Name (BRFS, 0x04)
    Name (BPHS, 0x05)
    Name (BLCT, 0x06)
    Name (BRF4, 0x07)
    Name (BEP, 0x08)
    Name (BBF, 0x09)
    Name (BOF, 0x0A)
    Name (BPT, 0x0B)
    Name (SRAF, 0x0C)
    Name (WWP, 0x0D)
    Name (SDOE, 0x0E)
    Name (TRTP, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (SMBL, 0x10)
    Name (TCGM, One)
    OperationRegion (GNVS, SystemMemory, 0xBF7BEE18, 0x00000174)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        COMA,   8, 
        COMB,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SDGV,   8, 
        SDDV,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        DPBM,   8, 
        DPCM,   8, 
        DPDM,   8, 
        ALFP,   8, 
        IMON,   8, 
        S3DS,   8, 
        PMEE,   8
    }

    OperationRegion (OGNS, SystemMemory, 0xBF7BDC98, 0x00000228)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        ACPS,   8, 
        CPUS,   8, 
        CPUL,   8, 
        ECRO,   8, 
        ECRM,   8, 
        ECRS,   8, 
        ECRD,   8, 
        Offset (0x08), 
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
        SWB0,   32, 
        SWB1,   32, 
        SWB2,   32, 
        SWB3,   32, 
        SWB4,   32, 
        SWB5,   32, 
        SWB6,   32, 
        SWB7,   32, 
        KYB0,   32, 
        Offset (0x4E), 
        IEC0,   8, 
        IEC1,   8, 
        IEC2,   8, 
        CECC,   8, 
        CECE,   32, 
        CECI,   16, 
        CECZ,   8, 
        CECF,   8, 
        CEC1,   32, 
        CEC2,   32, 
        CEC3,   32, 
        CEC4,   32, 
        CEC5,   32, 
        LENA,   8, 
        LENB,   8, 
        LENC,   8, 
        LEND,   8, 
        IFNK,   640, 
        ICMD,   2560, 
        RESL,   32, 
        RESV,   16, 
        USC1,   32, 
        USC2,   32, 
        VGAM,   8, 
        USBM,   32, 
        TPID,   8, 
        NODD,   8, 
        IHDD,   8, 
        TJET,   8, 
        CPUM,   8, 
        POLI,   8, 
        TCCR,   8, 
        TEST,   8, 
        LCDA,   8, 
        PWM0,   8, 
        PWM1,   8, 
        PWM2,   8, 
        PWM3,   8, 
        PWM4,   8, 
        PWM5,   8, 
        PWM6,   8, 
        PWM7,   8, 
        EJLL,   8, 
        EJLR,   8
    }

    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        Offset (0x2E), 
        KYBF,   8, 
        KYBA,   248
    }

    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        Offset (0x0E), 
        SWBF,   256, 
        KYBB,   256, 
        Offset (0x72), 
        F0CM,   8, 
        JFNK,   224, 
        CYCC,   16, 
        BTV1,   32, 
        BTV2,   32, 
        ILLU,   8
    }

    Name (ECOK, One)
    Name (INIF, Zero)
    Name (CAGA, Package (0x0D)
    {
        Zero
    })
    Name (CAGB, Package (0x12)
    {
        Zero
    })
    Name (CAGC, Package (0x1E)
    {
        Zero
    })
    Name (CAGD, Package (0x13)
    {
        Zero
    })
    Name (FNKC, Buffer (0x50)
    {
         0x00                                           
    })
    Name (RETP, Package (0x06)
    {
        Zero
    })
    Name (USAC, Zero)
    Name (BTCG, One)
    Name (PWBS, Zero)
    Name (ACBS, Zero)
    Name (ACBW, Zero)
    Name (FTBT, Zero)
    Name (PEGL, Zero)
    Name (LIDA, Zero)
    Name (CRT3, Zero)
    Mutex (MUTS, 0x00)
    Mutex (MUTE, 0x00)
    OperationRegion (WNBD, SystemMemory, 0xFF800100, 0x0100)
    Field (WNBD, ByteAcc, Lock, Preserve)
    {
        Offset (0x02), 
        LRPM,   8, 
        HRPM,   8, 
        RCPU,   8, 
        EVCT,   8, 
        Offset (0x08), 
            ,   4, 
            ,   1, 
        ECSL,   1, 
        POFL,   1, 
        Offset (0x09), 
        WMEC,   8, 
        VGAT,   8, 
        THRF,   3, 
            ,   1, 
        PR10,   4, 
        Offset (0x11), 
        BCM1,   40, 
        Offset (0x17), 
        FKST,   2, 
        Offset (0x40), 
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
        ECDF,   8, 
        ECE2,   8, 
        ECE3,   8, 
        Offset (0x6F), 
        HDS0,   16, 
        HDS1,   16, 
        HDST,   16, 
        HDSS,   8, 
        BCM2,   64, 
        PHC1,   32, 
        PHC2,   32, 
        BATI,   8, 
        PHC3,   32, 
        PHC4,   32, 
        PWMS,   8, 
        B1VT,   16, 
        B1CC,   16, 
        B1TP,   8, 
        MFAN,   16, 
        EVTC,   4, 
        Offset (0x98), 
        ADVT,   8, 
        ACCA,   8, 
        ACCR,   16, 
        CTHI,   8, 
        CTLO,   8, 
        HSRL,   8, 
        BSS1,   8, 
        BSS2,   8, 
            ,   1, 
        FBFG,   4, 
        FBS3,   1, 
        DVLK,   1, 
        Offset (0xA2), 
        PWRT,   8, 
        Offset (0xA6), 
        EWRB,   32, 
        ERDB,   32, 
        Offset (0xB0), 
        BCV1,   16, 
        BCV2,   32, 
        Offset (0xC1), 
        COOL,   2, 
        Offset (0xC2), 
        SCRI,   1, 
        Offset (0xC3), 
        PNID,   8, 
        Offset (0xFE), 
        OVLA,   1
    }

    Method (RDEC, 3, Serialized)
    {
        Acquire (MUTE, 0xFFFF)
        Store (Arg0, ECRO)
        Store (Arg1, ECRM)
        Store (Arg2, ECRS)
        FLNK (0xFF, 0x0E)
        Store (ECRD, Local0)
        Release (MUTE)
        Return (Local0)
    }

    Method (WREC, 4, Serialized)
    {
        Acquire (MUTE, 0xFFFF)
        Store (Arg0, ECRO)
        Store (Arg1, ECRM)
        Store (Arg2, ECRS)
        Store (Arg3, ECRD)
        FLNK (0xFF, 0x0F)
        Release (MUTE)
    }

    Method (FLNK, 2, Serialized)
    {
        If (LEqual (IECC, Zero))
        {
            Add (IEC2, 0x03, IEC2)
            Decrement (IEC1)
            Subtract (IEC0, 0x0B, IEC0)
            Store (One, IECC)
        }

        If (LEqual (Arg0, 0xFF))
        {
            Store (Arg1, SVCF)
        }
        Else
        {
            Store (Arg1, SWB0)
        }

        Store (Arg0, LCMD)
        Store (0xFF, APMD)
        Store (0xE3, APMC)
        Return (And (SWB0, 0xFF))
    }

    Method (TINC, 2, NotSerialized)
    {
        CreateDWordField (Arg1, Arg0, DCMD)
        Return (DCMD)
    }

    Method (TINI, 0, NotSerialized)
    {
        Name (TMPB, Buffer (0x0154)
        {
             0x00                                           
        })
        FLNK (0xFF, Zero)
        CopyObject (ICMD, TMPB)
        Store (Zero, Local2)
        Store (Zero, Local1)
        While (LLess (Local1, LENA))
        {
            Store (TINC (Local2, TMPB), Local0)
            Store (Local0, Index (CAGA, Local1))
            Add (Local2, 0x04, Local2)
            Increment (Local1)
        }

        Store (Zero, Local1)
        While (LLess (Local1, LENB))
        {
            Store (TINC (Local2, TMPB), Local0)
            Store (Local0, Index (CAGB, Local1))
            Add (Local2, 0x04, Local2)
            Increment (Local1)
        }

        Store (Zero, Local1)
        While (LLess (Local1, LENC))
        {
            Store (TINC (Local2, TMPB), Local0)
            Store (Local0, Index (CAGC, Local1))
            Add (Local2, 0x04, Local2)
            Increment (Local1)
        }

        Store (Zero, Local1)
        While (LLess (Local1, LEND))
        {
            Store (TINC (Local2, TMPB), Local0)
            Store (Local0, Index (CAGD, Local1))
            Add (Local2, 0x04, Local2)
            Increment (Local1)
        }

        Store (IFNK, FNKC)
        Store (Zero, ICMD)
        Store (Zero, IFNK)
        If (And (EC94, One))
        {
            If (BTCG)
            {
                Store (One, F0CM)
                FLNK (0xFF, Zero)
                Store (Zero, BTCG)
            }
        }
    }

    Method (PARG, 1, NotSerialized)
    {
        CreateDWordField (Arg0, Zero, LARG)
        Return (LARG)
    }

    Method (CKIF, 0, NotSerialized)
    {
        If (LEqual (INIF, Zero))
        {
            Acquire (MUTS, 0xFFFF)
            Store (0x0F, ILLU)
            TINI ()
            Release (MUTS)
            Store (One, INIF)
        }
    }

    Name (RETA, Package (0x06)
    {
        Zero
    })
    Name (HDSP, 0x0F)
    Name (HDSB, Zero)
    Method (GRPA, 6, Serialized)
    {
        Store (DerefOf (Index (CAGD, Zero)), Local7)
        Store (DerefOf (Index (CAGD, 0x04)), Local6)
        Store (DerefOf (Index (CAGD, 0x05)), Local5)
        Store (DerefOf (Index (CAGD, 0x0D)), Local4)
        Store (DerefOf (Index (CAGD, 0x03)), Index (RETA, Zero))
        Store (Local7, Index (RETA, One))
        Store (Local7, Index (RETA, 0x02))
        Store (Local7, Index (RETA, 0x03))
        Store (Local7, Index (RETA, 0x04))
        Store (Local7, Index (RETA, 0x05))
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Store (Arg0, _T_0)
        If (LEqual (_T_0, 0x02))
        {
            If (LEqual (Arg2, Zero))
            {
                Store (DerefOf (Index (CAGD, 0x06)), Index (RETA, 0x03))
                Store (Local7, Index (RETA, Zero))
            }
            ElseIf (LEqual (Arg2, 0xFFFF))
            {
                Store (0x0200, Index (RETA, 0x03))
                Store (Local7, Index (RETA, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x03))
        {
            If (LEqual (Arg2, Zero))
            {
                And (Arg3, 0xFFFF, Local0)
                ShiftLeft (Add (ShiftRight (Local0, 0x08), And (Local0, 0xFF)), 0x10, Local1)
                Add (Local1, Local0, Local1)
                Acquire (MUTS, 0xFFFF)
                FLNK (Arg1, Local1)
                If (LEqual (SWB0, Zero))
                {
                    Store (Local0, Index (CAGD, 0x06))
                    Store (Local7, Index (RETA, Zero))
                }

                Release (MUTS)
            }
        }
        Else
        {
            Store (DerefOf (Index (CAGD, 0x02)), Index (RETA, Zero))
        }

        Return (RETA)
    }

    Method (GRPB, 7, Serialized)
    {
        Store (DerefOf (Index (CAGD, Zero)), Local7)
        Store (DerefOf (Index (CAGD, One)), Local6)
        Store (DerefOf (Index (CAGD, 0x03)), Local5)
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Store (Arg0, _T_0)
        If (LEqual (_T_0, 0x06))
        {
            Or (Or (Arg3, Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                Store (Zero, Index (RETP, 0x02))
                If (LEqual (HSWK, 0xE9))
                {
                    Store (0x20, Index (RETP, 0x02))
                    Store (0x90, Index (RETP, 0x03))
                }

                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x09))
        {
            Or (Or (Arg3, Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                If (LEqual (Arg2, 0x5A00))
                {
                    If (LEqual (HSWK, 0xE9))
                    {
                        Store (Zero, HSWK)
                    }

                    Store (Local7, Index (RETP, Zero))
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0A))
        {
            Or (Or (Or (Arg2, Arg3), Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                Store (FLNK (Arg1, 0xFF), Local0)
                If (LNotEqual (Local0, 0xFF))
                {
                    Store (Local7, Index (RETP, Zero))
                    Store (Local0, Index (RETP, 0x02))
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0B))
        {
            Or (Or (Arg3, Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                If (LEqual (And (Arg2, 0xFFFE), Zero))
                {
                    Store (Arg2, Local1)
                    Store (FLNK (Arg1, Local1), Local0)
                    If (LNotEqual (Local0, 0xFF))
                    {
                        Store (Local7, Index (RETP, Zero))
                    }
                }
            }
        }
    }

    Name (PTST, 0xFF)
    Method (GRPC, 6, Serialized)
    {
        Store (DerefOf (Index (CAGD, Zero)), Local7)
        Store (DerefOf (Index (CAGD, One)), Local6)
        Store (DerefOf (Index (CAGD, 0x03)), Local5)
        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Store (Arg0, _T_0)
        If (LEqual (_T_0, Zero))
        {
            If (LEqual (PTST, 0xFF))
            {
                Store (FLNK (Arg1, 0x0F), PTST)
            }

            Store (PTST, Index (RETP, 0x02))
            Store (Local7, Index (RETP, Zero))
        }
        ElseIf (LEqual (_T_0, One))
        {
            If (LEqual (And (Arg2, 0xFFFE), Zero))
            {
                Store (Arg2, PTST)
                FLNK (Arg1, Arg2)
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x02))
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
            Store (Local7, Index (RETP, Zero))
        }
        ElseIf (LEqual (_T_0, 0x03))
        {
            Or (Or (Or (Arg2, Arg3), Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                Store (RESV, Index (RETP, 0x02))
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x04))
        {
            Or (Or (Arg2, Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                If (LEqual (Arg3, One))
                {
                    If (LNotEqual (And (EC93, 0x22), Zero))
                    {
                        Add (ShiftLeft (And (EC93, 0x08), 0x06), ShiftRight (And (EC93, 0x10), 0x04), Local3)
                        If (LEqual (PR10, 0x02))
                        {
                            ShiftLeft (FLNK (0x35, 0x02), 0x0B, Local0)
                            Or (Local3, And (Local0, 0x0800), Index (RETP, 0x02))
                            Store (Local7, Index (RETP, Zero))
                        }
                        ElseIf (LEqual (PR10, One))
                        {
                            ShiftLeft (FLNK (0x35, 0x02), 0x0D, Local0)
                            Or (Local3, And (Local0, 0x2000), Index (RETP, 0x02))
                            Store (Local7, Index (RETP, Zero))
                        }
                        Else
                        {
                            Store (Local3, Index (RETP, 0x02))
                            Store (Local7, Index (RETP, Zero))
                        }
                    }
                }
                ElseIf (LEqual (Arg3, 0x03))
                {
                    If (LEqual (PR10, One))
                    {
                        Store (0x2000, Index (RETP, 0x02))
                        Store (Local7, Index (RETP, Zero))
                    }
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x05))
        {
            Store (Zero, Index (RETP, 0x03))
            If (LEqual (EGST, 0x21))
            {
                Store (EGST, Index (RETP, 0x03))
            }

            Store (Local7, Index (RETP, Zero))
        }
        ElseIf (LEqual (_T_0, 0x06))
        {
            Store (Zero, Local0)
            Store (FLNK (Arg1, 0xFF), Local0)
            Store (Local0, Index (RETP, 0x02))
            Store (Local6, Index (RETP, 0x03))
            Store (Local7, Index (RETP, Zero))
        }
        ElseIf (LEqual (_T_0, 0x07))
        {
            If (LEqual (Arg2, 0x03))
            {
                Store (Zero, Index (RETP, 0x03))
                ShiftLeft (FLNK (Arg1, 0xFF), 0x04, Local0)
                Store (And (Local0, 0x10), Index (RETP, 0x03))
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x08))
        {
            If (LEqual (And (Arg2, One), One))
            {
                Store (And (ShiftRight (Arg2, One), One), Local0)
                Store (Local0, HKEM)
                WREC (0xDB, 0x10, 0x04, Local0)
                Store (And (ShiftRight (Arg2, 0x03), One), Local0)
                Store (Local0, HSEM)
                WREC (0xDB, 0x20, 0x05, Local0)
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x09))
        {
            Or (Arg4, Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                If (LEqual (Arg3, 0x0200))
                {
                    If (LNotEqual (FLNK (Arg1, Arg2), 0xFF))
                    {
                        Store (Local7, Index (RETP, Zero))
                    }
                }
                ElseIf (LOr (LEqual (Arg3, 0x0800), LEqual (Arg3, 0x2000)))
                {
                    If (LEqual (And (Arg2, 0xFFFE), Zero))
                    {
                        FLNK (0x35, Arg2)
                        Store (Local7, Index (RETP, Zero))
                    }
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0A))
        {
            If (LEqual (Arg3, One))
            {
                If (LEqual (And (Arg2, 0xFFFC), Zero))
                {
                    If (LEqual (And (Arg2, 0x03), 0x02))
                    {
                        Store (0x07, Local0)
                    }
                    Else
                    {
                        ShiftLeft (Arg2, One, Local0)
                        Add (Local0, One, Local0)
                    }

                    FLNK (Arg1, Local0)
                    Store (Local7, Index (RETP, Zero))
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0B))
        {
            If (LEqual (And (Arg2, 0xFFFE), Zero))
            {
                FLNK (Arg1, Arg2)
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x0C))
        {
            If (LEqual (Arg2, Zero))
            {
                If (LEqual (And (Arg3, 0xFFFE), Zero))
                {
                    Store (Local7, Index (RETP, Zero))
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x0F))
        {
            Or (Or (Or (Arg2, Arg3), Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                Store (ShiftRight (DerefOf (Index (CAGD, 0x07)), 0x10), Index (RETP, 0x02))
                Store (And (DerefOf (Index (CAGD, 0x07)), 0xFFFF), Index (RETP, 0x03))
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x16))
        {
            Or (Or (Or (Arg2, Arg3), Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                FLNK (Arg1, 0xF1)
                If (LNotEqual (SWB0, 0xFFFFFFFF))
                {
                    Store (SWB0, Local0)
                }

                Store (0x8005, Index (RETP, One))
                Store (Local0, Index (RETP, 0x02))
                Store (0xFFFE, Index (RETP, 0x03))
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x17))
        {
            Or (Or (Or (Arg2, Arg3), Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                FLNK (Arg1, 0xF2)
                If (LNotEqual (SWB0, 0xFFFFFFFF))
                {
                    Store (SWB0, Local0)
                }

                Store (0x8004, Index (RETP, One))
                Store (Local0, Index (RETP, 0x02))
                Store (0x0FFF, Index (RETP, 0x03))
                Store (One, Index (RETP, 0x04))
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x18))
        {
            Or (Or (Arg3, Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                Store (Arg2, SWB1)
                FLNK (Arg1, 0xF3)
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x19))
        {
            Or (Or (Arg3, Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                Store (Arg2, SWB1)
                FLNK (Arg1, 0xF4)
                Store (Local7, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x1A))
        {
            Or (Or (Or (Arg2, Arg3), Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                Store (FLNK (Arg1, Zero), Index (RETP, 0x02))
                Store (Zero, Index (RETP, 0x04))
                Store (Local6, Index (RETP, Zero))
            }
        }
        ElseIf (LEqual (_T_0, 0x1B))
        {
            Or (Or (Arg3, Arg4), Arg5, Local0)
            If (LEqual (Local0, Zero))
            {
                If (LEqual (And (Arg2, 0xFFFE), Zero))
                {
                    Add (Arg1, Arg2, Local0)
                    FLNK (0xFF, Local0)
                    Store (Local6, Index (RETP, Zero))
                }
                Else
                {
                    Store (Local5, Index (RETP, Zero))
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x1C))
        {
            If (LEqual (BLBM, Zero))
            {
                Or (Or (Or (Arg2, Arg3), Arg4), Arg5, Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (OVLA, Index (RETP, 0x02))
                    Store (Local7, Index (RETP, Zero))
                }
            }
        }
        ElseIf (LEqual (_T_0, 0x1D))
        {
            If (LEqual (BLBM, Zero))
            {
                Or (Or (Arg3, Arg4), Arg5, Local0)
                If (LEqual (Local0, Zero))
                {
                    If (LEqual (And (Arg2, 0xFFFE), Zero))
                    {
                        FLNK (Arg1, Add (Arg2, 0x8C00))
                        Store (Local7, Index (RETP, Zero))
                    }
                    Else
                    {
                        Store (Local5, Index (RETP, Zero))
                    }
                }
            }
        }
    }

    Device (_SB.VALZ)
    {
        Name (_HID, "TOS1900")  // _HID: Hardware ID
        Method (_DDN, 0, NotSerialized)  // _DDN: DOS Device Name
        {
            Return ("VALZeneral")
        }

        Method (ENAB, 0, NotSerialized)
        {
            Acquire (MUTS, 0xFFFF)
            If (LEqual (TSBK, Zero))
            {
                FLNK (0x14, Zero)
            }

            Store (One, TSBK)
            Release (MUTS)
            If (LNotEqual (CECC, Zero))
            {
                Notify (VALZ, 0x80)
            }
        }

        Method (INFO, 0, NotSerialized)
        {
            Acquire (MUTS, 0xFFFF)
            Store (Zero, Local0)
            If (LNotEqual (CECC, Zero))
            {
                FLNK (0xFF, 0x03)
                If (LNotEqual (CECE, Zero))
                {
                    Release (MUTS)
                    Return (CECE)
                }
                Else
                {
                    FLNK (0xFF, 0x04)
                }
            }

            If (LAnd (LEqual (KYB0, Zero), LNotEqual (EVCT, Zero)))
            {
                FLNK (0x11, EVCT)
            }

            If (LNotEqual (KYB0, Zero))
            {
                Store (KYBF, Local0)
                CopyObject (KYBA, SWBF)
                CopyObject (SWBF, KYBB)
                Store (Zero, SWBF)
                If (LEqual (Local0, 0xFE))
                {
                    Store (Zero, Local0)
                }

                If (LEqual (And (Local0, 0xF0), 0x90))
                {
                    Add (Local0, 0x0B00, Local0)
                }
                ElseIf (LAnd (LGreater (Local0, 0x15), LLess (Local0, 0x1A)))
                {
                    Add (Local0, 0x1A9A, Local0)
                }

                Add (Local0, 0x0100, Local0)
            }

            Release (MUTS)
            Return (Local0)
        }

        Method (SPFC, 6, NotSerialized)
        {
            CKIF ()
            Add (ShiftLeft (PARG (Arg0), 0x10), And (PARG (Arg1), 0xFFFF), Local2)
            Store (Match (CAGA, MEQ, Local2, MTR, Zero, Zero), Local6)
            If (LNotEqual (Local6, Ones))
            {
                Store (DerefOf (Index (FNKC, Local6)), Local5)
                Return (GRPA (Local6, Local5, PARG (Arg2), PARG (Arg3), PARG (Arg4), PARG (Arg5)))
            }
            Else
            {
                Acquire (MUTS, 0xFFFF)
                Store (DerefOf (Index (CAGD, 0x02)), Index (RETP, Zero))
                Store (DerefOf (Index (CAGD, Zero)), Local0)
                Store (Local0, Index (RETP, One))
                Store (Local0, Index (RETP, 0x02))
                Store (Local0, Index (RETP, 0x03))
                Store (Local0, Index (RETP, 0x04))
                Store (Local0, Index (RETP, 0x05))
                Store (Match (CAGB, MEQ, Local2, MTR, Zero, Zero), Local6)
                If (LNotEqual (Local6, Ones))
                {
                    Store (DerefOf (Index (FNKC, Add (Local6, LENA))), Local5)
                    GRPB (Local6, Local5, PARG (Arg2), PARG (Arg3), PARG (Arg4), PARG (Arg5), PARG (Arg1))
                }
                Else
                {
                    Store (Match (CAGC, MEQ, Local2, MTR, Zero, Zero), Local6)
                    If (LNotEqual (Local6, Ones))
                    {
                        Store (DerefOf (Index (FNKC, Add (Add (Local6, LENA), LENB))), Local5)
                        GRPC (Local6, Local5, PARG (Arg2), PARG (Arg3), PARG (Arg4), PARG (Arg5))
                    }
                    Else
                    {
                        And (Local2, 0xFFFF0000, Local2)
                        If (LEqual (DerefOf (Index (CAGD, 0x08)), Local2))
                        {
                            If (LNotEqual (USAC, Zero))
                            {
                                Store (DerefOf (Index (CAGD, 0x0B)), Index (RETP, Zero))
                            }
                            Else
                            {
                                Store (DerefOf (Index (CAGD, 0x0A)), Index (RETP, Zero))
                                Store (One, USAC)
                            }
                        }
                        ElseIf (LEqual (DerefOf (Index (CAGD, 0x09)), Local2))
                        {
                            If (LEqual (USAC, Zero))
                            {
                                Store (DerefOf (Index (CAGD, 0x0C)), Index (RETP, Zero))
                            }
                            Else
                            {
                                Store (DerefOf (Index (CAGD, 0x0A)), Index (RETP, Zero))
                                Store (Zero, USAC)
                            }
                        }
                    }
                }

                Release (MUTS)
                Return (RETP)
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LOr (LLess (OSYS, 0x07D6), LEqual (OSYS, 0x07D8)))
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
        Method (FWES, 1, NotSerialized)
        {
            Acquire (MUTS, 0xFFFF)
            Name (FWEB, Buffer (0x20) {})
            Store (DerefOf (Index (Arg0, Zero)), Local4)
            Store (Zero, Local7)
            If (LEqual (Local4, One))
            {
                If (ECOK)
                {
                    Store (RCPU, Index (FWEB, Zero))
                    Store (VGAT, Index (FWEB, One))
                    Store (LRPM, Index (FWEB, 0x02))
                    Store (HRPM, Index (FWEB, 0x03))
                    Store (Zero, Index (FWEB, 0x04))
                    Store (Zero, Index (FWEB, 0x05))
                    Store (RDEC (0xA0, 0xFF, Zero), Index (FWEB, 0x06))
                }

                Release (MUTS)
                Return (FWEB)
            }

            If (LEqual (Local4, 0x81))
            {
                Store (DerefOf (Index (Arg0, One)), Local0)
                If (LEqual (Local0, 0xFF))
                {
                    Store (EVCT, Local0)
                    Store (Local0, Index (FWEB, Zero))
                    Release (MUTS)
                    Return (FWEB)
                }
                ElseIf (LEqual (Local0, 0xFE))
                {
                    Store (FKST, Local0)
                    Store (Local0, Index (FWEB, Zero))
                    Release (MUTS)
                    Return (FWEB)
                }
                Else
                {
                    Store (One, Local7)
                }
            }

            Store (0x20, Local0)
            Store (One, Local1)
            Store (Zero, Local3)
            While (Local0)
            {
                Store (ShiftLeft (DerefOf (Index (Arg0, Local1)), 0x18), Local2)
                Add (And (ShiftRight (Local3, 0x08), 0x00FFFFFF), Local2, Local3)
                If (LEqual (Local1, 0x04))
                {
                    Store (Local3, Local5)
                    Store (Local3, SWB0)
                }
                ElseIf (LEqual (Local1, 0x08))
                {
                    Store (Local3, SWB1)
                }
                ElseIf (LEqual (Local1, 0x0C))
                {
                    Store (Local3, SWB2)
                }
                ElseIf (LEqual (Local1, 0x10))
                {
                    Store (Local3, SWB3)
                }
                ElseIf (LEqual (Local1, 0x14))
                {
                    Store (Local3, SWB4)
                }
                ElseIf (LEqual (Local1, 0x18))
                {
                    Store (Local3, SWB5)
                }
                ElseIf (LEqual (Local1, 0x1C))
                {
                    Store (Local3, SWB6)
                }
                ElseIf (LEqual (Local1, 0x20))
                {
                    Store (Local3, SWB7)
                }

                Decrement (Local0)
                Add (Local1, One, Local1)
            }

            If (LEqual (Local7, One))
            {
                Store (0x11, Local4)
                Store (EVCT, Local5)
            }

            FLNK (Local4, Local5)
            Store (SWB0, Local1)
            Store (Zero, Local2)
            While (LNotEqual (Local2, 0x20))
            {
                If (LEqual (Local2, 0x04))
                {
                    Store (SWB1, Local1)
                }
                ElseIf (LEqual (Local2, 0x08))
                {
                    Store (SWB2, Local1)
                }
                ElseIf (LEqual (Local2, 0x0C))
                {
                    Store (SWB3, Local1)
                }
                ElseIf (LEqual (Local2, 0x10))
                {
                    Store (SWB4, Local1)
                }
                ElseIf (LEqual (Local2, 0x14))
                {
                    Store (SWB5, Local1)
                }
                ElseIf (LEqual (Local2, 0x18))
                {
                    Store (SWB6, Local1)
                }
                ElseIf (LEqual (Local2, 0x1C))
                {
                    Store (SWB7, Local1)
                }

                Store (Local1, Index (FWEB, Local2))
                Divide (Local1, 0x0100, Local0, Local1)
                Add (Local2, One, Local2)
            }

            Store (Zero, Local0)
            If (LNotEqual (LCMD, Zero))
            {
                Store (Zero, Local2)
                While (LNotEqual (Local2, 0x20))
                {
                    Store (0xFF, Index (FWEB, Local2))
                    Add (Local2, One, Local2)
                }
            }

            Store (Local0, SWB0)
            Store (Local0, SWB1)
            Store (Local0, SWB2)
            Store (Local0, SWB3)
            Store (Local0, SWB4)
            Store (Local0, SWB5)
            Store (Local0, SWB6)
            Store (Local0, SWB7)
            If (LEqual (Local7, One))
            {
                Store (EVCT, Index (FWEB, 0x1F))
            }

            Release (MUTS)
            Return (FWEB)
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LOr (LLess (OSYS, 0x07D0), LEqual (OSYS, 0x07D8)))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0B)
            }
        }
    }

    Method (WFNK, 1, NotSerialized)
    {
        Acquire (MUTS, 0xFFFF)
        If (IGDS)
        {
            If (LEqual (PEGL, One))
            {
                If (LEqual (CRT3, Zero))
                {
                    Store (0x02, PEGL)
                }
            }

            Store (Zero, CRT3)
        }
        Else
        {
            Store (Zero, PEGL)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (FTBT, FBFG)
            Store (Zero, FBS3)
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (IGDS)
            {
                If (LEqual (RDEC (0x92, One, Zero), LIDA))
                {
                    Store (Zero, PEGL)
                }
            }

            Store (And (ShiftRight (ECB6, 0x03), One), Local0)
            If (LNotEqual (Local0, PWBS))
            {
                WREC (0xB6, 0x08, 0x03, PWBS)
            }

            If (LNotEqual (ECC8, ACBS))
            {
                WREC (0xC8, 0xFF, Zero, ACBS)
            }

            If (LNotEqual (ECC9, ACBW))
            {
                WREC (0xC9, 0xFF, Zero, ACBW)
            }
        }

        If (LGreater (OSYS, 0x07D5))
        {
            If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
            {
                Store (HKMD, Local0)
                WREC (0xDB, One, Zero, Local0)
            }

            If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
            {
                Store (HKEM, Local0)
                WREC (0xDB, 0x10, 0x04, Local0)
                Store (HSEM, Local0)
                WREC (0xDB, 0x20, 0x05, Local0)
                FLNK (0x10, One)
                FLNK (0x15, 0xFF)
                Store (0x0F, ILLU)
            }

            If (LNotEqual (EVCT, Zero))
            {
                FLNK (0x11, EVCT)
                If (LEqual (RDEC (0xDB, 0x20, 0x05), Zero))
                {
                    Store (KYB0, HSWK)
                    Store (Zero, KYB0)
                }
            }
        }
        Else
        {
            If (LNotEqual (EVCT, Zero))
            {
                Notify (\_SB.FWEX, 0x80)
            }

            FLNK (0x15, 0xFF)
        }

        FLNK (0xFF, 0x30)
        Release (MUTS)
    }

    Method (SFNK, 1, NotSerialized)
    {
        Acquire (MUTS, 0xFFFF)
        If (LEqual (IGDS, Zero))
        {
            Store (Zero, PEGL)
        }
        Else
        {
            Store (RDEC (0x92, One, Zero), LIDA)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (One, FBS3)
            Store (FBFG, FTBT)
        }

        \_SB.PCI0.LPCB.CLRL ()
        If (LGreater (OSYS, 0x07D5))
        {
            Store (Zero, HSWK)
            If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
            {
                Store (RDEC (0xDB, One, Zero), HKMD)
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            Store (And (ShiftRight (ECB6, 0x03), One), PWBS)
            Store (ECC8, ACBS)
            Store (ECC9, ACBW)
        }
        ElseIf (LEqual (Arg0, 0x05))
        {
            If (LEqual (ECC8, Zero))
            {
                WREC (0xC8, 0xFF, Zero, 0x3F)
                If (LEqual (ECC9, Zero))
                {
                    WREC (0xC9, 0xFF, Zero, 0x03)
                }
            }
        }

        If (LGreater (Arg0, 0x02)) {}
        Release (MUTS)
    }

    OperationRegion (MBOX, SystemMemory, 0xBF7BEA98, 0x00000320)
    Field (MBOX, AnyAcc, NoLock, Preserve)
    {
        PCI1,   8, 
        PCI2,   8, 
        PCI3,   8, 
        PCI4,   8, 
        PCI5,   8, 
        PCI6,   8, 
        PCI7,   8, 
        PCI8,   8, 
        NLCK,   8, 
        ZIPE,   8, 
        COA1,   8, 
        CAIO,   8, 
        CAIP,   8, 
        CAMD,   8, 
        CADA,   8, 
        COB1,   8, 
        CBIO,   8, 
        CBIP,   8, 
        CBMD,   8, 
        CBDA,   8, 
        FHSD,   8, 
        COMC,   8, 
        CCIO,   8, 
        CCIP,   8, 
        CCMD,   8, 
        CCDA,   8, 
        COMD,   8, 
        CDIO,   8, 
        CDIP,   8, 
        CDMD,   8, 
        CDDA,   8, 
        LPT1,   8, 
        L1IO,   8, 
        L1IP,   8, 
        L1MD,   8, 
        L1DA,   8, 
        LPT2,   8, 
        L2IO,   8, 
        L2IP,   8, 
        L2MD,   8, 
        L2DA,   8, 
        LPT3,   8, 
        L3IO,   8, 
        L3IP,   8, 
        L3MD,   8, 
        L3DA,   8, 
        FDDC,   8, 
        FDWP,   8, 
        HGMP,   8, 
        LGMP,   8, 
        MIDI,   8, 
        AZLA,   8, 
        AUDO,   8, 
        MODM,   8, 
        IDEC,   8, 
        SSED,   8, 
        PACT,   8, 
        SCFG,   8, 
        AMOD,   8, 
        IMOD,   8, 
        LCFG,   8, 
        IDLY,   8, 
        PMTP,   8, 
        PM32,   8, 
        PMBM,   8, 
        PMTM,   8, 
        PSTP,   8, 
        PSIO,   8, 
        PSBM,   8, 
        PSTM,   8, 
        IDE0,   8, 
        IDE1,   8, 
        IDE2,   8, 
        IDE3,   8, 
        IDE4,   8, 
        IDE5,   8, 
        IDE6,   8, 
        IDE7,   8, 
        HIUB,   8, 
        LUBS,   8, 
        PLYT,   8, 
        EDCG,   8, 
        SDFY,   8, 
        SDTC,   8, 
        SDRP,   8, 
        SDCL,   8, 
        SDRC,   8, 
        SDRE,   8, 
        FC2L,   8, 
        FC3L,   8, 
        FCS4,   8, 
        APIM,   8, 
        HPTS,   8, 
        HPTA,   8, 
        EMAS,   8, 
        VGAO,   8, 
        SOFF,   8, 
        KBPO,   8, 
        MSPO,   8, 
        USBB,   8, 
        EVTL,   8, 
        SYBE,   8, 
        ETLC,   8, 
        ACPV,   8, 
        TPMD,   8, 
        TPMO,   8, 
        TPMC,   8, 
        TPMM,   8, 
        TPCC,   8, 
        TPLC,   8, 
        TPLR,   32, 
        QBOT,   8, 
        BOTQ,   8, 
        PBOT,   8, 
        M256,   8, 
        PEGF,   8, 
        OSY1,   16, 
        BMTP,   8, 
        BNPT,   8, 
        LNMT,   8, 
        NBTO,   8, 
        NABD,   8, 
        NEBD,   8, 
        NLBD,   8, 
        DFBT,   16, 
        NPSP,   16, 
        LANG,   8, 
        UACL,   8, 
        SUPS,   8, 
        DVET,   8, 
        S3RS,   8, 
        DAS1,   8, 
        DAS3,   8, 
        WKPM,   8, 
        WKMD,   8, 
        WKS5,   8, 
        HOUR,   8, 
        MINS,   8, 
        SECS,   8, 
        DOFM,   8, 
        NBTV,   64, 
        BTOD,   64, 
        SPVP,   16, 
        POPW,   16, 
        USPW,   16, 
        HDPW,   16, 
        SAHP,   16, 
        SAHF,   8, 
        SUVF,   8, 
        USRF,   8, 
        UMPW,   8, 
        SMHP,   16, 
        SAMP,   16, 
        SAMF,   8, 
        SPFA,   8, 
        SPFB,   8, 
        SPFC,   8, 
        SPFD,   8, 
        SPFE,   8, 
        SPFF,   8, 
        SPFG,   8, 
        SPFH,   8, 
        SPFI,   8, 
        SPFJ,   8, 
        SPFK,   8, 
        SPFL,   8, 
        SPFM,   8, 
        SPFN,   8, 
        SPFO,   8, 
        SPFP,   8, 
        SPFQ,   8, 
        SPFR,   8, 
        SPFS,   8, 
        SPFT,   8, 
        SPFU,   8, 
        SPFV,   8, 
        SPFW,   8, 
        SPFX,   8, 
        SPFY,   8, 
        SPFZ,   8, 
        SPF0,   8, 
        SPF1,   8, 
        SPF2,   8, 
        SPF3,   8, 
        SPF4,   8, 
        SPF5,   8, 
        KRSV,   136, 
        LANE,   8, 
        AORS,   8, 
        P0HP,   8, 
        P1HP,   8, 
        P2HP,   8, 
        P3HP,   8, 
        P4HP,   8, 
        P5HP,   8, 
        P0IL,   8, 
        P1IL,   8, 
        P2IL,   8, 
        D2F1,   8, 
        DVPA,   8, 
        DTGM,   8, 
        Offset (0xF5), 
        Offset (0xF6), 
        BOTT,   8, 
        PANT,   8, 
        TVTP,   8, 
        U201,   8, 
        U202,   8, 
        U111,   8, 
        U112,   8, 
        U113,   8, 
        U114,   8, 
        U115,   8, 
        UPPC,   8, 
        UP00,   8, 
        UP01,   8, 
        UP02,   8, 
        UP03,   8, 
        UP04,   8, 
        UP05,   8, 
        UP06,   8, 
        UP07,   8, 
        UP08,   8, 
        UP09,   8, 
        UP10,   8, 
        UP11,   8, 
        P80R,   8, 
        WDOG,   8, 
        WDTO,   16, 
        WDTB,   16, 
        MASF,   8, 
        MAMT,   8, 
        ABXP,   8, 
        SPIL,   8, 
        PWDW,   8, 
        HETO,   8, 
        AWTR,   16, 
        EOPT,   8, 
        ASFB,   8, 
        MBTX,   8, 
        IDER,   8, 
        SOLE,   8, 
        UCME,   8, 
        MEDM,   8, 
        PPDA,   8, 
        PPCG,   8, 
        PPBV,   8, 
        PPV1,   8, 
        PPPV,   8, 
        PPMV,   8, 
        PRE0,   8, 
        PRE1,   8, 
        PRE2,   8, 
        PRE3,   8, 
        PRE4,   8, 
        PRE5,   8, 
        PRE6,   8, 
        PRE7,   8, 
        PRA0,   8, 
        PRA1,   8, 
        PRA2,   8, 
        PRA3,   8, 
        PRA4,   8, 
        PRA5,   8, 
        PRA6,   8, 
        PRA7,   8, 
        PRU0,   8, 
        PRU1,   8, 
        PRU2,   8, 
        PRU3,   8, 
        PRU4,   8, 
        PRU5,   8, 
        PRU6,   8, 
        PRU7,   8, 
        PRF0,   8, 
        PRF1,   8, 
        PRF2,   8, 
        PRF3,   8, 
        PRF4,   8, 
        PRF5,   8, 
        PRF6,   8, 
        PRF7,   8, 
        PRN0,   8, 
        PRN1,   8, 
        PRN2,   8, 
        PRN3,   8, 
        PRN4,   8, 
        PRN5,   8, 
        PRN6,   8, 
        PRN7,   8, 
        PRC0,   8, 
        PRC1,   8, 
        PRC2,   8, 
        PRC3,   8, 
        PRC4,   8, 
        PRC5,   8, 
        PRC6,   8, 
        PRC7,   8, 
        CTD0,   8, 
        CTD1,   8, 
        CTD2,   8, 
        CTD3,   8, 
        CTD4,   8, 
        CTD5,   8, 
        CTD6,   8, 
        CTD7,   8, 
        PIE0,   8, 
        PIE1,   8, 
        PIE2,   8, 
        PIE3,   8, 
        PIE4,   8, 
        PIE5,   8, 
        PIE6,   8, 
        PIE7,   8, 
        SFE0,   8, 
        SFE1,   8, 
        SFE2,   8, 
        SFE3,   8, 
        SFE4,   8, 
        SFE5,   8, 
        SFE6,   8, 
        SFE7,   8, 
        SNE0,   8, 
        SNE1,   8, 
        SNE2,   8, 
        SNE3,   8, 
        SNE4,   8, 
        SNE5,   8, 
        SNE6,   8, 
        SNE7,   8, 
        SCE0,   8, 
        SCE1,   8, 
        SCE2,   8, 
        SCE3,   8, 
        SCE4,   8, 
        SCE5,   8, 
        SCE6,   8, 
        SCE7,   8, 
        PPS0,   8, 
        PPS1,   8, 
        PPS2,   8, 
        PPS3,   8, 
        PPS4,   8, 
        PPS5,   8, 
        PPS6,   8, 
        PPS7,   8, 
        PHP0,   8, 
        PHP1,   8, 
        PHP2,   8, 
        PHP3,   8, 
        PHP4,   8, 
        PHP5,   8, 
        PHP6,   8, 
        PHP7,   8, 
        PEGA,   8, 
        PGAA,   8, 
        PGL0,   8, 
        PL0A,   8, 
        PGL1,   8, 
        Offset (0x196), 
        PAV1,   8, 
        ISTC,   8, 
        TRML,   8, 
        ATHF,   8, 
        PTTP,   8, 
        XDMD,   8, 
        PCRR,   8, 
        PROH,   8, 
        TUBM,   8, 
        TSTE,   8, 
        BPST,   8, 
        NXFE,   8, 
        VTST,   8, 
        VTFE,   8, 
        CSTS,   8, 
        ENCS,   8, 
        ENC6,   8, 
        CMPE,   8, 
        MDST,   8, 
        EXBR,   8, 
        TXTS,   8, 
        VTDE,   8, 
        CART,   8, 
        CATT,   8, 
        STBE,   8, 
        PEBE,   8, 
        PCBE,   8, 
        EHBE,   8, 
        UHBE,   8, 
        HABE,   8, 
        ERS2,   8, 
        GLPM,   8, 
        GRTT,   8, 
        CRID,   8, 
        ATLF,   8, 
        PTC1,   8, 
        PTC2,   8, 
        PTSP,   8, 
        CTTP,   8, 
        HTSP,   8, 
        U116,   8, 
        U117,   8, 
        UP12,   8, 
        UP13,   8, 
        DALC,   8, 
        ENC7,   8, 
        CSIT,   8, 
        CSIF,   8, 
        CSL1,   8, 
        MIRP,   8, 
        MEMF,   8, 
        CHIL,   8, 
        RKIL,   8, 
        QPIF,   8, 
        DLMF,   8, 
        GPPS,   8, 
        AGLP,   8, 
        EIPS,   8, 
        MTUB,   8, 
        CPEC,   8, 
        IPSP,   8, 
        CTLT,   8, 
        CTLV,   16, 
        MPLT,   8, 
        MPLV,   16, 
        PPLT,   8, 
        PPLV,   16, 
        CPLT,   8, 
        CPLV,   16, 
        RTIF,   8, 
        DPPM,   8, 
        RELT,   8, 
        INTR,   8, 
        PATD,   8, 
        COHE,   8, 
        CTBO,   8, 
        FBOT,   8, 
        CTRD,   8, 
        CERD,   8, 
        MTRD,   8, 
        PTRD,   8, 
        ALEL,   8, 
        CALE,   8, 
        MALE,   8, 
        PALE,   8, 
        DALE,   8, 
        TODM,   8, 
        D1TR,   8, 
        D2TR,   8, 
        D3TR,   8, 
        D4TR,   8, 
        LFPC,   8, 
        RMHM,   8, 
        METR,   8, 
        ECML,   8, 
        MPEC,   8, 
        TRTS,   8, 
        CACK,   8, 
        AZHI,   8, 
        IMEP,   8, 
        IMFE,   8, 
        SAG3,   8, 
        CRSV,   144, 
        ISTM,   8, 
        ISTS,   8, 
        PTDV,   8, 
        WKOL,   8, 
        WOWL,   8, 
        WLEX,   8, 
        ICIR,   8, 
        IREX,   8, 
        IWEX,   8, 
        CRWK,   8, 
        ILED,   8, 
        TBMM,   8, 
        AKWE,   8, 
        USCM,   8, 
        HCEC,   8, 
        RPON,   8, 
        HDDC,   8, 
        IDAF,   8, 
        HDD0,   8, 
        HDD1,   8, 
        MHD0,   8, 
        MHD1,   8, 
        HDD2,   8, 
        HDD3,   8, 
        HDD4,   8, 
        HDD5,   8, 
        HDD6,   8, 
        HDD7,   8, 
        CPID,   8, 
        KBBL,   8, 
        DFBL,   8, 
        FUBM,   8, 
        FUBB,   8, 
        HDC2,   8, 
        WBCA,   8, 
        ADFB,   8, 
        SHDL,   8, 
        BPBM,   8, 
        ESTA,   8, 
        SAIS,   8, 
        WCSW,   8, 
        WCAM,   8, 
        KBCM,   8, 
        BLTM,   8, 
        VTXD,   8, 
        BLBM,   8, 
        ORSV,   192, 
        HPOP,   8, 
        LOCF,   8, 
        PSTA,   8, 
        CCMP,   8, 
        DTP1,   8, 
        SCBK,   8, 
        SCBF,   8, 
        FUBN,   8, 
        KLED,   8, 
        FNZL,   8, 
        LTIM,   8, 
        RGBP,   8, 
        KBLE,   8, 
        FBBP,   8, 
        Offset (0x26A), 
        Offset (0x26E), 
        Offset (0x272), 
        DRSV,   592, 
        MEFD,   8, 
        FWVB,   8, 
        USBP,   8, 
        FWPR,   8, 
        MELF,   8, 
        MEFQ,   8, 
        HP0S,   8, 
        HP1S,   8, 
        HP2S,   8, 
        HP3S,   8, 
        HP4S,   8, 
        HP5S,   8, 
        PEG1,   8, 
        CPMD,   8, 
        ENIF,   8, 
        PRSV,   680
    }

    OperationRegion (PSMI, SystemIO, 0xB2, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    Method (OSMI, 1, NotSerialized)
    {
        Store (Arg0, APMD)
        Store (0xBE, APMC)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x2B)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x2B)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR02, Package (0x04)
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
        Name (AR02, Package (0x04)
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
        Name (PR04, Package (0x04)
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
        Name (AR04, Package (0x04)
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
        Name (PR05, Package (0x04)
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
        Name (AR05, Package (0x04)
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
        Name (PR06, Package (0x04)
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
        Name (AR06, Package (0x04)
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
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
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
        Name (AR08, Package (0x04)
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
        Name (PR0A, Package (0x04)
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
        Name (AR0A, Package (0x04)
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
        Name (PR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR01, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

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
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR01, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

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
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x15
            }
        })
        Name (PR0C, Package (0x04)
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
        Name (AR0C, Package (0x04)
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
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                Acquire (MUTS, 0xFFFF)
                FLNK (0xFF, 0x31)
                Release (MUTS)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                ^LPCB.CLRL ()
            }

            OperationRegion (HBUS, PCI_Config, 0x40, 0xC0)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x08), 
                MHEN,   1, 
                    ,   13, 
                MHBR,   18, 
                Offset (0x10), 
                IIEN,   1, 
                    ,   11, 
                DIBI,   20, 
                Offset (0x28), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x30), 
                IPEN,   1, 
                    ,   11, 
                IPBR,   20, 
                Offset (0x62), 
                TUUD,   16, 
                Offset (0x70), 
                    ,   4, 
                TLUD,   12, 
                Offset (0x89), 
                    ,   3, 
                GTSE,   1, 
                Offset (0x8A)
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
                Offset (0xD40), 
                ADVE,   1, 
                    ,   11, 
                ADVT,   20, 
                Offset (0x101E), 
                T0IS,   16, 
                Offset (0x105E), 
                T1IS,   16, 
                Offset (0x10EF), 
                ESCS,   8
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x003E,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x003F,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xfeb00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED44FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00005000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), 0x02), PBMX)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBLN)
                If (^^CPBG.IMCH.PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }

                If (LEqual (^^CPBG.IMCH.PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }

                If (^^CPBG.IMCH.PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }

                If (LEqual (^^CPBG.IMCH.PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }

                If (^^CPBG.IMCH.PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }

                If (LEqual (^^CPBG.IMCH.PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }

                If (^^CPBG.IMCH.PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }

                If (LEqual (^^CPBG.IMCH.PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }

                If (^^CPBG.IMCH.PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }

                If (LEqual (^^CPBG.IMCH.PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }

                If (^^CPBG.IMCH.PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }

                If (LEqual (^^CPBG.IMCH.PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }

                If (^^CPBG.IMCH.PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }

                If (LEqual (^^CPBG.IMCH.PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }

                If (^^CPBG.IMCH.PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }

                If (LEqual (^^CPBG.IMCH.PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }

                If (^^CPBG.IMCH.PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }

                If (LEqual (^^CPBG.IMCH.PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }

                If (^^CPBG.IMCH.PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }

                If (LEqual (^^CPBG.IMCH.PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }

                If (^^CPBG.IMCH.PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }

                If (LEqual (^^CPBG.IMCH.PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }

                If (^^CPBG.IMCH.PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }

                If (LEqual (^^CPBG.IMCH.PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }

                If (^^CPBG.IMCH.PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }

                If (LEqual (^^CPBG.IMCH.PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    If (LGreaterEqual (PNHM, 0x000106E1))
                    {
                        Store (^IO10.TOLM, Local0)
                        ShiftLeft (Increment (Local0), 0x1A, M1MN)
                    }
                    Else
                    {
                        Store (^IIO0.TOLM, Local0)
                        ShiftLeft (Increment (Local0), 0x1A, M1MN)
                    }
                }
                Else
                {
                    ShiftLeft (TLUD, 0x14, M1MN)
                }

                Add (Subtract (M1MX, M1MN), One, M1LN)
                Return (BUF0)
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (PCPC, 0, NotSerialized)
                {
                    ECST (0x6F)
                }

                Method (PAPR, 0, NotSerialized)
                {
                    If (ECON)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (IGDS)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    Store (And (Arg0, 0x07), DSEN)
                    If (LEqual (And (Arg0, 0x03), Zero))
                    {
                        If (CondRefOf (HDOS))
                        {
                            HDOS ()
                        }
                    }
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    If (CondRefOf (IDAB)) {}
                    Else
                    {
                        Store (Zero, NDID)
                        If (LNotEqual (DIDL, Zero))
                        {
                            Store (SDDL (DIDL), DID1)
                        }

                        If (LNotEqual (DDL2, Zero))
                        {
                            Store (SDDL (DDL2), DID2)
                        }

                        If (LNotEqual (DDL3, Zero))
                        {
                            Store (SDDL (DDL3), DID3)
                        }

                        If (LNotEqual (DDL4, Zero))
                        {
                            Store (SDDL (DDL4), DID4)
                        }

                        If (LNotEqual (DDL5, Zero))
                        {
                            Store (SDDL (DDL5), DID5)
                        }

                        If (LNotEqual (DDL6, Zero))
                        {
                            Store (SDDL (DDL6), DID6)
                        }

                        If (LNotEqual (DDL7, Zero))
                        {
                            Store (SDDL (DDL7), DID7)
                        }

                        If (LNotEqual (DDL8, Zero))
                        {
                            Store (SDDL (DDL8), DID8)
                        }
                    }

                    If (LEqual (NDID, One))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                        Return (TMP1)
                    }

                    If (LEqual (NDID, 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP2, One))
                        Return (TMP2)
                    }

                    If (LEqual (NDID, 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP3, One))
                        Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                        Return (TMP3)
                    }

                    If (LEqual (NDID, 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP4, One))
                        Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                        Return (TMP4)
                    }

                    If (LEqual (NDID, 0x05))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP5, One))
                        Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                        Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                        Return (TMP5)
                    }

                    If (LEqual (NDID, 0x06))
                    {
                        Name (TMP6, Package (0x06)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP6, One))
                        Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                        Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                        Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                        Return (TMP6)
                    }

                    If (LEqual (NDID, 0x07))
                    {
                        Name (TMP7, Package (0x07)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP7, One))
                        Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                        Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                        Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                        Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                        Return (TMP7)
                    }

                    If (LEqual (NDID, 0x08))
                    {
                        Name (TMP8, Package (0x08)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP8, One))
                        Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                        Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                        Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                        Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                        Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                        Return (TMP8)
                    }

                    Return (Package (0x01)
                    {
                        0x0400
                    })
                }

                Device (DD01)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID1, Zero))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID1))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (CDDS (DID1))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID1))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD02)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID2, Zero))
                        {
                            Return (0x02)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID2))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (CDDS (DID2))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID2))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }

                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        If (LEqual (PWM7, Zero))
                        {
                            Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x02)), PWM0)
                            Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x03)), PWM1)
                            Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x04)), PWM2)
                            Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x05)), PWM3)
                            Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x06)), PWM4)
                            Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x07)), PWM5)
                            Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x08)), PWM6)
                            Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x09)), PWM7)
                        }

                        Return (BRLV)
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        Store (Zero, BCMF)
                        If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                        {
                            Store (Arg0, BRTL)
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

                            Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), Local0)), Arg0)
                            AINT (One, Arg0)
                            Subtract (Local0, 0x02, ECA3)
                        }
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Return (BRTL)
                    }
                }

                Device (DD03)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID3, Zero))
                        {
                            Return (0x03)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID3))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LEqual (DID3, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID3))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID3))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD04)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID4, Zero))
                        {
                            Return (0x04)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID4))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LEqual (DID4, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID4))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID4))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD05)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID5, Zero))
                        {
                            Return (0x05)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID5))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LEqual (DID5, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID5))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID5))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD06)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID6, Zero))
                        {
                            Return (0x06)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID6))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LEqual (DID6, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID6))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID6))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD07)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID7, Zero))
                        {
                            Return (0x07)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID7))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LEqual (DID7, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID7))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID7))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD08)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (LEqual (DID8, Zero))
                        {
                            Return (0x08)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID8))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (LEqual (DID8, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID8))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID8))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Method (SDDL, 1, NotSerialized)
                {
                    Increment (NDID)
                    Store (And (Arg0, 0x0F0F), Local0)
                    Or (0x80000000, Local0, Local1)
                    If (LEqual (DIDL, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL2, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL3, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL4, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL5, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL6, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL7, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL8, Local0))
                    {
                        Return (Local1)
                    }

                    Return (Zero)
                }

                Method (CDDS, 1, NotSerialized)
                {
                    Store (And (Arg0, 0x0F0F), Local0)
                    If (LEqual (Zero, Local0))
                    {
                        Return (0x1D)
                    }

                    If (LEqual (CADL, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL2, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL3, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL4, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL5, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL6, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL7, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL8, Local0))
                    {
                        Return (0x1F)
                    }

                    Return (0x1D)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    Store (And (Arg0, 0x0F0F), Local0)
                    If (LEqual (Zero, Local0))
                    {
                        Return (Zero)
                    }

                    If (LEqual (NADL, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL2, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL3, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL4, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL5, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL6, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL7, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL8, Local0))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (STBL, 1, NotSerialized)
                {
                    If (LEqual (Arg0, Zero))
                    {
                        Store (0x0400, NADL)
                        Store (Zero, NDL2)
                    }
                    Else
                    {
                        Acquire (MUTS, 0xFFFF)
                        OSMI (0xA8)
                        Store (CSTE, Local0)
                        OSMI (0xFF)
                        ShiftRight (Local0, One, Local0)
                        While (LNot (And (PADL, Local0)))
                        {
                            ShiftRight (Local0, One, Local0)
                            If (LEqual (Local0, Zero))
                            {
                                Store (0x08, Local0)
                            }
                        }

                        Release (MUTS)
                        If (LEqual (Local0, One))
                        {
                            Store (0x0400, NADL)
                        }

                        If (LEqual (Local0, 0x02))
                        {
                            Store (0x0100, NADL)
                        }

                        If (LEqual (Local0, 0x04))
                        {
                            Store (0x0300, NADL)
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            Store (0x0500, NADL)
                        }

                        Store (Zero, NDL2)
                    }
                }

                Scope (^^PCI0)
                {
                    OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                    Field (MCHP, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x60), 
                        TASM,   10, 
                        Offset (0x62)
                    }
                }

                OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
                Field (IGDP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x12), 
                        ,   1, 
                    GIVD,   1, 
                        ,   2, 
                    GUMA,   3, 
                    Offset (0x14), 
                        ,   4, 
                    GMFN,   1, 
                    Offset (0x18), 
                    Offset (0xA4), 
                    ASLE,   8, 
                    Offset (0xA8), 
                    GSSE,   1, 
                    GSSB,   14, 
                    GSES,   1, 
                    Offset (0xB0), 
                        ,   12, 
                    CDVL,   1, 
                    Offset (0xB2), 
                    Offset (0xB5), 
                    LBPC,   8, 
                    Offset (0xBC), 
                    ASLS,   32
                }

                OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128, 
                    SIZE,   32, 
                    OVER,   32, 
                    SVER,   256, 
                    VVER,   128, 
                    GVER,   128, 
                    MBOX,   32, 
                    DMOD,   32, 
                    Offset (0x100), 
                    DRDY,   32, 
                    CSTS,   32, 
                    CEVT,   32, 
                    Offset (0x120), 
                    DIDL,   32, 
                    DDL2,   32, 
                    DDL3,   32, 
                    DDL4,   32, 
                    DDL5,   32, 
                    DDL6,   32, 
                    DDL7,   32, 
                    DDL8,   32, 
                    CPDL,   32, 
                    CPL2,   32, 
                    CPL3,   32, 
                    CPL4,   32, 
                    CPL5,   32, 
                    CPL6,   32, 
                    CPL7,   32, 
                    CPL8,   32, 
                    CADL,   32, 
                    CAL2,   32, 
                    CAL3,   32, 
                    CAL4,   32, 
                    CAL5,   32, 
                    CAL6,   32, 
                    CAL7,   32, 
                    CAL8,   32, 
                    NADL,   32, 
                    NDL2,   32, 
                    NDL3,   32, 
                    NDL4,   32, 
                    NDL5,   32, 
                    NDL6,   32, 
                    NDL7,   32, 
                    NDL8,   32, 
                    ASLP,   32, 
                    TIDX,   32, 
                    CHPD,   32, 
                    CLID,   32, 
                    CDCK,   32, 
                    SXSW,   32, 
                    EVTS,   32, 
                    CNOT,   32, 
                    NRDY,   32, 
                    Offset (0x200), 
                    SCIE,   1, 
                    GEFC,   4, 
                    GXFC,   3, 
                    GESF,   8, 
                    Offset (0x204), 
                    PARM,   32, 
                    DSLP,   32, 
                    Offset (0x300), 
                    ARDY,   32, 
                    ASLC,   32, 
                    TCHE,   32, 
                    ALSI,   32, 
                    BCLP,   32, 
                    PFIT,   32, 
                    CBLV,   32, 
                    BCLM,   320, 
                    CPFM,   32, 
                    EPFM,   32, 
                    PLUT,   592, 
                    PFMB,   32, 
                    CCDV,   32, 
                    PCFT,   32, 
                    Offset (0x400), 
                    GVD1,   49152, 
                    PHED,   32, 
                    BDDC,   2048
                }

                Name (DBTB, Package (0x15)
                {
                    Zero, 
                    0x07, 
                    0x38, 
                    0x01C0, 
                    0x0E00, 
                    0x3F, 
                    0x01C7, 
                    0x0E07, 
                    0x01F8, 
                    0x0E38, 
                    0x0FC0, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x7000, 
                    0x7007, 
                    0x7038, 
                    0x71C0, 
                    0x7E00
                })
                Name (CDCT, Package (0x05)
                {
                    Package (0x02)
                    {
                        0xE4, 
                        0x0140
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }
                })
                Name (SUCC, One)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GSCI, 0, Serialized)
                {
                    Method (GBDA, 0, Serialized)
                    {
                        If (LEqual (GESF, Zero))
                        {
                            Store (0x0679, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, One))
                        {
                            Store (0x0240, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x04))
                        {
                            And (PARM, 0xEFFF0000, PARM)
                            And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                            Or (IBTT, PARM, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x05))
                        {
                            Store (IPSC, PARM)
                            Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                            Add (PARM, 0x0100, PARM)
                            Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                            Add (PARM, 0x00010000, PARM)
                            Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x06))
                        {
                            OSMI (0x56)
                            Store (PRM1, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x07))
                        {
                            Store (GIVD, PARM)
                            XOr (PARM, One, PARM)
                            Or (PARM, ShiftLeft (GMFN, One), PARM)
                            Or (PARM, 0x1800, PARM)
                            Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                            Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15), PARM, PARM)
                            Store (One, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0A))
                        {
                            Store (Zero, PARM)
                            If (ISSC)
                            {
                                Or (PARM, 0x03, PARM)
                            }

                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0B))
                        {
                            Store (KSV0, PARM)
                            Store (KSV1, GESF)
                            Return (SUCC)
                        }

                        Store (Zero, GESF)
                        Return (CRIT)
                    }

                    Method (SBCB, 0, Serialized)
                    {
                        If (LEqual (GESF, Zero))
                        {
                            Store (Zero, PARM)
                            Store (0x000F87FD, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, One))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x03))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x04))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x05))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x06))
                        {
                            Store (PARM, PRM0)
                            OSMI (0x57)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x07))
                        {
                            If (LEqual (PARM, Zero))
                            {
                                Store (CLID, Local0)
                                If (And (0x80000000, Local0))
                                {
                                    And (CLID, 0x0F, CLID)
                                    GLID (CLID)
                                }
                            }

                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x08))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x09))
                        {
                            And (PARM, 0xFF, IBTT)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0A))
                        {
                            And (PARM, 0xFF, IPSC)
                            If (And (ShiftRight (PARM, 0x08), 0xFF))
                            {
                                And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                                Decrement (IPAT)
                            }

                            And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0B))
                        {
                            And (ShiftRight (PARM, One), One, IF1E)
                            If (And (PARM, 0x0001E000))
                            {
                                And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                            }
                            Else
                            {
                                And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                            }

                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x10))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x11))
                        {
                            Store (ShiftLeft (LIDS, 0x08), PARM)
                            Add (PARM, 0x0100, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x12))
                        {
                            If (And (PARM, One))
                            {
                                If (LEqual (ShiftRight (PARM, One), One))
                                {
                                    Store (One, ISSC)
                                }
                                Else
                                {
                                    Store (Zero, GESF)
                                    Return (CRIT)
                                }
                            }
                            Else
                            {
                                Store (Zero, ISSC)
                            }

                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x13))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x14))
                        {
                            And (PARM, 0x0F, PAVP)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GEFC, 0x04))
                    {
                        Store (GBDA (), GXFC)
                    }

                    If (LEqual (GEFC, 0x06))
                    {
                        Store (SBCB (), GXFC)
                    }

                    Store (Zero, GEFC)
                    Store (One, SCIS)
                    Store (Zero, GSSE)
                    Store (Zero, SCIE)
                    Return (Zero)
                }

                Method (PDRD, 0, NotSerialized)
                {
                    If (LNot (DRDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (DRDY))
                }

                Method (PSTS, 0, NotSerialized)
                {
                    If (LGreater (CSTS, 0x02))
                    {
                        Sleep (ASLP)
                    }

                    Return (LEqual (CSTS, 0x03))
                }

                Method (GNOT, 2, NotSerialized)
                {
                    If (PDRD ())
                    {
                        Return (One)
                    }

                    Store (Arg0, CEVT)
                    Store (0x03, CSTS)
                    If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                    {
                        If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                        {
                            Notify (PCI0, Arg1)
                        }
                        Else
                        {
                            Notify (GFX0, Arg1)
                        }
                    }

                    If (CondRefOf (HNOT))
                    {
                        HNOT (Arg0)
                    }
                    Else
                    {
                        Notify (GFX0, 0x80)
                    }

                    Return (Zero)
                }

                Method (GHDS, 1, NotSerialized)
                {
                    Store (Arg0, TIDX)
                    Return (GNOT (One, Zero))
                }

                Method (GLID, 1, NotSerialized)
                {
                    Store (Arg0, CLID)
                    Return (GNOT (0x02, Zero))
                }

                Method (GDCK, 1, NotSerialized)
                {
                    Store (Arg0, CDCK)
                    Return (GNOT (0x04, Zero))
                }

                Method (PARD, 0, NotSerialized)
                {
                    If (LNot (ARDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (ARDY))
                }

                Method (AINT, 2, NotSerialized)
                {
                    If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                    {
                        Return (One)
                    }

                    If (PARD ())
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        If (CPFM)
                        {
                            And (CPFM, 0x0F, Local0)
                            And (EPFM, 0x0F, Local1)
                            If (LEqual (Local0, One))
                            {
                                If (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                ElseIf (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                Else
                                {
                                    Store (One, PFIT)
                                }
                            }

                            If (LEqual (Local0, 0x06))
                            {
                                If (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                ElseIf (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                Else
                                {
                                    Store (0x06, PFIT)
                                }
                            }

                            If (LEqual (Local0, 0x08))
                            {
                                If (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                ElseIf (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                Else
                                {
                                    Store (0x08, PFIT)
                                }
                            }
                        }
                        Else
                        {
                            XOr (PFIT, 0x07, PFIT)
                        }

                        Or (PFIT, 0x80000000, PFIT)
                        Store (0x04, ASLC)
                    }
                    ElseIf (LEqual (Arg0, One))
                    {
                        Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                        Or (BCLP, 0x80000000, BCLP)
                        Store (0x02, ASLC)
                    }
                    ElseIf (LEqual (Arg0, Zero))
                    {
                        Store (Arg1, ALSI)
                        Store (One, ASLC)
                    }
                    Else
                    {
                        Return (One)
                    }

                    Store (One, ASLE)
                    Return (Zero)
                }

                Method (SCIP, 0, NotSerialized)
                {
                    If (LNotEqual (OVER, Zero))
                    {
                        Return (LNot (GSMI))
                    }

                    Return (Zero)
                }
            }

            Device (P0P2)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If (CPID)
                    {
                        Return (0x00030000)
                    }
                    Else
                    {
                        Return (0x00010000)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02)
                    }

                    Return (PR02)
                }

                Device (PEGP)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (CSTT, Zero)
                    Name (DOSA, One)
                    Name (BCML, 0x64)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (IGDS)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

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
                        If (VGAM)
                        {
                            Return (Package (0x04)
                            {
                                0x0100, 
                                0x0110, 
                                0x0210, 
                                0x0220
                            })
                        }
                        Else
                        {
                            Return (Package (0x04)
                            {
                                0x00010100, 
                                0x00010110, 
                                0x80073330, 
                                0x80006342
                            })
                        }
                    }

                    Device (CRT)
                    {
                        Name (_ADR, 0x0100)  // _ADR: Address
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            Store (Zero, PEGL)
                            Store (Zero, CRT3)
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            Store (One, CRT3)
                        }

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
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            Store (Zero, PEGL)
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            Store (One, PEGL)
                        }

                        Name (_DCS, 0x1F)  // _DCS: Display Current Status
                        Name (_DGS, Zero)  // _DGS: Display Graphics State
                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (_DCS, 0xFFFFFFFD, _DCS)
                            And (Arg0, One, Local0)
                            ShiftLeft (Local0, One, Local0)
                            Or (_DCS, Local0, _DCS)
                        }

                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            If (LEqual (PWM7, Zero))
                            {
                                Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x02)), PWM0)
                                Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x03)), PWM1)
                                Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x04)), PWM2)
                                Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x05)), PWM3)
                                Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x06)), PWM4)
                                Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x07)), PWM5)
                                Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x08)), PWM6)
                                Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), 0x09)), PWM7)
                            }

                            Return (BRLV)
                        }

                        Method (_BQC, 0, Serialized)  // _BQC: Brightness Query Current
                        {
                            Return (BCML)
                        }

                        Method (_BCM, 1, Serialized)  // _BCM: Brightness Control Method
                        {
                            Store (Zero, BCMF)
                            Acquire (MUTS, 0xFFFF)
                            Store (Arg0, BCML)
                            If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                            {
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

                                Store (DerefOf (Index (DerefOf (Index (PANL, PNID)), Local0)), BRTL)
                                Subtract (Local0, 0x02, ECA3)
                                OSMI (0xA2)
                            }

                            Release (MUTS)
                        }
                    }

                    Device (DFP1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (VGAM)
                            {
                                Return (0x0210)
                            }
                            Else
                            {
                                Return (0x80073330)
                            }
                        }

                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            Store (Zero, PEGL)
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

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

                    Device (DFP2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (VGAM)
                            {
                                Return (0x0220)
                            }
                            Else
                            {
                                Return (0x80006342)
                            }
                        }

                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            Store (Zero, PEGL)
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

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

                    Method (UDCS, 0, NotSerialized)
                    {
                        And (^LCD._DCS, 0xFFFFFFFD, ^LCD._DCS)
                        And (^CRT._DCS, 0xFFFFFFFD, ^CRT._DCS)
                        And (^DFP1._DCS, 0xFFFFFFFD, ^DFP1._DCS)
                        And (^DFP2._DCS, 0xFFFFFFFD, ^DFP2._DCS)
                        Acquire (MUTS, 0xFFFF)
                        OSMI (0xA8)
                        Release (MUTS)
                        Store (CSTE, CSTT)
                        If (LEqual (CSTT, One))
                        {
                            Or (^LCD._DCS, 0x02, ^LCD._DCS)
                        }

                        If (LEqual (CSTT, 0x02))
                        {
                            Or (^CRT._DCS, 0x02, ^CRT._DCS)
                        }

                        If (LEqual (CSTT, 0x04))
                        {
                            Or (^DFP1._DCS, 0x02, ^DFP1._DCS)
                        }

                        If (LEqual (CSTT, 0x08))
                        {
                            Or (^DFP2._DCS, 0x02, ^DFP2._DCS)
                        }
                    }

                    Method (UDGS, 0, NotSerialized)
                    {
                        And (^LCD._DGS, 0xFFFFFFFE, ^LCD._DGS)
                        And (^CRT._DGS, 0xFFFFFFFE, ^CRT._DGS)
                        And (^DFP1._DGS, 0xFFFFFFFE, ^DFP1._DGS)
                        And (^DFP2._DGS, 0xFFFFFFFE, ^DFP2._DGS)
                        And (^LCD._DCS, 0x02, Local1)
                        And (^CRT._DCS, 0x02, Local2)
                        And (^DFP1._DCS, 0x02, Local3)
                        And (^DFP2._DCS, 0x02, Local4)
                        ShiftRight (Local1, One, Local1)
                        ShiftLeft (Local3, One, Local3)
                        ShiftLeft (Local4, 0x02, Local4)
                        Or (Local1, Local2, Local1)
                        Or (Local1, Local3, Local1)
                        Or (Local1, Local4, Local1)
                        Acquire (MUTS, 0xFFFF)
                        OSMI (0xFF)
                        Release (MUTS)
                        ShiftRight (CSTT, One, CSTT)
                        While (LNot (And (PADL, CSTT)))
                        {
                            ShiftRight (CSTT, One, CSTT)
                            If (LEqual (CSTT, Zero))
                            {
                                Store (0x08, CSTT)
                            }
                        }

                        If (LEqual (CSTT, One))
                        {
                            Or (^LCD._DGS, One, ^LCD._DGS)
                        }

                        If (LEqual (CSTT, 0x02))
                        {
                            Or (^CRT._DGS, One, ^CRT._DGS)
                        }

                        If (LEqual (CSTT, 0x04))
                        {
                            Or (^DFP1._DGS, One, ^DFP1._DGS)
                        }

                        If (LEqual (CSTT, 0x08))
                        {
                            Or (^DFP2._DGS, One, ^DFP2._DGS)
                        }

                        Store (CSTT, NSTE)
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

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            Zero
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PBRC, 0x80, PBRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PCRC, 0x80, PCRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PDRC, 0x80, PDRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PERC, 0x80, PERC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PFRC, 0x80, PFRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PGRC, 0x80, PGRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PHRC, 0x80, PHRC)
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Method (PWCG, 0, NotSerialized)
                {
                    Notify (ADP0, Zero)
                    Notify (BAT0, 0x80)
                    Notify (BAT0, 0x81)
                }

                Method (INEV, 1, NotSerialized)
                {
                    Acquire (MUTS, 0xFFFF)
                    Store (Arg0, CECI)
                    FLNK (0xFF, 0x05)
                    Release (MUTS)
                    If (TSBK)
                    {
                        Notify (VALZ, 0x80)
                    }
                }

                Name (LEGA, Package (0x0B)
                {
                    0x14, 
                    0x13, 
                    0x19, 
                    0x59, 
                    0x11, 
                    0x31, 
                    0x36, 
                    0x40, 
                    0x41, 
                    0x70, 
                    0xE6
                })
                Method (LGPA, 1, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (Arg0, _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Notify (LID0, 0x80)
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        PWCG ()
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        Store (One, BTCG)
                        PWCG ()
                    }
                    ElseIf (LEqual (_T_0, 0x03)) {}
                    ElseIf (LEqual (_T_0, 0x04))
                    {
                        Store (0x11, P80H)
                    }
                    ElseIf (LEqual (_T_0, 0x05))
                    {
                        Acquire (MUTS, 0xFFFF)
                        If (LEqual (THRF, Zero))
                        {
                            Store (Zero, PRM0)
                        }
                        Else
                        {
                            Store (0x02, PRM0)
                        }

                        OSMI (0xC0)
                        Release (MUTS)
                        Notify (\_TZ.THRM, 0x81)
                    }
                    ElseIf (LEqual (_T_0, 0x06))
                    {
                        Acquire (MUTS, 0xFFFF)
                        Store (PWRT, PRM0)
                        OSMI (0xC4)
                        Release (MUTS)
                    }
                    ElseIf (LEqual (_T_0, 0x07))
                    {
                        Notify (\_TZ.THRM, 0x81)
                    }
                    ElseIf (LEqual (_T_0, 0x08))
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
                                Store (Local1, P80H)
                                Store (Local1, ACPS)
                            }
                        }

                        If (LGreater (TCNT, One))
                        {
                            Notify (\_PR.CPU0, 0x80)
                            Sleep (0x64)
                            Notify (\_PR.CPU1, 0x80)
                            Sleep (0x64)
                            Notify (\_PR.CPU2, 0x80)
                            Sleep (0x64)
                            Notify (\_PR.CPU3, 0x80)
                            Sleep (0x64)
                            Notify (\_PR.CPU4, 0x80)
                            Sleep (0x64)
                            Notify (\_PR.CPU5, 0x80)
                            Sleep (0x64)
                            Notify (\_PR.CPU6, 0x80)
                            Sleep (0x64)
                            Notify (\_PR.CPU7, 0x80)
                        }
                        Else
                        {
                            Notify (\_PR.CPU0, 0x80)
                            Sleep (0x64)
                            Notify (\_PR.CPU1, 0x80)
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x09))
                    {
                        Store (0xE1, P80H)
                    }
                    ElseIf (LEqual (_T_0, 0x0A))
                    {
                        If (IGDS)
                        {
                            IDEV (0x0A, 0x14)
                        }
                    }
                    Else
                    {
                    }
                }

                Name (LEGC, Package (0x09)
                {
                    0x51, 
                    0x50, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x25, 
                    0x26
                })
                Method (LGPC, 1, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (Arg0, _T_0)
                    If (LEqual (_T_0, 0x07)) {}
                    ElseIf (LEqual (_T_0, 0x08)) {}
                    Else
                    {
                    }
                }

                Name (LEGD, Package (0x0F)
                {
                    0x63, 
                    0x64, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x65, 
                    0x66, 
                    0x68, 
                    0x69, 
                    0x28, 
                    0x29, 
                    0x80, 
                    0x81, 
                    0x71, 
                    0x98
                })
                Method (LGPD, 1, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (Arg0, _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        If (IGDS)
                        {
                            Notify (^^P0P2.VGA.LCD, 0x87)
                        }
                        Else
                        {
                            Notify (^^GFX0.DD02, 0x87)
                        }
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        If (IGDS)
                        {
                            Notify (^^P0P2.VGA.LCD, 0x86)
                        }
                        Else
                        {
                            Notify (^^GFX0.DD02, 0x86)
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x02))
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
                            Acquire (MUTS, 0xFFFF)
                            FLNK (0x11, EVCT)
                            Store (And (KYB0, 0xFF), Local0)
                            Store (Zero, KYB0)
                            Release (MUTS)
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x09))
                    {
                        If (LEqual (And (EC93, 0x30), 0x30))
                        {
                            WREC (0x93, 0x80, 0x07, One)
                            WREC (0x93, 0x40, 0x06, One)
                            Store (One, BTRS)
                        }

                        Notify (BT, Zero)
                    }
                    ElseIf (LEqual (_T_0, 0x0A))
                    {
                        If (LEqual (And (EC93, 0x30), 0x30))
                        {
                            WREC (0x93, 0x80, 0x07, Zero)
                            WREC (0x93, 0x40, 0x06, Zero)
                            Store (Zero, BTRS)
                        }

                        Notify (BT, Zero)
                    }
                    ElseIf (LEqual (_T_0, 0x0B)) {}
                    ElseIf (LEqual (_T_0, 0x0C))
                    {
                        Store (Zero, BTRS)
                    }
                    ElseIf (LEqual (_T_0, 0x0D))
                    {
                        Acquire (MUTS, 0xFFFF)
                        OSMI (0xFD)
                        Release (MUTS)
                    }
                    ElseIf (LEqual (_T_0, 0x0E)) {}
                    Else
                    {
                    }
                }

                Field (WNBD, ByteAcc, Lock, Preserve)
                {
                    Offset (0xB8), 
                    EEV0,   8, 
                    EEV1,   8, 
                    EEV2,   8, 
                    EEV3,   8, 
                    EEV4,   8, 
                    EEV5,   8, 
                    EEV6,   8, 
                    EEV7,   8
                }

                Mutex (MUTL, 0x00)
                Name (LEVC, Zero)
                Name (LEVB, Buffer (0x08)
                {
                     0x00                                           
                })
                Name (LINI, Zero)
                Name (TI3S, Zero)
                Name (TIMC, Zero)
                Name (SLEC, Zero)
                Name (SLEV, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                Name (SLEN, Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (LREG, 0, NotSerialized)
                {
                    Acquire (MUTS, 0xFFFF)
                    If (LEqual (LINI, Zero))
                    {
                        Store (One, LINI)
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
                                Store (And (KYB0, 0xFF), HSWK)
                                Store (Zero, KYB0)
                            }

                            FLNK (0x10, One)
                            FLNK (0x15, 0xFF)
                        }
                        Else
                        {
                            WREC (0xDB, One, Zero, Zero)
                            FLNK (0x15, 0xFF)
                            If (IGDS)
                            {
                                ^^P0P2.VGA.LCD._BCL ()
                            }
                            Else
                            {
                                ^^GFX0.DD02._BCL ()
                            }

                            If (LEqual (IGDS, Zero))
                            {
                                OperationRegion (IGD1, SystemMemory, ASLB, 0x2000)
                                Field (IGD1, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x31E), 
                                    BNL0,   8, 
                                    Offset (0x320), 
                                    BNL1,   8, 
                                    Offset (0x322), 
                                    BNL2,   8, 
                                    Offset (0x324), 
                                    BNL3,   8, 
                                    Offset (0x326), 
                                    BNL4,   8, 
                                    Offset (0x328), 
                                    BNL5,   8, 
                                    Offset (0x32A), 
                                    BNL6,   8, 
                                    Offset (0x32C), 
                                    BNL7,   8
                                }

                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                Store (ECA3, _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (BNL0, ^^GFX0.BCLP)
                                }
                                ElseIf (LEqual (_T_0, One))
                                {
                                    Store (BNL1, ^^GFX0.BCLP)
                                }
                                ElseIf (LEqual (_T_0, 0x02))
                                {
                                    Store (BNL2, ^^GFX0.BCLP)
                                }
                                ElseIf (LEqual (_T_0, 0x03))
                                {
                                    Store (BNL3, ^^GFX0.BCLP)
                                }
                                ElseIf (LEqual (_T_0, 0x04))
                                {
                                    Store (BNL4, ^^GFX0.BCLP)
                                }
                                ElseIf (LEqual (_T_0, 0x05))
                                {
                                    Store (BNL5, ^^GFX0.BCLP)
                                }
                                ElseIf (LEqual (_T_0, 0x06))
                                {
                                    Store (BNL6, ^^GFX0.BCLP)
                                }
                                ElseIf (LEqual (_T_0, 0x07))
                                {
                                    Store (BNL7, ^^GFX0.BCLP)
                                }

                                Or (^^GFX0.BCLP, 0x80000000, ^^GFX0.BCLP)
                                Store (0x02, ^^GFX0.ASLC)
                                Store (One, ^^GFX0.ASLE)
                            }
                        }

                        FLNK (0x30, Zero)
                        WREC (0xDA, 0x03, Zero, Zero)
                    }

                    Release (MUTS)
                }

                Method (CLBF, 1, NotSerialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (Arg0, _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (Zero, EEV0)
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        Store (Zero, EEV1)
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        Store (Zero, EEV2)
                    }
                    ElseIf (LEqual (_T_0, 0x03))
                    {
                        Store (Zero, EEV3)
                    }
                    ElseIf (LEqual (_T_0, 0x04))
                    {
                        Store (Zero, EEV4)
                    }
                    ElseIf (LEqual (_T_0, 0x05))
                    {
                        Store (Zero, EEV5)
                    }
                    ElseIf (LEqual (_T_0, 0x06))
                    {
                        Store (Zero, EEV6)
                    }
                    ElseIf (LEqual (_T_0, 0x07))
                    {
                        Store (Zero, EEV7)
                    }
                }

                Method (CKEV, 0, Serialized)
                {
                    Name (TMPB, Buffer (0x08)
                    {
                         0x00                                           
                    })
                    Acquire (MUTL, 0xFFFF)
                    If (LEqual (LEVC, Zero))
                    {
                        Store (EEV0, Index (TMPB, Zero))
                        Store (EEV1, Index (TMPB, One))
                        Store (EEV2, Index (TMPB, 0x02))
                        Store (EEV3, Index (TMPB, 0x03))
                        Store (EEV4, Index (TMPB, 0x04))
                        Store (EEV5, Index (TMPB, 0x05))
                        Store (EEV6, Index (TMPB, 0x06))
                        Store (EEV7, Index (TMPB, 0x07))
                        Store (Zero, Local0)
                        While (LLess (Local0, 0x08))
                        {
                            Store (DerefOf (Index (TMPB, Local0)), Local1)
                            If (LNotEqual (Local1, Zero))
                            {
                                Store (Local1, Index (LEVB, LEVC))
                                Increment (LEVC)
                                CLBF (Local0)
                            }

                            Increment (Local0)
                        }
                    }

                    Store (LEVC, Local2)
                    Release (MUTL)
                    Return (Local2)
                }

                Method (GEVT, 0, NotSerialized)
                {
                    Acquire (MUTL, 0xFFFF)
                    Store (Zero, Local0)
                    If (LNotEqual (LEVC, Zero))
                    {
                        Decrement (LEVC)
                        Store (DerefOf (Index (LEVB, LEVC)), Local0)
                        Store (Zero, Index (LEVB, LEVC))
                    }

                    Release (MUTL)
                    Return (Local0)
                }

                Method (ECLV, 0, NotSerialized)
                {
                    While (LAnd (LOr (LNotEqual (CKEV (), Zero), LNotEqual (SLEC, Zero)), LLess (TI3S, 0x78)))
                    {
                        Store (One, Local1)
                        While (LNotEqual (Local1, Zero))
                        {
                            Store (GEVT (), Local1)
                            LEVN (Local1)
                            Add (TIMC, 0x19, TIMC)
                            If (LAnd (LNotEqual (SLEC, Zero), LEqual (Local1, Zero)))
                            {
                                If (LEqual (TIMC, 0x19))
                                {
                                    Sleep (0x64)
                                    Store (0x64, TIMC)
                                    Add (TI3S, 0x04, TI3S)
                                }
                                Else
                                {
                                    Sleep (0x19)
                                    Increment (TI3S)
                                }
                            }

                            If (LEqual (TIMC, 0x64))
                            {
                                Store (Zero, TIMC)
                                If (LNotEqual (SLEC, Zero))
                                {
                                    Store (0x08, Local0)
                                    While (Local0)
                                    {
                                        Decrement (Local0)
                                        Store (DerefOf (Index (SLEN, Local0)), Local3)
                                        If (LNotEqual (Local3, Zero))
                                        {
                                            Decrement (Local3)
                                            Store (Local3, Index (SLEN, Local0))
                                            If (LEqual (Local3, Zero))
                                            {
                                                Store (One, Local1)
                                                Store (DerefOf (Index (SLEV, Local0)), Local2)
                                                Store (Zero, Index (SLEV, Local0))
                                                ILEV (Local2)
                                                Decrement (SLEC)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (LGreaterEqual (TI3S, 0x78))
                    {
                        Store (Zero, TI3S)
                        If (LEqual (EEV0, Zero))
                        {
                            Store (0xFF, EEV0)
                        }
                    }
                }

                Method (IDEV, 2, Serialized)
                {
                    If (LLess (SLEC, 0x08))
                    {
                        Store (0x08, Local0)
                        While (Local0)
                        {
                            Decrement (Local0)
                            If (LEqual (DerefOf (Index (SLEN, Local0)), Zero))
                            {
                                Break
                            }
                        }

                        Store (Arg1, Index (SLEV, Local0))
                        Store (Arg0, Local2)
                        If (LGreaterEqual (Arg0, 0x14))
                        {
                            Divide (Arg0, 0x14, Local2, Local1)
                            Subtract (Arg0, Local1, Local2)
                        }

                        Store (Local2, Index (SLEN, Local0))
                        Increment (SLEC)
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (CLRL, 0, Serialized)
                {
                    Store (Zero, SLEC)
                    Store (Zero, TIMC)
                    Store (0x08, Local0)
                    While (Local0)
                    {
                        Decrement (Local0)
                        Store (Zero, Index (SLEV, Local0))
                        Store (Zero, Index (SLEN, Local0))
                    }
                }

                Method (ILEV, 1, NotSerialized)
                {
                    Acquire (MUTL, 0xFFFF)
                    If (LEqual (EEV0, Zero))
                    {
                        Store (0xFF, EEV0)
                    }

                    If (LLess (LEVC, 0x08))
                    {
                        Store (Arg0, Index (LEVB, LEVC))
                        Increment (LEVC)
                    }

                    Release (MUTL)
                }

                Method (LEVN, 1, NotSerialized)
                {
                    If (LNotEqual (Arg0, Zero))
                    {
                        Store (Arg0, P80H)
                        Sleep (0x14)
                        Store (Match (LEGA, MEQ, Arg0, MTR, Zero, Zero), Local6)
                        If (LNotEqual (Local6, Ones))
                        {
                            LGPA (Local6)
                        }
                        Else
                        {
                            Store (Match (LEGC, MEQ, Arg0, MTR, Zero, Zero), Local6)
                            If (LNotEqual (Local6, Ones))
                            {
                                LGPC (Local6)
                            }
                            Else
                            {
                                Store (Match (LEGD, MEQ, Arg0, MTR, Zero, Zero), Local6)
                                If (LNotEqual (Local6, Ones))
                                {
                                    LGPD (Local6)
                                }
                            }
                        }
                    }
                }

                Device (ADP0)
                {
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Name (_HID, "ACPI0003")  // _HID: Hardware ID
                    Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                    {
                        If (ECOK)
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
                        Zero, 
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
                        If (ECOK)
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
                        If (ECOK)
                        {
                            Store (ECAE, Local0)
                            Store (ECAF, Local5)
                            ShiftLeft (Local5, 0x08, Local5)
                            Add (Local0, Local5, Local0)
                            Store (Local0, Index (BIF1, 0x04))
                            Store (Local0, Local2)
                            Store (ECAA, Local0)
                            Store (ECAB, Local5)
                            ShiftLeft (Local5, 0x08, Local5)
                            Add (Local0, Local5, Local0)
                            Multiply (Local0, Local2, Local0)
                            Divide (Local0, 0x03E8, Local3, Local0)
                            Store (Local0, Index (BIF1, 0x02))
                            Store (ECAC, Local1)
                            Store (ECAD, Local5)
                            ShiftLeft (Local5, 0x08, Local5)
                            Add (Local1, Local5, Local1)
                            Multiply (Local1, Local2, Local1)
                            Divide (Local1, 0x03E8, Local3, Local1)
                            Store (Local1, Index (BIF1, One))
                            Store (Local0, Index (BIF1, 0x08))
                            Concatenate (BCM1, BCM2, Local0)
                            Store (Local0, Index (BIF1, 0x09))
                            Store (ECB9, Local0)
                            Store (ECBA, Local5)
                            ShiftLeft (Local5, 0x08, Local5)
                            Add (Local0, Local5, Local0)
                            Store (ITOS (Local0), Local1)
                            Store (Local1, Index (BIF1, 0x0A))
                        }
                        Else
                        {
                            Store (0xFFFFFFFF, Index (BIF1, One))
                            Store (0xFFFFFFFF, Index (BIF1, 0x04))
                        }

                        Return (BIF1)
                    }

                    Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                    {
                        If (ECOK)
                        {
                            And (ShiftRight (EC94, 0x04), One, Local1)
                            And (EC95, One, Local0)
                            ShiftLeft (Local1, One, Local2)
                            Or (Local0, Local2, Local3)
                            Store (ECC6, Local2)
                            Multiply (Local2, 0x0100, Local1)
                            Store (ECC5, Local0)
                            Add (Local1, Local0, Local1)
                            Add (ECAE, ShiftLeft (ECAF, 0x08), Local4)
                            Multiply (Local1, Local4, Local1)
                            Divide (Local1, 0x03E8, Local0, Local1)
                            Store (Local1, Index (BST1, One))
                            Store (ECA4, Local0)
                            If (LLess (Local0, 0x0F))
                            {
                                Or (Local3, 0x04, Local3)
                            }

                            Store (Local3, Index (BST1, Zero))
                            Store (DerefOf (Index (BIF1, 0x02)), Local1)
                            Multiply (Local1, Local0, Local2)
                            Divide (Local2, 0x64, Local3, Local2)
                            Add (Local2, One, Local2)
                            Store (Local2, Index (BST1, 0x02))
                            Store (DerefOf (Index (BIF1, 0x04)), Local3)
                            Store (Local3, Index (BST1, 0x03))
                        }
                        Else
                        {
                            Store (One, Index (BST1, Zero))
                            Store (0xFFFFFFFF, Index (BST1, One))
                            Store (0xFFFFFFFF, Index (BST1, 0x02))
                            Store (0xFFFFFFFF, Index (BST1, 0x03))
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
                Device (PWRB)
                {
                    Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
                }

                Device (LID0)
                {
                    Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
                    Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                    {
                        If (ECOK)
                        {
                            If (IGDS)
                            {
                                If (LEqual (PEGL, 0x02))
                                {
                                    Store (Zero, PEGL)
                                    ILEV (0xE6)
                                    Return (Zero)
                                }
                            }
                            ElseIf (PEGL)
                            {
                                Return (One)
                            }

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

                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x0D, 
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
                }

                Device (KBC)
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
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }
                }

                Device (MOUE)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        Return (0x0001F351)
                    }

                    Name (_CID, Package (0x03)  // _CID: Compatible ID
                    {
                        EisaId ("SYN1900"), 
                        EisaId ("SYN0002"), 
                        EisaId ("PNP0F13")
                    })
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
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
                    }

                    Method (DUSB, 0, NotSerialized)
                    {
                        Store (Zero, BTRS)
                        Acquire (MUTS, 0xFFFF)
                        FLNK (0x16, 0xFC)
                        Release (MUTS)
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
                                Acquire (MUTS, 0xFFFF)
                                FLNK (0x16, 0xFA)
                                Release (MUTS)
                                Store (One, BTRS)
                            }
                        }
                    }

                    Method (BTPF, 0, NotSerialized)
                    {
                        If (ECOK)
                        {
                            Store (RDEC (0x93, 0x20, 0x05), Local2)
                            If (Local2)
                            {
                                Sleep (0xFA)
                            }
                        }
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
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

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0F)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (HPAE)
                        {
                            Return (0x0B)
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0F._BAS, HPT0)  // _BAS: Base Address
                            If (LEqual (HPAS, One))
                            {
                                Store (0xFED01000, HPT0)
                            }

                            If (LEqual (HPAS, 0x02))
                            {
                                Store (0xFED02000, HPT0)
                            }

                            If (LEqual (HPAS, 0x03))
                            {
                                Store (0xFED03000, HPT0)
                            }
                        }

                        Return (BUF0)
                    }
                }

                Device (IPIC)
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
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
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
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
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
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0810,             // Range Minimum
                            0x0810,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
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

                    Store (RDEC (0xDA, 0x03, Zero), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Store (0x03, Local0)
                    }
                    Else
                    {
                        Store (One, Local0)
                    }

                    WREC (0xDA, 0x03, Zero, Local0)
                }

                Device (RHB1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (IHUB)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Device (PRT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Name (PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x91, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03 
                            })
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Name (PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x51, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03 
                            })
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Name (PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x59, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03 
                            })
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Name (PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x59, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03 
                            })
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x02, 
                                Zero, 
                                Zero
                            })
                            Name (PLD, Buffer (0x10)  // _PLD: Physical Location of Device
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x11, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03 
                            })
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (PRT7)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (PRT8)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                    }
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
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

                Device (RHB2)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (IHUB)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Device (PRT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                        }
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
                Field (HDAR, WordAcc, NoLock, Preserve)
                {
                    DCKA,   1, 
                    Offset (0x01), 
                    DCKM,   1, 
                        ,   6, 
                    DCKS,   1, 
                    Offset (0x08), 
                        ,   15, 
                    PMES,   1
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKMD)
                    {
                        Return (Package (0x02)
                        {
                            0x0D, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0D, 
                            Zero
                        })
                    }
                }
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            Zero
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05)
                    }

                    Return (PR05)
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            Zero
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06)
                    }

                    Return (PR06)
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            Zero
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07)
                    }

                    Return (PR07)
                }
            }

            Device (RP05)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            Zero
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08)
                    }

                    Return (PR08)
                }
            }

            Device (RP07)
            {
                Name (_ADR, 0x001C0006)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            Zero
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A)
                    }

                    Return (PR0A)
                }
            }

            Device (RP08)
            {
                Name (_ADR, 0x001C0007)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x1B), 
                    LSCX,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSPX,   1, 
                    Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (WKPM)
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x09, 
                            Zero
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B)
                    }

                    Return (PR0B)
                }
            }

            Device (IO10)
            {
                Name (_ADR, 0x00080000)  // _ADR: Address
                OperationRegion (IBUS, PCI_Config, 0xD0, 0xE0)
                Field (IBUS, DWordAcc, NoLock, Preserve)
                {
                        ,   26, 
                    TOLM,   6, 
                        ,   26, 
                    TOHM,   38, 
                    Offset (0xB0), 
                    VTEN,   1, 
                        ,   11, 
                    VTBA,   20
                }
            }

            Device (IO1X)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                OperationRegion (PBIC, PCI_Config, Zero, 0xF0)
                Field (PBIC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x7C), 
                    SR0,    32, 
                    SR1,    32, 
                    SR2,    32, 
                    SR3,    32, 
                    SR4,    32, 
                    SR5,    32, 
                    SR6,    32, 
                    SR7,    32, 
                    SR8,    32, 
                    SR9,    32
                }
            }

            Device (IIO0)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (IBUS, PCI_Config, 0xD0, 0xE0)
                Field (IBUS, DWordAcc, NoLock, Preserve)
                {
                        ,   26, 
                    TOLM,   6, 
                        ,   26, 
                    TOHM,   38, 
                    Offset (0xB0), 
                    VTEN,   1, 
                        ,   11, 
                    VTBA,   20
                }
            }

            Device (IIOX)
            {
                Name (_ADR, 0x00140001)  // _ADR: Address
                OperationRegion (PBIC, PCI_Config, Zero, 0xF0)
                Field (PBIC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x7C), 
                    SR0,    32, 
                    SR1,    32, 
                    SR2,    32, 
                    SR3,    32, 
                    SR4,    32, 
                    SR5,    32, 
                    SR6,    32, 
                    SR7,    32, 
                    SR8,    32, 
                    SR9,    32
                }
            }

            Device (PEG3)
            {
                Name (_ADR, 0x00030000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C)
                    }

                    Return (PR0C)
                }
            }

            Device (PEG5)
            {
                Name (_ADR, 0x00050000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C)
                    }

                    Return (PR0C)
                }
            }

            Device (PEG6)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
        Processor (CPU4, 0x05, 0x00000410, 0x06) {}
        Processor (CPU5, 0x06, 0x00000410, 0x06) {}
        Processor (CPU6, 0x07, 0x00000410, 0x06) {}
        Processor (CPU7, 0x08, 0x00000410, 0x06) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 3, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }

        If (LEqual (Arg0, One))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)), P80D)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)), P80D)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)), P80D)
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (Or (And (P80D, Zero), Arg1), P80D)
        }

        If (LEqual (Arg2, Zero)) {}
        If (LEqual (Arg2, One))
        {
            Store (P80D, P80H)
        }
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Zero, P80D)
        P8XH (Zero, Arg0, Zero)
        SFNK (Arg0)
        If (LEqual (Arg0, 0x03))
        {
            P8XH (0x04, 0x53, Zero)
            P8XH (0x04, 0x53, One)
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            P8XH (0x04, 0x54, Zero)
            P8XH (0x04, 0x54, One)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        Store (Zero, P80D)
        If (NEXP)
        {
            If (And (OSCC, 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If (And (OSCC, 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (LEqual (Arg0, 0x03))
        {
            WREC (0xDA, 0x03, Zero, 0x02)
            P8XH (0x04, 0xE3, Zero)
            P8XH (0x04, 0xE3, One)
            If (LGreater (OSYS, 0x07D6))
            {
                If (RDEC (0xA2, 0xFF, Zero))
                {
                    Notify (\_SB.PCI0.LPCB.PWRB, 0x02)
                }
            }

            If (POFL)
            {
                Store (One, POEN)
                Store (Zero, USBW)
                Store (Zero, POEN)
                Store (Zero, POFL)
            }

            If (LEqual (Zero, ACTT)) {}
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x14)
            }

            If (LEqual (PMEE, One))
            {
                Store (One, PMEN)
            }

            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (ACPS, Zero))
                    {
                        Decrement (ACPS)
                        PNOT ()
                        Increment (ACPS)
                        PNOT ()
                    }
                    Else
                    {
                        Increment (ACPS)
                        PNOT ()
                        Decrement (ACPS)
                        PNOT ()
                    }
                }
            }

            If (LEqual (RP1D, Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }

            If (LEqual (RP2D, Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero)
            }

            If (LEqual (RP3D, Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }

            If (LEqual (RP4D, Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero)
            }

            If (LEqual (RP5D, Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero)
            }

            If (LEqual (RP7D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero)
                }
            }

            If (LEqual (RP8D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero)
                }
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            \_SB.PCI0.LPCB.LREG ()
            P8XH (0x04, 0xE4, Zero)
            P8XH (0x04, 0xE4, One)
            If (LLess (OSYS, 0x07D6))
            {
                Notify (\_SB.PCI0.LPCB.PWRB, 0x02)
            }
        }

        WFNK (Arg0)
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        If (LGreater (TCNT, One))
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81)
                }
            }

            If (And (PDC4, 0x08))
            {
                Notify (\_PR.CPU4, 0x80)
                If (And (PDC4, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81)
                }
            }

            If (And (PDC5, 0x08))
            {
                Notify (\_PR.CPU5, 0x80)
                If (And (PDC5, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81)
                }
            }

            If (And (PDC6, 0x08))
            {
                Notify (\_PR.CPU6, 0x80)
                If (And (PDC6, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81)
                }
            }

            If (And (PDC7, 0x08))
            {
                Notify (\_PR.CPU7, 0x80)
                If (And (PDC7, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81)
        }
    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTP))
        {
            Store (Zero, TRP0)
        }

        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }

        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRPH)
        }

        Return (SMIF)
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (0x07D0, OSYS)
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    Store (0x03E8, OSYS)
                }

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

                If (_OSI ("Windows 2009"))
                {
                    Store (0x07D9, OSYS)
                }

                If (LEqual (OSYS, 0x07D6))
                {
                    Acquire (MUTS, 0xFFFF)
                    OSMI (0xE4)
                    Release (MUTS)
                }

                Store (OSYS, OSY1)
            }

            ^LPCB.LREG ()
        }

        Method (NHPG, 0, Serialized)
        {
            Store (Zero, ^RP01.HPEX)
            Store (Zero, ^RP02.HPEX)
            Store (Zero, ^RP03.HPEX)
            Store (Zero, ^RP04.HPEX)
            Store (Zero, ^RP05.HPEX)
            Store (Zero, ^RP07.HPEX)
            Store (Zero, ^RP08.HPEX)
            Store (One, ^RP01.HPSX)
            Store (One, ^RP02.HPSX)
            Store (One, ^RP03.HPSX)
            Store (One, ^RP04.HPSX)
            Store (One, ^RP05.HPSX)
            Store (One, ^RP07.HPSX)
            Store (One, ^RP08.HPSX)
        }

        Method (NPME, 0, Serialized)
        {
            Store (Zero, ^RP01.PMEX)
            Store (Zero, ^RP02.PMEX)
            Store (Zero, ^RP03.PMEX)
            Store (Zero, ^RP04.PMEX)
            Store (Zero, ^RP05.PMEX)
            Store (Zero, ^RP07.PMEX)
            Store (Zero, ^RP08.PMEX)
            Store (One, ^RP01.PMSX)
            Store (One, ^RP02.PMSX)
            Store (One, ^RP03.PMSX)
            Store (One, ^RP04.PMSX)
            Store (One, ^RP05.PMSX)
            Store (One, ^RP07.PMSX)
            Store (One, ^RP08.PMSX)
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Name (BCMF, One)
        Name (BRLV, Package (0x0A)
        {
            0x55, 
            0x28, 
            0x0A, 
            0x14, 
            0x1E, 
            0x28, 
            0x37, 
            0x46, 
            0x55, 
            0x64
        })
        Name (BRLT, Package (0x0A)
        {
            0x55, 
            0x28, 
            0x0A, 
            0x14, 
            0x1E, 
            0x28, 
            0x37, 
            0x46, 
            0x55, 
            0x64
        })
        Name (PANL, Package (0x14)
        {
            Package (0x0A)
            {
                0x4E, 
                0x1B, 
                0x07, 
                0x0B, 
                0x12, 
                0x1B, 
                0x2A, 
                0x3A, 
                0x4E, 
                0x64
            }, 

            Package (0x0A)
            {
                0x48, 
                0x19, 
                0x08, 
                0x0C, 
                0x10, 
                0x19, 
                0x28, 
                0x37, 
                0x48, 
                0x64
            }, 

            Package (0x0A)
            {
                0x4E, 
                0x1B, 
                0x09, 
                0x0D, 
                0x12, 
                0x1B, 
                0x2B, 
                0x3B, 
                0x4E, 
                0x64
            }, 

            Package (0x0A)
            {
                0x51, 
                0x1C, 
                0x0A, 
                0x0E, 
                0x13, 
                0x1C, 
                0x2D, 
                0x3D, 
                0x51, 
                0x64
            }, 

            Package (0x0A)
            {
                0x4A, 
                0x2B, 
                0x1C, 
                0x20, 
                0x24, 
                0x2B, 
                0x36, 
                0x3F, 
                0x4A, 
                0x64
            }, 

            Package (0x0A)
            {
                0x54, 
                0x31, 
                0x1D, 
                0x23, 
                0x29, 
                0x31, 
                0x3E, 
                0x48, 
                0x54, 
                0x64
            }, 

            Package (0x0A)
            {
                0x4E, 
                0x2C, 
                0x18, 
                0x1E, 
                0x24, 
                0x2C, 
                0x37, 
                0x42, 
                0x4E, 
                0x64
            }, 

            Package (0x0A)
            {
                0x52, 
                0x2D, 
                0x19, 
                0x20, 
                0x25, 
                0x2D, 
                0x39, 
                0x44, 
                0x52, 
                0x64
            }, 

            Package (0x0A)
            {
                0x45, 
                0x17, 
                0x08, 
                0x0C, 
                0x10, 
                0x17, 
                0x26, 
                0x34, 
                0x45, 
                0x64
            }, 

            Package (0x0A)
            {
                0x47, 
                0x19, 
                0x09, 
                0x0D, 
                0x10, 
                0x19, 
                0x27, 
                0x36, 
                0x47, 
                0x64
            }, 

            Package (0x0A)
            {
                0x4E, 
                0x19, 
                0x08, 
                0x0C, 
                0x10, 
                0x19, 
                0x2A, 
                0x38, 
                0x4E, 
                0x64
            }, 

            Package (0x0A)
            {
                0x45, 
                0x18, 
                0x08, 
                0x0D, 
                0x10, 
                0x18, 
                0x26, 
                0x34, 
                0x45, 
                0x64
            }, 

            Package (0x0A)
            {
                0x45, 
                0x18, 
                0x08, 
                0x0D, 
                0x10, 
                0x18, 
                0x26, 
                0x34, 
                0x45, 
                0x64
            }, 

            Package (0x0A)
            {
                0x45, 
                0x18, 
                0x08, 
                0x0D, 
                0x10, 
                0x18, 
                0x26, 
                0x34, 
                0x45, 
                0x64
            }, 

            Package (0x0A)
            {
                0x4C, 
                0x1B, 
                0x09, 
                0x0D, 
                0x12, 
                0x1B, 
                0x2A, 
                0x3A, 
                0x4C, 
                0x64
            }, 

            Package (0x0A)
            {
                0x43, 
                0x17, 
                0x08, 
                0x0C, 
                0x10, 
                0x17, 
                0x25, 
                0x33, 
                0x43, 
                0x64
            }, 

            Package (0x0A)
            {
                0x4B, 
                0x1A, 
                0x08, 
                0x0C, 
                0x11, 
                0x1A, 
                0x29, 
                0x39, 
                0x4B, 
                0x64
            }, 

            Package (0x0A)
            {
                0x4A, 
                0x1A, 
                0x09, 
                0x0E, 
                0x12, 
                0x1A, 
                0x2A, 
                0x39, 
                0x4A, 
                0x64
            }, 

            Package (0x0A)
            {
                0x45, 
                0x18, 
                0x08, 
                0x0C, 
                0x10, 
                0x18, 
                0x26, 
                0x34, 
                0x45, 
                0x64
            }, 

            Package (0x0A)
            {
                0x47, 
                0x18, 
                0x08, 
                0x0C, 
                0x10, 
                0x18, 
                0x27, 
                0x36, 
                0x47, 
                0x64
            }
        })
    }

    Scope (_TZ)
    {
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (One)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
            }
        }

        Device (FAN)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }

        ThermalZone (THRM)
        {
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Store (EC9C, Local0)
                If (LGreater (Local0, 0x72))
                {
                    Return (0x0EB2)
                }

                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (0x0D68)
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (0x0EF8)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x0EF8)
            }

            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, CTYP)
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List
            {
                FAN
            })
            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (LEqual (TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3, 
                        \_PR.CPU4, 
                        \_PR.CPU5, 
                        \_PR.CPU6, 
                        \_PR.CPU7
                    })
                }

                If (LEqual (TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (LEqual (TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Name (_TC1, 0x02)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x05)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x012C)  // _TSP: Thermal Sampling Period
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    _Y16)
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadOnly,
                    0xFF800000,         // Address Base
                    0x00800000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TBR0)  // _BAS: Base Address
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._LEN, TBLN)  // _LEN: Length
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }

                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._LEN, MBLN)  // _LEN: Length
                    Store (Zero, MBLN)
                }
                Else
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, MBR0)  // _BAS: Base Address
                    ShiftLeft (MHBR, 0x0E, MBR0)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    ShiftLeft (DIBI, 0x0C, DBR0)
                }

                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._LEN, EBLN)  // _LEN: Length
                    Store (Zero, EBLN)
                }
                Else
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, EBR0)  // _BAS: Base Address
                    ShiftLeft (EPBR, 0x0C, EBR0)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (^^^CPBG.IMCH.PXBR, 0x14, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, ^^^CPBG.IMCH.PXSZ, XSZ0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._BAS, VTB0)  // _BAS: Base Address
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._LEN, VTLN)  // _LEN: Length
                If (Or (LEqual (And (PNHM, 0x000FFFF0), 0x000106E0), LEqual (And (PNHM, 0x000FFFF0), 0x000106A0)))
                {
                    If (LGreaterEqual (PNHM, 0x000106E1))
                    {
                        If (^^IO10.VTEN)
                        {
                            ShiftLeft (^^IO10.VTBA, 0x0C, VTB0)
                        }
                        Else
                        {
                            Store (Zero, VTLN)
                        }
                    }
                    ElseIf (^^IIO0.VTEN)
                    {
                        ShiftLeft (^^IIO0.VTBA, 0x0C, VTB0)
                    }
                    Else
                    {
                        Store (Zero, VTLN)
                    }
                }
                ElseIf (ADVE)
                {
                    ShiftLeft (ADVT, 0x0C, VTB0)
                }
                Else
                {
                    Store (Zero, VTLN)
                }

                Return (BUF0)
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x20), 
                ,   2, 
            SPST,   1, 
            Offset (0x28), 
                ,   11, 
            PMEN,   1, 
            Offset (0x3C), 
                ,   1, 
            POEN,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            GL00,   8, 
            GL01,   8, 
            KBLO,   1, 
            TGON,   1, 
                ,   3, 
            GP21,   1, 
            Offset (0x0F), 
                ,   3, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
            GIV0,   8, 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
                ,   5, 
                ,   1, 
            Offset (0x39), 
            GL05,   8, 
            BTRS,   1, 
                ,   4, 
            BTIO,   1, 
            Offset (0x3B), 
            KBLX,   1, 
                ,   2, 
            GP59,   1, 
            Offset (0x3C), 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            Offset (0x3518), 
            USBW,   3
        }

        Method (GPI0, 4, NotSerialized)
        {
            If (LEqual (Or (Arg0, Arg1), Zero))
            {
                Return (0xFFFFFFFF)
            }
            ElseIf (And (LEqual (Arg0, Zero), LEqual (Arg1, One)))
            {
                Return (0x0384)
            }

            Return (Multiply (0x1E, Subtract (0x09, Add (Arg2, Arg3))))
        }

        Method (GDMA, 2, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                If (LEqual (Arg1, One))
                {
                    Return (0x0F)
                }
            }

            Return (0xFFFFFFFF)
        }

        Method (SFLG, 5, NotSerialized)
        {
            Store (Zero, Local0)
            Or (Arg1, Local0, Local0)
            Or (ShiftLeft (Arg0, One), Local0, Local0)
            Or (ShiftLeft (Arg2, 0x03), Local0, Local0)
            Or (ShiftLeft (Arg3, 0x02), Local0, Local0)
            Or (ShiftLeft (Arg4, 0x04), Local0, Local0)
            Return (Local0)
        }

        Method (SPIO, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00                   
            })
            CreateByteField (PBUF, Zero, RCT)
            CreateByteField (PBUF, One, ISP)
            CreateByteField (PBUF, 0x02, FAST)
            CreateByteField (PBUF, 0x03, DMAE)
            CreateByteField (PBUF, 0x04, PIOT)
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, 0xFFFFFFFF)))
            {
                Return (PBUF)
            }

            If (LGreater (Arg0, 0xF0))
            {
                Store (One, DMAE)
                Store (Zero, PIOT)
            }
            Else
            {
                Store (One, FAST)
                If (And (Arg1, 0x02))
                {
                    If (And (LEqual (Arg0, 0x78), And (Arg2, 0x02)))
                    {
                        Store (0x03, RCT)
                        Store (0x02, ISP)
                        Store (0x04, PIOT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                    {
                        Store (One, RCT)
                        Store (0x02, ISP)
                        Store (0x03, PIOT)
                        Return (PBUF)
                    }
                    Else
                    {
                        Store (Zero, RCT)
                        Store (One, ISP)
                        Store (0x02, PIOT)
                    }
                }
            }

            Return (PBUF)
        }

        Method (SDMA, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00                         
            })
            CreateByteField (PBUF, Zero, PCT)
            CreateByteField (PBUF, One, PCB)
            CreateByteField (PBUF, 0x02, UDMT)
            CreateByteField (PBUF, 0x03, UDME)
            CreateByteField (PBUF, 0x04, DMAT)
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, 0xFFFFFFFF)))
            {
                Return (PBUF)
            }

            If (LLessEqual (Arg0, 0x78))
            {
                If (And (Arg1, 0x04))
                {
                    Store (One, UDME)
                    If (And (LLessEqual (Arg0, 0x0F), And (Arg2, 0x40)))
                    {
                        Store (One, UDMT)
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x06, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x14), And (Arg2, 0x20)))
                    {
                        Store (One, UDMT)
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x05, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x1E), And (Arg2, 0x10)))
                    {
                        Store (One, PCB)
                        Store (0x02, PCT)
                        Store (0x04, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x2D), And (Arg2, 0x08)))
                    {
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x03, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x3C), And (Arg2, 0x04)))
                    {
                        Store (0x02, PCT)
                        Store (0x02, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x5A), And (Arg2, 0x02)))
                    {
                        Store (One, PCT)
                        Store (One, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x78), And (Arg2, One)))
                    {
                        Store (Zero, DMAT)
                    }
                }
            }

            Return (PBUF)
        }

        Method (SETT, 3, Serialized)
        {
            If (And (Arg1, 0x02))
            {
                If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                {
                    Return (0x0B)
                }

                If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                {
                    Return (0x09)
                }
            }

            Return (0x04)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, ShiftLeft (SBAR, 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (0x44, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (Arg2, DAT0)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                And (Arg2, 0xFF, DAT1)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT0)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (Or (ShiftLeft (DAT0, 0x08), DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg3, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCON)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg2, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x54, HCON)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }

                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Decrement (Local0)
                        Sleep (One)
                        If (LEqual (Local0, Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCON, 0x02, HCON)
                Or (HSTS, 0xFF, HSTS)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Add (L01C, One, L01C)
            If (LAnd (LEqual (RP5D, Zero), \_SB.PCI0.RP05.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    Store (One, \_SB.PCI0.RP05.PDCX)
                    Store (One, \_SB.PCI0.RP05.HPSX)
                    Notify (\_SB.PCI0.RP05, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP05.HPSX)
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (Zero, GPEC)
            If (CondRefOf (\_SB.PCI0.IEIT.EITV))
            {
                \_SB.PCI0.IEIT.EITV ()
            }

            If (CondRefOf (TNOT))
            {
                TNOT ()
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.GFX0.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L15, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P2, 0x02)
            Notify (\_SB.PCI0.P0P2.PEGP, 0x02)
            Notify (\_SB.PCI0.RP01, 0x02)
            Notify (\_SB.PCI0.RP02, 0x02)
            Notify (\_SB.PCI0.RP03, 0x02)
            Notify (\_SB.PCI0.RP04, 0x02)
            Notify (\_SB.PCI0.RP05, 0x02)
            Notify (\_SB.PCI0.RP07, 0x02)
            Notify (\_SB.PCI0.RP08, 0x02)
            Notify (\_SB.PCI0.PEG3, 0x02)
            Notify (\_SB.PCI0.PEG5, 0x02)
            Notify (\_SB.PCI0.PEG6, 0x02)
        }

        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P1, 0x02)
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
            Notify (\_SB.PCI0.HDEF, 0x02)
        }

        Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L25, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L17, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.PCI0.LPCB.ECLV ()
        }
    }

    OperationRegion (PBIC, PCI_Config, Zero, 0xF0)
    Field (PBIC, DWordAcc, NoLock, Preserve)
    {
        Offset (0x7C), 
        SR0,    32, 
        SR1,    32, 
        SR2,    32, 
        SR3,    32, 
        SR4,    32, 
        SR5,    32, 
        SR6,    32, 
        SR7,    32, 
        SR8,    32, 
        SR9,    32
    }

    OperationRegion (IBUS, PCI_Config, 0xD0, 0xE0)
    Field (IBUS, DWordAcc, NoLock, Preserve)
    {
            ,   26, 
        TOLM,   6, 
            ,   26, 
        TOHM,   38, 
        Offset (0xB0), 
        VTEN,   1, 
            ,   11, 
        VTBA,   20
    }

    Scope (_SB)
    {
        Device (CPBG)
        {
            Name (_HID, EisaId ("PNP0A03"))  // _HID: Hardware ID
            Name (_UID, 0xFF)  // _UID: Unique ID
            Name (_BBN, 0x3F)  // _BBN: BIOS Bus Number
            Name (_ADR, Zero)  // _ADR: Address
            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x003F,             // Range Minimum
                    0x003F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0001,             // Length
                    ,, _Y17)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.CPBG._Y17._MIN, PBMN)  // _MIN: Minimum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBMN)
                CreateWordField (BUF0, \_SB.CPBG._Y17._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBMX)
                Return (BUF0)
            }

            Device (IMCH)
            {
                Name (_ADR, One)  // _ADR: Address
                OperationRegion (PBUS, PCI_Config, Zero, 0xC0)
                Field (PBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                        ,   4, 
                    PM0H,   2, 
                    Offset (0x41), 
                    PM1L,   2, 
                        ,   2, 
                    PM1H,   2, 
                    Offset (0x42), 
                    PM2L,   2, 
                        ,   2, 
                    PM2H,   2, 
                    Offset (0x43), 
                    PM3L,   2, 
                        ,   2, 
                    PM3H,   2, 
                    Offset (0x44), 
                    PM4L,   2, 
                        ,   2, 
                    PM4H,   2, 
                    Offset (0x45), 
                    PM5L,   2, 
                        ,   2, 
                    PM5H,   2, 
                    Offset (0x46), 
                    PM6L,   2, 
                        ,   2, 
                    PM6H,   2, 
                    Offset (0x47), 
                    Offset (0x48), 
                        ,   7, 
                    HENA,   1, 
                    Offset (0x50), 
                    PXEN,   1, 
                    PXSZ,   2, 
                        ,   17, 
                    PXBR,   12
                }
            }
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (LEqual (S3DS, One))
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

