/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of acpi_dsdt.aml, Mon Dec 19 23:34:53 2016
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00014795 (83861)
 *     Revision         0x02
 *     Checksum         0x72
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "Notebook"
 *     OEM Revision     0x00000208 (520)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
DefinitionBlock ("", "DSDT", 2, "_ASUS_", "Notebook", 0x00000208)
{
    /*
     * iASL Warning: There were 9 external control methods found during
     * disassembly, but only 4 were resolved (5 unresolved). Additional
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
    External (_PR_.CPU0._PPC, MethodObj)    // 0 Arguments
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU0.MPPC, IntObj)
    External (_SB_.IAOE.PTSL, UnknownObj)    // Warning: Unknown object
    External (_SB_.IETM, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCCD, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCCD.PENB, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.AINT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GFX0.ASLS, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CADL, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL2, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL3, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL4, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL5, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL6, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL7, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CAL8, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CBLV, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CEVT, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CLID, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPDL, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL2, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL3, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL4, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL5, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL6, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL7, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CPL8, FieldUnitObj)
    External (_SB_.PCI0.GFX0.CSTS, FieldUnitObj)
    External (_SB_.PCI0.GFX0.GSCI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.GSES, FieldUnitObj)
    External (_SB_.PCI0.GFX0.GSSE, FieldUnitObj)
    External (_SB_.PCI0.GFX0.IUEH, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PAUD.PUAM, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.PEG0, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.PEG0.HPME, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.PEG0.PEGP, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.PEG1, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.PEG1.HPME, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.PEG2, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.PEG2.HPME, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.TPM_.PTS_, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (GSMI, FieldUnitObj)
    External (MDBG, IntObj)    // Warning: Unknown object
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)

    Name (SMBS, 0x0580)
    Name (SMBL, 0x20)
    Name (PMBS, 0x1800)
    Name (GPBS, 0x1C00)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (SMCR, 0x1830)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (FLSZ, 0x00400000)
    Name (SRCB, 0xFED1C000)
    Name (RCLN, 0x4000)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (LAPB, 0xFEE00000)
    Name (EGPB, 0xFED19000)
    Name (MCHB, 0xFED10000)
    Name (VTBS, 0xFED90000)
    Name (VTLN, 0x4000)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (SRSI, 0xB2)
    Name (CSMI, 0x61)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FUWS, 0x04)
    Name (BGR, One)
    Name (BFR, 0x02)
    Name (BBR, 0x03)
    Name (BWC, 0x04)
    Name (BWT1, 0x20)
    Name (BFHC, 0x0100)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (PFTI, 0x04)
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
    Name (BW1P, 0x21)
    Name (BW2C, 0x22)
    Name (BW2P, 0x23)
    Name (BSPC, 0x24)
    Name (BSPP, 0x25)
    Name (BICO, 0x27)
    Name (BICC, 0x28)
    Name (BHB, 0x30)
    Name (BFS2, 0x31)
    Name (BFS3, 0x32)
    Name (BFS4, 0x33)
    Name (BRH, 0x35)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (HIDK, "MSFT0001")
    Name (HIDM, "MSFT0003")
    Name (CIDK, 0x0303D041)
    Name (CIDM, 0x030FD041)
    Name (MBEC, Zero)
    Name (PMLN, 0x0100)
    Name (GPLN, 0x0400)
    Name (MBLF, 0x0A)
    Name (SOAO, 0x6B)
    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0xC400)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    OperationRegion (GNVS, SystemMemory, 0xADAF2C18, 0x029E)
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
        Offset (0x1E), 
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x42), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x48), 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    16, 
        PLID,   8, 
        ECTG,   8, 
        Offset (0x70), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0x7A), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        VFN5,   8, 
        VFN6,   8, 
        VFN7,   8, 
        VFN8,   8, 
        VFN9,   8, 
        Offset (0x8F), 
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
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        Offset (0xB0), 
        LTR1,   8, 
        LTR2,   8, 
        LTR3,   8, 
        LTR4,   8, 
        LTR5,   8, 
        LTR6,   8, 
        LTR7,   8, 
        LTR8,   8, 
        OBF1,   8, 
        OBF2,   8, 
        OBF3,   8, 
        OBF4,   8, 
        OBF5,   8, 
        OBF6,   8, 
        OBF7,   8, 
        OBF8,   8, 
        XHCI,   8, 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        DDRF,   8, 
        RTD3,   8, 
        PEP0,   8, 
        PEP3,   8, 
        DPTF,   8, 
        SADE,   8, 
        SACR,   8, 
        SAHT,   8, 
        PCHD,   8, 
        PCHC,   8, 
        PCHH,   8, 
        CTDP,   8, 
        LPMP,   8, 
        LPMV,   8, 
        ECEU,   8, 
        TGFG,   16, 
        MEMD,   8, 
        MEMC,   8, 
        MEMH,   8, 
        FND1,   8, 
        FND2,   8, 
        AMBD,   8, 
        AMAT,   8, 
        AMPT,   8, 
        AMCT,   8, 
        AMHT,   8, 
        SKDE,   8, 
        SKAT,   8, 
        SKPT,   8, 
        SKCT,   8, 
        SKHT,   8, 
        EFDE,   8, 
        EFAT,   8, 
        EFPT,   8, 
        EFCT,   8, 
        EFHT,   8, 
        VRDE,   8, 
        VRAT,   8, 
        VRPT,   8, 
        VRCT,   8, 
        VRHT,   8, 
        DPAP,   8, 
        DPPP,   8, 
        DPCP,   8, 
        DCMP,   8, 
        TRTV,   8, 
        LPOE,   8, 
        LPOP,   8, 
        LPOS,   8, 
        LPOW,   8, 
        LPER,   8, 
        PPSZ,   32, 
        DISE,   8, 
        PFMA,   64, 
        PFMS,   8, 
        PFIA,   16, 
        ICNF,   8, 
        DSP0,   32, 
        DSP1,   32, 
        NFCE,   8, 
        CODS,   8, 
        SNHE,   8, 
        S0ID,   8, 
        CTDB,   8, 
        Offset (0x207), 
        PWRE,   8, 
        PWRP,   8, 
        XHPR,   8, 
        SDS0,   8, 
        SDS1,   16, 
        SDS2,   8, 
        SDS3,   8, 
        SDS4,   8, 
        SDS5,   8, 
        SDS6,   8, 
        RIC0,   8, 
        PEPY,   8, 
        DVS0,   8, 
        DVS1,   8, 
        DVS2,   8, 
        DVS3,   8, 
        GBSX,   8, 
        IUBE,   8, 
        IUCE,   8, 
        IUDE,   8, 
        ECNO,   8, 
        AUDD,   16, 
        DSPD,   16, 
        IC0D,   16, 
        IC1D,   16, 
        IC1S,   16, 
        VRRD,   16, 
        PSCP,   8, 
        RWAG,   8, 
        I20D,   16, 
        I21D,   16, 
        Offset (0x231), 
        RCG0,   8, 
        ECDB,   8, 
        P2ME,   8, 
        SSH0,   16, 
        SSL0,   16, 
        SSD0,   16, 
        FMH0,   16, 
        FML0,   16, 
        FMD0,   16, 
        FPH0,   16, 
        FPL0,   16, 
        FPD0,   16, 
        SSH1,   16, 
        SSL1,   16, 
        SSD1,   16, 
        FMH1,   16, 
        FML1,   16, 
        FMD1,   16, 
        FPH1,   16, 
        FPL1,   16, 
        FPD1,   16, 
        M0C0,   16, 
        M1C0,   16, 
        M2C0,   16, 
        M0C1,   16, 
        M1C1,   16, 
        M2C1,   16, 
        M0C2,   16, 
        M1C2,   16, 
        M0C3,   16, 
        M1C3,   16, 
        M0C4,   16, 
        M1C4,   16, 
        M0C5,   16, 
        M1C5,   16, 
        TBSF,   8, 
        GIRQ,   32, 
        DMTP,   8, 
        DMTD,   8, 
        DMSH,   8, 
        LANP,   8, 
        XHDS,   8, 
        SHSB,   8, 
        PLCS,   8, 
        PLVL,   16, 
        GN1E,   8, 
        G1AT,   8, 
        G1PT,   8, 
        G1CT,   8, 
        G1HT,   8, 
        GN2E,   8, 
        G2AT,   8, 
        G2PT,   8, 
        G2CT,   8, 
        G2HT,   8, 
        WWSD,   8, 
        CVSD,   8, 
        SSDD,   8, 
        INLD,   8, 
        IFAT,   8, 
        IFPT,   8, 
        IFCT,   8, 
        IFHT,   8, 
        DOSD,   8, 
        USBH,   8, 
        BCV4,   8, 
        WTV0,   8, 
        WTV1,   8, 
        APFU,   8, 
        SOHP,   8, 
        NOHP,   8, 
        TBSE,   8, 
        WKFN,   8
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x20)
        {
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
                LNKC, 
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
                0x001AFFFF, 
                Zero, 
                LNKA, 
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
                LNKD, 
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
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
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
                0x0003FFFF, 
                Zero, 
                LNKA, 
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
                0x0014FFFF, 
                Zero, 
                LNKA, 
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
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKC, 
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
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKD, 
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
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x20)
        {
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
                0x12
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
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
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
                0x13
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
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
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
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x10
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
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
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
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x12
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
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x13
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
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
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
        Name (PR0A, Package (0x04)
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
        Name (AR0A, Package (0x04)
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
        Name (PR0B, Package (0x04)
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
        Name (AR0B, Package (0x04)
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
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12}
        })
        Name (PRSB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,12}
        })
        Alias (PRSB, PRSC)
        Alias (PRSB, PRSD)
        Alias (PRSB, PRSE)
        Alias (PRSB, PRSF)
        Alias (PRSB, PRSG)
        Alias (PRSB, PRSH)
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

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                D1F2,   1, 
                D1F1,   1, 
                D1F0,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
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
                    0xFEB00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), 0x02), PBMX)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBLN)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }

                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }

                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }

                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }

                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }

                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }

                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }

                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }

                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }

                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }

                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }

                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }

                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }

                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                ShiftLeft (TLUD, 0x14, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                Return (BUF0)
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Name (XCNT, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (^XHC.CUID (Arg0))
                {
                    Return (^XHC.POSC (Arg1, Arg2, Arg3))
                }
                ElseIf (_OSI ("Windows 2012"))
                {
                    If (LEqual (XCNT, Zero))
                    {
                        ^XHC.XSEL ()
                        Increment (XCNT)
                    }
                }

                If (LEqual (Arg0, GUID))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (LEqual (NEXP, Zero))
                    {
                        And (CTRL, 0xFFFFFFF8, CTRL)
                    }

                    If (NEXP)
                    {
                        If (Not (And (CDW1, One)))
                        {
                            If (And (CTRL, One))
                            {
                                NHPG ()
                            }

                            If (And (CTRL, 0x04))
                            {
                                NPME ()
                            }
                        }
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Store (CTRL, OSCC)
                    Return (Local0)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Local0)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, Zero, 0x0100)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x02), 
                        CDID,   16, 
                        Offset (0x08), 
                        CRID,   8, 
                        Offset (0x60), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x68), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0xAC), 
                        Offset (0xAD), 
                        Offset (0xAE), 
                        XUSB,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA)
                        }

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

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB)
                        }

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

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC)
                        }

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

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD)
                        }

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

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE)
                        }

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

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF)
                        }

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

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG)
                        }

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

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH)
                        }

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
                    Offset (0x78), 
                        ,   6, 
                    GR03,   2, 
                    Offset (0x7A), 
                    GR08,   2, 
                    GR09,   2, 
                    GR0A,   2, 
                    GR0B,   2, 
                    Offset (0x7C), 
                        ,   2, 
                    GR19,   2, 
                    Offset (0x80), 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
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
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (And (CDID, 0xF000), 0x8000))
                        {
                            Return (0x1F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
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
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            _Y10)
                        IO (Decode16,
                            0x0900,             // Range Minimum
                            0x0900,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            _Y11)
                        IO (Decode16,
                            0x0A00,             // Range Minimum
                            0x0A00,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            _Y12)
                        IO (Decode16,
                            0x0B00,             // Range Minimum
                            0x0B00,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            _Y13)
                        IO (Decode16,
                            0x1800,             // Range Minimum
                            0x1800,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateWordField (BUF0, \_SB.PCI0.LPCB.LDRC._Y10._MIN, IO0M)  // _MIN: Minimum Base Address
                        CreateWordField (BUF0, \_SB.PCI0.LPCB.LDRC._Y10._MAX, IO0X)  // _MAX: Maximum Base Address
                        Store (GPBS, IO0M)
                        Store (GPBS, IO0X)
                        CreateWordField (BUF0, \_SB.PCI0.LPCB.LDRC._Y11._MIN, IO1M)  // _MIN: Minimum Base Address
                        CreateWordField (BUF0, \_SB.PCI0.LPCB.LDRC._Y11._MAX, IO1X)  // _MAX: Maximum Base Address
                        Store (Add (GPBS, 0x0100), IO1M)
                        Store (Add (GPBS, 0x0100), IO1X)
                        CreateWordField (BUF0, \_SB.PCI0.LPCB.LDRC._Y12._MIN, IO2M)  // _MIN: Minimum Base Address
                        CreateWordField (BUF0, \_SB.PCI0.LPCB.LDRC._Y12._MAX, IO2X)  // _MAX: Maximum Base Address
                        Store (Add (GPBS, 0x0200), IO2M)
                        Store (Add (GPBS, 0x0200), IO2X)
                        CreateWordField (BUF0, \_SB.PCI0.LPCB.LDRC._Y13._MIN, IO3M)  // _MIN: Minimum Base Address
                        CreateWordField (BUF0, \_SB.PCI0.LPCB.LDRC._Y13._MAX, IO3X)  // _MAX: Maximum Base Address
                        Store (Add (GPBS, 0x0300), IO3M)
                        Store (Add (GPBS, 0x0300), IO3X)
                        Return (BUF0)
                    }
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

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x1854,             // Range Minimum
                            0x1854,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (WDTE, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0)
                    }
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (And (MBEC, 0xFFFF))
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }
                }

                Device (LPCR)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x20)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x00,               // Alignment
                            0x09,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y14)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y15)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateWordField (CRS, \_SB.PCI0.LPCB.LPCR._Y14._MIN, PM00)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.LPCB.LPCR._Y14._MAX, PM01)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.LPCB.LPCR._Y14._LEN, PM0L)  // _LEN: Length
                        Store (0x1800, PM00)
                        Store (0x1800, PM01)
                        Store (0x0100, PM0L)
                        CreateWordField (CRS, \_SB.PCI0.LPCB.LPCR._Y15._MIN, GP20)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.LPCB.LPCR._Y15._MAX, GP21)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.LPCB.LPCR._Y15._LEN, GP2L)  // _LEN: Length
                        Store (0x1C00, GP20)
                        Store (0x1C00, GP21)
                        Store (0x0400, GP2L)
                        Return (CRS)
                    }
                }

                Device (OMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y16)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y17)
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (APIC)
                        {
                            CreateDWordField (CRS, \_SB.PCI0.LPCB.OMSC._Y16._LEN, ML01)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.LPCB.OMSC._Y16._BAS, MB01)  // _BAS: Base Address
                            CreateDWordField (CRS, \_SB.PCI0.LPCB.OMSC._Y17._LEN, ML02)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.LPCB.OMSC._Y17._BAS, MB02)  // _BAS: Base Address
                            Store (0xFEC00000, MB01)
                            Store (0x1000, ML01)
                            Store (0xFEE00000, MB02)
                            Store (0x1000, ML02)
                        }

                        Return (CRS)
                    }
                }

                Device (^^RMEM)
                {
                    Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x000A0000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y18)
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            _Y19)
                        Memory32Fixed (ReadWrite,
                            0x00100000,         // Address Base
                            0x00000000,         // Address Length
                            _Y1A)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.RMEM._Y18._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y18._LEN, LEN1)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y19._BAS, BAS2)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y19._LEN, LEN2)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y1A._LEN, LEN3)  // _LEN: Length
                        Return (CRS)
                    }
                }

                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (LEqual (P2MS, One))
                        {
                            Return (0x01019419)
                        }

                        Return (0x08018416)
                    }

                    Name (_CID, Package (0x01)  // _CID: Compatible ID
                    {
                        EisaId ("PNP0F13")
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ShiftLeft (One, 0x0E, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Name (CRS1, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (CRS2, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        ShiftLeft (One, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (CRS1)
                        }
                        Else
                        {
                            Return (CRS2)
                        }
                    }
                }

                Device (PS2K)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        Return ("ATK3001")
                    }

                    Name (_CID, Package (0x02)  // _CID: Compatible ID
                    {
                        EisaId ("PNPC030"), 
                        EisaId ("PNP0303")
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ShiftLeft (One, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (ADBG)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x13)  // _UID: Unique ID
                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0240,             // Range Minimum
                            0x0240,             // Range Maximum
                            0x01,               // Alignment
                            0x1A,               // Length
                            )
                    })
                    OperationRegion (DBGC, SystemIO, 0x0259, 0x10)
                    Field (DBGC, ByteAcc, Lock, Preserve)
                    {
                        DBGP,   8
                    }

                    OperationRegion (DBPP, SystemIO, 0x0250, 0x02)
                    Field (DBPP, ByteAcc, Lock, Preserve)
                    {
                        PPDT,   8, 
                        PPST,   8
                    }

                    OperationRegion (DB80, SystemIO, 0x80, One)
                    Field (DB80, ByteAcc, Lock, Preserve)
                    {
                        DP80,   8
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (CRS1)
                    }

                    Method (CALL, 0, Serialized)
                    {
                        ISMI (0x96)
                    }

                    Method (PUTD, 1, Serialized)
                    {
                        Or (And (Arg0, 0x0F), 0x10, Local0)
                        And (ShiftRight (Arg0, 0x04), 0x0F, Local1)
                        And (Not (Local1), 0x0F, Local2)
                        Store (0xFFFF, Local4)
                        Store (Local0, PPDT)
                        Store (ShiftRight (XOr (PPST, 0x80), 0x03), Local3)
                        While (LAnd (LNotEqual (Local3, 0x10), LNotEqual (Local4, Zero)))
                        {
                            Store (ShiftRight (XOr (PPST, 0x80), 0x03), Local3)
                            Decrement (Local4)
                            Stall (0x1E)
                        }

                        If (LEqual (Local4, Zero))
                        {
                            Store (Zero, PPDT)
                            Return (Zero)
                        }

                        Store (0xFFFF, Local4)
                        Store (Local1, PPDT)
                        Store (ShiftRight (XOr (PPST, 0x80), 0x03), Local3)
                        While (LAnd (LNotEqual (Local3, Zero), LNotEqual (Local4, Zero)))
                        {
                            Store (ShiftRight (XOr (PPST, 0x80), 0x03), Local3)
                            Decrement (Local4)
                            Stall (0x1E)
                        }

                        If (LEqual (Local4, Zero))
                        {
                            Store (Zero, PPDT)
                            Return (Zero)
                        }

                        Store (Local2, PPDT)
                        Return (One)
                    }

                    Method (OUTS, 1, Serialized)
                    {
                        If (LNotEqual (DBGP, 0xFF))
                        {
                            Add (SizeOf (Arg0), One, Local0)
                            Store (Zero, Local1)
                            Name (BUFF, Buffer (Local0) {})
                            Store (Arg0, BUFF)
                            Subtract (Local0, One, Local0)
                            If (LEqual (PUTD (0x53), Zero))
                            {
                                Return (Zero)
                            }

                            While (LNotEqual (DerefOf (Index (BUFF, Local1)), Zero))
                            {
                                If (LEqual (PUTD (DerefOf (Index (BUFF, Local1))), Zero))
                                {
                                    PUTD (Zero)
                                    Return (Zero)
                                }

                                Increment (Local1)
                            }

                            PUTD (Zero)
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (OUTD, 1, Serialized)
                    {
                        Name (DEC, Buffer (0x0B)
                        {
                            "0123456789"
                        })
                        Name (TMP, Buffer (0x0B) {})
                        Store (Zero, Local0)
                        Store (Arg0, Local1)
                        If (LEqual (Local1, Zero))
                        {
                            OUTS ("0")
                        }
                        Else
                        {
                            While (LGreater (Local1, Zero))
                            {
                                Divide (Local1, 0x0A, Local2, Local1)
                                Store (DerefOf (Index (DEC, Local2)), Index (TMP, Local0))
                                Increment (Local0)
                                Store (Zero, Index (TMP, Local0))
                            }

                            Store (Zero, Local2)
                            Decrement (Local0)
                            While (LLess (Local2, Local0))
                            {
                                Store (DerefOf (Index (TMP, Local2)), Local3)
                                Store (DerefOf (Index (TMP, Local0)), Index (TMP, Local2))
                                Store (Local3, Index (TMP, Local0))
                                Increment (Local2)
                                Decrement (Local0)
                            }

                            OUTS (TMP)
                        }
                    }

                    Method (OUTH, 1, Serialized)
                    {
                        Name (HEX, Buffer (0x11)
                        {
                            "0123456789ABCDEF"
                        })
                        Name (TMP, Buffer (0x0A) {})
                        Store (Zero, Local0)
                        Store (Arg0, Local1)
                        While (LLess (Local0, 0x08))
                        {
                            And (Local1, 0x0F, Local2)
                            Store (DerefOf (Index (HEX, Local2)), Index (TMP, Local0))
                            ShiftRight (Local1, 0x04, Local1)
                            Increment (Local0)
                            Store (Zero, Index (TMP, Local0))
                        }

                        Store (Zero, Local2)
                        Decrement (Local0)
                        While (LLess (Local2, Local0))
                        {
                            Store (DerefOf (Index (TMP, Local2)), Local3)
                            Store (DerefOf (Index (TMP, Local0)), Index (TMP, Local2))
                            Store (Local3, Index (TMP, Local0))
                            Increment (Local2)
                            Decrement (Local0)
                        }

                        OUTS (TMP)
                    }

                    Method (OUTX, 2, Serialized)
                    {
                        Add (SizeOf (Arg0), One, Local0)
                        Store (Zero, Local1)
                        Store (Zero, Local2)
                        Store (Zero, Local3)
                        Name (BUFF, Buffer (Local0) {})
                        Store (Arg0, BUFF)
                        Name (BUFX, Buffer (Local0) {})
                        While (LLessEqual (Local1, Local0))
                        {
                            If (LEqual (DerefOf (Index (BUFF, Local1)), Zero))
                            {
                                Store (Zero, Index (BUFX, Local2))
                                OUTS (BUFX)
                                Break
                            }

                            If (LEqual (DerefOf (Index (BUFF, Local1)), 0x25))
                            {
                                Add (Local1, One, Local4)
                                If (LEqual (DerefOf (Index (BUFF, Local4)), 0x25))
                                {
                                    Store (0x25, Index (BUFX, Local2))
                                    Add (Local1, 0x02, Local1)
                                    Increment (Local2)
                                    Continue
                                }

                                If (LEqual (DerefOf (Index (BUFF, Local4)), 0x58))
                                {
                                    Store (Zero, Index (BUFX, Local2))
                                    OUTS (BUFX)
                                    Store (DerefOf (Index (Arg1, Local3)), Local5)
                                    OUTH (Local5)
                                    Add (Local1, 0x02, Local1)
                                    Store (Zero, Local2)
                                    Increment (Local3)
                                    Continue
                                }

                                If (LEqual (DerefOf (Index (BUFF, Local4)), 0x78))
                                {
                                    Store (Zero, Index (BUFX, Local2))
                                    OUTS (BUFX)
                                    Store (DerefOf (Index (Arg1, Local3)), Local5)
                                    OUTH (Local5)
                                    Add (Local1, 0x02, Local1)
                                    Store (Zero, Local2)
                                    Increment (Local3)
                                    Continue
                                }

                                If (LEqual (DerefOf (Index (BUFF, Local4)), 0x64))
                                {
                                    Store (Zero, Index (BUFX, Local2))
                                    OUTS (BUFX)
                                    Store (DerefOf (Index (Arg1, Local3)), Local5)
                                    OUTD (Local5)
                                    Add (Local1, 0x02, Local1)
                                    Store (Zero, Local2)
                                    Increment (Local3)
                                    Continue
                                }

                                If (LEqual (DerefOf (Index (BUFF, Local4)), 0x63))
                                {
                                    Store (Zero, Index (BUFX, Local2))
                                    OUTS (BUFX)
                                    Store (DerefOf (Index (Arg1, Local3)), Local5)
                                    Store (Local5, Index (BUFX, Zero))
                                    Store (Zero, Index (BUFX, One))
                                    OUTS (BUFX)
                                    Add (Local1, 0x02, Local1)
                                    Store (Zero, Local2)
                                    Increment (Local3)
                                    Continue
                                }

                                Store (0x25, Index (BUFX, Local2))
                            }
                            Else
                            {
                                Store (DerefOf (Index (BUFF, Local1)), Local5)
                                Store (Local5, Index (BUFX, Local2))
                            }

                            Increment (Local1)
                            Increment (Local2)
                        }
                    }
                }
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x54), 
                        ,   6, 
                    HPCE,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (VDID, 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Name (OPTS, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        Store (ToInteger (Arg0), _T_0)
                        If (LEqual (_T_0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg2), _T_1)
                                If (LEqual (_T_1, Zero))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        Store (One, OPTS)
                                        If (LTRE)
                                        {
                                            Or (OPTS, 0x40, OPTS)
                                        }

                                        If (OBFF)
                                        {
                                            Or (OPTS, 0x10, OPTS)
                                        }

                                        Return (OPTS)
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                                ElseIf (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                ElseIf (LEqual (_T_1, 0x06))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (LTRE)
                                        {
                                            Name (MLTR, Zero)
                                            If (LEqual (PCHS, One))
                                            {
                                                Store (0x0846, MLTR)
                                            }
                                            ElseIf (LEqual (PCHS, 0x02))
                                            {
                                                Store (0x1003, MLTR)
                                            }

                                            Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV, Zero))
                                            Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                            Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV, 0x02))
                                            Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                            Return (LTRV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE)
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    Sleep (0x64)
                    While (LNotEqual (PSPX, Zero))
                    {
                        Store (One, PSPX)
                    }

                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x54), 
                        ,   6, 
                    HPCE,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (VDID, 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Name (OPTS, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        Store (ToInteger (Arg0), _T_0)
                        If (LEqual (_T_0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg2), _T_1)
                                If (LEqual (_T_1, Zero))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        Store (One, OPTS)
                                        If (LTRE)
                                        {
                                            Or (OPTS, 0x40, OPTS)
                                        }

                                        If (OBFF)
                                        {
                                            Or (OPTS, 0x10, OPTS)
                                        }

                                        Return (OPTS)
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                                ElseIf (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                ElseIf (LEqual (_T_1, 0x06))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (LTRE)
                                        {
                                            Name (MLTR, Zero)
                                            If (LEqual (PCHS, One))
                                            {
                                                Store (0x0846, MLTR)
                                            }
                                            ElseIf (LEqual (PCHS, 0x02))
                                            {
                                                Store (0x1003, MLTR)
                                            }

                                            Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV, Zero))
                                            Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                            Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV, 0x02))
                                            Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                            Return (LTRV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE)
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    Sleep (0x64)
                    While (LNotEqual (PSPX, Zero))
                    {
                        Store (One, PSPX)
                    }

                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
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

                Device (WLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (MINP, PCI_Config, Zero, 0x68)
                    Field (MINP, ByteAcc, NoLock, Preserve)
                    {
                        VNUM,   32, 
                        Offset (0x09), 
                        PINF,   8, 
                        SBCC,   8, 
                        BSCC,   8, 
                        Offset (0x2C), 
                        SNUM,   32, 
                        Offset (0x34)
                    }

                    Method (MPDP, 0, NotSerialized)
                    {
                        If (LEqual (SNUM, 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }

                        If (LNotEqual (BSCC, 0x02))
                        {
                            Return (Zero)
                        }

                        Return (One)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x54), 
                        ,   6, 
                    HPCE,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (VDID, 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                Name (LTRV, Package (0x04)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Name (OPTS, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        Store (ToInteger (Arg0), _T_0)
                        If (LEqual (_T_0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg2), _T_1)
                                If (LEqual (_T_1, Zero))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        Store (One, OPTS)
                                        If (LTRE)
                                        {
                                            Or (OPTS, 0x40, OPTS)
                                        }

                                        If (OBFF)
                                        {
                                            Or (OPTS, 0x10, OPTS)
                                        }

                                        Return (OPTS)
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                                ElseIf (LEqual (_T_1, 0x04))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                ElseIf (LEqual (_T_1, 0x06))
                                {
                                    If (LEqual (Arg1, 0x02))
                                    {
                                        If (LTRE)
                                        {
                                            Name (MLTR, Zero)
                                            If (LEqual (PCHS, One))
                                            {
                                                Store (0x0846, MLTR)
                                            }
                                            ElseIf (LEqual (PCHS, 0x02))
                                            {
                                                Store (0x1003, MLTR)
                                            }

                                            Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV, Zero))
                                            Store (And (MLTR, 0x03FF), Index (LTRV, One))
                                            Store (And (ShiftRight (MLTR, 0x0A), 0x07), Index (LTRV, 0x02))
                                            Store (And (MLTR, 0x03FF), Index (LTRV, 0x03))
                                            Return (LTRV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (HPCE)
                    }
                }

                Method (HPME, 0, Serialized)
                {
                    Sleep (0x64)
                    While (LNotEqual (PSPX, Zero))
                    {
                        Store (One, PSPX)
                    }

                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (One, PMSX)
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (Zero, Local0)
                            }
                        }

                        Notify (PXSX, 0x02)
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

                Device (GLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (LANR, PCI_Config, Zero, 0x0100)
                    Field (LANR, ByteAcc, NoLock, Preserve)
                    {
                        VID,    16, 
                        Offset (0xE0), 
                            ,   15, 
                        PMES,   1
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x09, 0x04))
                    }
                }
            }

            Device (P0P2)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR02)
                    }

                    Return (PR02)
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (VSID, PCI_Config, Zero, 0x20)
                    Field (VSID, ByteAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        CMST,   32, 
                        CLSS,   32
                    }

                    Method (PRST, 0, NotSerialized)
                    {
                        If (LEqual (DVID, 0xFFFFFFFF))
                        {
                            Return (Zero)
                        }
                        ElseIf (LOr (LEqual (And (CLSS, 0xFFFFFF00), 0x03000000), LEqual (And (CLSS, 0xFFFFFF00), 0x03020000)))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (LCDM, One)
                    Name (CRTM, 0x02)
                    Name (TVOM, 0x04)
                    Name (DO1M, 0x08)
                    Name (DO2M, 0x10)
                    Name (DONE, Zero)
                    Name (DOSF, One)
                    Name (BRNC, Zero)
                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        And (Arg0, 0x03, DOSF)
                        Store (ShiftRight (Arg0, 0x02), BRNC)
                        And (BRNC, One, BRNC)
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Name (NDOD, Package (0x05)
                        {
                            0x00010110, 
                            0x00010100, 
                            0x0120, 
                            0x0121, 
                            0x0122
                        })
                        Return (NDOD)
                    }

                    Device (LCDD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            If (And (AVLD, LCDM))
                            {
                                Return (0x1F)
                            }

                            Return (0x1D)
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            If (And (SETD, LCDM))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            If (And (Arg0, 0x40000000))
                            {
                                If (And (Arg0, 0x80000000))
                                {
                                    Store (One, DONE)
                                }
                            }
                        }
                    }

                    Device (CRTD)
                    {
                        Name (_ADR, 0x0100)  // _ADR: Address
                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            If (And (AVLD, CRTM))
                            {
                                Return (0x1F)
                            }

                            Return (0x1D)
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            If (And (SETD, CRTM))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            If (And (Arg0, 0x40000000))
                            {
                                If (And (Arg0, 0x80000000))
                                {
                                    Store (One, DONE)
                                }
                            }
                        }
                    }

                    Device (DO1D)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0120)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            If (And (AVLD, DO1M))
                            {
                                Return (0x1F)
                            }

                            Return (0x1D)
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            If (And (SETD, DO1M))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            If (And (Arg0, 0x40000000))
                            {
                                If (And (Arg0, 0x80000000))
                                {
                                    Store (One, DONE)
                                }
                            }
                        }
                    }

                    Device (DO2D)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0121)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            If (And (AVLD, DO2M))
                            {
                                Return (0x1F)
                            }

                            Return (0x1D)
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            If (And (SETD, DO2M))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            If (And (Arg0, 0x40000000))
                            {
                                If (And (Arg0, 0x80000000))
                                {
                                    Store (One, DONE)
                                }
                            }
                        }
                    }
                }
            }

            Device (P0PA)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0A)
                    }

                    Return (PR0A)
                }
            }

            Device (P0PB)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0B)
                    }

                    Return (PR0B)
                }
            }

            Device (B0D4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
            }

            Device (XHC)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (XPRT, PCI_Config, Zero, 0x0100)
                Field (XPRT, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    MEMB,   32, 
                    Offset (0x74), 
                    Offset (0x75), 
                    PMEE,   1, 
                        ,   6, 
                    PMES,   1, 
                    Offset (0xD0), 
                    PR2,    32, 
                    PR2M,   32, 
                    PR3,    32, 
                    PR3M,   32
                }

                Name (XRST, Zero)
                Method (CUID, 1, Serialized)
                {
                    If (LEqual (Arg0, ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71")))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (POSC, 3, Serialized)
                {
                    CreateDWordField (Arg2, Zero, CDW1)
                    CreateDWordField (Arg2, 0x08, CDW3)
                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LEqual (XHCI, Zero))
                    {
                        Or (CDW1, 0x02, CDW1)
                    }

                    If (LNot (And (CDW1, One)))
                    {
                        If (And (CDW3, One))
                        {
                            ESEL ()
                        }
                        Else
                        {
                            XSEL ()
                        }
                    }

                    Return (Arg2)
                }

                Method (XSEL, 0, Serialized)
                {
                    If (LOr (LEqual (XHCI, 0x02), LEqual (XHCI, 0x03)))
                    {
                        Store (One, XUSB)
                        Store (One, XRST)
                        Store (Zero, Local0)
                        And (PR3, 0xFFFFFFC0, Local0)
                        Or (Local0, PR3M, PR3)
                        Store (Zero, Local0)
                        And (PR2, 0xFFFF8000, Local0)
                        Or (Local0, PR2M, PR2)
                    }
                }

                Method (ESEL, 0, Serialized)
                {
                    If (LOr (LEqual (XHCI, 0x02), LEqual (XHCI, 0x03)))
                    {
                        And (PR3, 0xFFFFFFC0, PR3)
                        And (PR2, 0xFFFF8000, PR2)
                        Store (Zero, XUSB)
                        Store (Zero, XRST)
                    }
                }

                Method (XWAK, 0, Serialized)
                {
                    If (LOr (LEqual (XUSB, One), LEqual (XRST, One)))
                    {
                        XSEL ()
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

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x03))
                }
            }

            Device (EHC0)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (PWKE, PCI_Config, 0x54, 0x12)
                Field (PWKE, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    PMEE,   1, 
                        ,   6, 
                    PMES,   1, 
                    Offset (0x0E), 
                        ,   1, 
                    PWUC,   8
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (Ones, PWUC)
                    }
                    Else
                    {
                        Store (Zero, PWUC)
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

                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PR01)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCA, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Return (UPCA)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                }
                            })
                            Return (PLDP)
                        }

                        Device (PR11)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }
                        }

                        Device (PR12)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }
                        }

                        Device (PR13)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                                If (LEqual (And (CDID, 0xF000), 0x9000))
                                {
                                    And (VIS, Zero, VIS)
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PR14)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }

                            Alias (SBV1, SDGV)
                            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                                {
                                    While (One)
                                    {
                                        Store (ToInteger (Arg2), _T_0)
                                        If (LEqual (_T_0, Zero))
                                        {
                                            If (LEqual (Arg1, One))
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x07                                           
                                                })
                                            }
                                            Else
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x00                                           
                                                })
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }

                                        Break
                                    }
                                }

                                Return (Zero)
                            }
                        }

                        Device (PR15)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }

                            Alias (SBV2, SDGV)
                            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                                {
                                    While (One)
                                    {
                                        Store (ToInteger (Arg2), _T_0)
                                        If (LEqual (_T_0, Zero))
                                        {
                                            If (LEqual (Arg1, One))
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x07                                           
                                                })
                                            }
                                            Else
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x00                                           
                                                })
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }

                                        Break
                                    }
                                }

                                Return (Zero)
                            }
                        }

                        Device (PR16)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }

                            Alias (SBV1, SDGV)
                            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                                {
                                    While (One)
                                    {
                                        Store (ToInteger (Arg2), _T_0)
                                        If (LEqual (_T_0, Zero))
                                        {
                                            If (LEqual (Arg1, One))
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x07                                           
                                                })
                                            }
                                            Else
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x00                                           
                                                })
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }

                                        Break
                                    }
                                }

                                Return (Zero)
                            }
                        }

                        Device (PR17)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }

                            Alias (SBV2, SDGV)
                            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                                {
                                    While (One)
                                    {
                                        Store (ToInteger (Arg2), _T_0)
                                        If (LEqual (_T_0, Zero))
                                        {
                                            If (LEqual (Arg1, One))
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x07                                           
                                                })
                                            }
                                            Else
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x00                                           
                                                })
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }

                                        Break
                                    }
                                }

                                Return (Zero)
                            }
                        }

                        Device (PR18)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }
                        }
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x03))
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (PWKE, PCI_Config, 0x54, 0x12)
                Field (PWKE, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    PMEE,   1, 
                        ,   6, 
                    PMES,   1, 
                    Offset (0x0E), 
                        ,   1, 
                    PWUC,   6
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (Ones, PWUC)
                    }
                    Else
                    {
                        Store (Zero, PWUC)
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

                Device (HUBN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (PR01)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCA, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Return (UPCA)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                }
                            })
                            Return (PLDP)
                        }

                        Device (PR11)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xE1, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }
                        }

                        Device (PR12)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }

                            Alias (SBV1, SDGV)
                            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                                {
                                    While (One)
                                    {
                                        Store (ToInteger (Arg2), _T_0)
                                        If (LEqual (_T_0, Zero))
                                        {
                                            If (LEqual (Arg1, One))
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x07                                           
                                                })
                                            }
                                            Else
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x00                                           
                                                })
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }

                                        Break
                                    }
                                }

                                Return (Zero)
                            }
                        }

                        Device (PR13)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xE1, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }

                            Alias (SBV2, SDGV)
                            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                            {
                                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                                If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                                {
                                    While (One)
                                    {
                                        Store (ToInteger (Arg2), _T_0)
                                        If (LEqual (_T_0, Zero))
                                        {
                                            If (LEqual (Arg1, One))
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x07                                           
                                                })
                                            }
                                            Else
                                            {
                                                Return (Buffer (One)
                                                {
                                                     0x00                                           
                                                })
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        ElseIf (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }

                                        Break
                                    }
                                }

                                Return (Zero)
                            }
                        }

                        Device (PR14)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xE1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }
                        }

                        Device (PR15)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }
                        }

                        Device (PR16)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0xFF, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0xB1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    }
                                })
                                Return (PLDP)
                            }
                        }
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x03))
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
                    Offset (0x09), 
                    PMEE,   1, 
                        ,   6, 
                    PMES,   1
                }
            }

            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                OperationRegion (VSID, PCI_Config, Zero, 0x20)
                Field (VSID, ByteAcc, NoLock, Preserve)
                {
                    DVID,   32, 
                    CMST,   32, 
                    CLSS,   32
                }

                Method (PRST, 0, NotSerialized)
                {
                    If (LEqual (DVID, 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }
                    ElseIf (LEqual (And (CLSS, 0xFFFFFF00), 0x03000000))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (OGCD, 0, NotSerialized)
                {
                    If (LEqual (CADL, Zero))
                    {
                        Store (0x0808, CSTE)
                        Return (Zero)
                    }

                    Store (OA2D (CADL), CSTE)
                    If (LEqual (CAL2, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL2), CSTE, CSTE)
                    If (LEqual (CAL3, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL3), CSTE, CSTE)
                    If (LEqual (CAL4, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL4), CSTE, CSTE)
                    If (LEqual (CAL5, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL5), CSTE, CSTE)
                    If (LEqual (CAL6, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL6), CSTE, CSTE)
                    If (LEqual (CAL7, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL7), CSTE, CSTE)
                    If (LEqual (CAL8, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CAL8), CSTE, CSTE)
                    Return (Zero)
                }

                Method (OGCA, 0, NotSerialized)
                {
                    If (LEqual (CPDL, Zero))
                    {
                        Store (0x0808, ^^^CADL)
                        Return (Zero)
                    }

                    Store (OA2D (CPDL), ^^^CADL)
                    If (LEqual (CPL2, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL2), ^^^CADL, ^^^CADL)
                    If (LEqual (CPL3, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL3), ^^^CADL, ^^^CADL)
                    If (LEqual (CPL4, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL4), ^^^CADL, ^^^CADL)
                    If (LEqual (CPL5, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL5), ^^^CADL, ^^^CADL)
                    If (LEqual (CPL6, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL6), ^^^CADL, ^^^CADL)
                    If (LEqual (CPL7, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL7), ^^^CADL, ^^^CADL)
                    If (LEqual (CPL8, Zero))
                    {
                        Return (Zero)
                    }

                    Or (OA2D (CPL8), ^^^CADL, ^^^CADL)
                    Return (Zero)
                }

                Method (OA2D, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (LEqual (Arg0, 0x0400))
                    {
                        Or (Local0, LCDM, Local0)
                    }

                    If (LEqual (Arg0, 0x0100))
                    {
                        Or (Local0, CRTM, Local0)
                    }

                    If (LEqual (Arg0, 0x0200))
                    {
                        Or (Local0, TVOM, Local0)
                    }

                    If (LEqual (Arg0, 0x0300))
                    {
                        Or (Local0, DPBM, Local0)
                    }

                    If (LEqual (Arg0, 0x0301))
                    {
                        Or (Local0, DPCM, Local0)
                    }

                    Return (Local0)
                }

                Name (OPBS, 0xFFFFFF00)
                Method (OPTS, 1, NotSerialized)
                {
                    If (And (VGAF, One))
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (ASLS, OPBS)
                        }
                    }
                }

                Method (OWAK, 1, NotSerialized)
                {
                    If (And (VGAF, One))
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (OPBS, ASLS)
                            Store (One, GSES)
                            Notify (PCI0, Zero)
                        }

                        Store (0x80000003, CLID)
                    }
                }

                Name (DVIM, 0x1010)
                Name (HDMM, 0x0404)
                Name (PCTG, Package (0x0D) {})
                Name (PCW8, Package (0x67) {})
                Name (LCDM, 0x0808)
                Name (CRTM, 0x0101)
                Name (TVOM, 0x0202)
                Name (DPBM, 0x0404)
                Name (DPCM, 0x1010)
                Name (DPDM, 0x2020)
                Name (DOSF, One)
                Name (BRNC, Zero)
                Name (UPDN, One)
                Name (NXTD, One)
                Method (MD2A, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (And (Arg0, LCDM))
                    {
                        Or (Local0, One, Local0)
                    }

                    If (And (Arg0, CRTM))
                    {
                        Or (Local0, 0x02, Local0)
                    }

                    If (And (Arg0, TVOM))
                    {
                        Or (Local0, 0x04, Local0)
                    }

                    If (And (Arg0, DVIM))
                    {
                        Or (Local0, 0x08, Local0)
                    }

                    If (And (Arg0, HDMM))
                    {
                        Or (Local0, 0x10, Local0)
                    }

                    If (LNot (Local0))
                    {
                        Return (NXTD)
                    }

                    Return (Local0)
                }

                Method (MA2D, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (And (Arg0, One))
                    {
                        Or (Local0, LCDM, Local0)
                    }

                    If (And (Arg0, 0x02))
                    {
                        Or (Local0, CRTM, Local0)
                    }

                    If (And (Arg0, 0x04))
                    {
                        Or (Local0, TVOM, Local0)
                    }

                    If (And (Arg0, 0x08))
                    {
                        Or (Local0, DVIM, Local0)
                    }

                    If (And (Arg0, 0x10))
                    {
                        Or (Local0, HDMM, Local0)
                    }

                    If (LNot (Local0))
                    {
                        Return (LCDM)
                    }

                    Return (Local0)
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    And (Arg0, 0x03, DOSF)
                    Store (ShiftRight (Arg0, 0x02), BRNC)
                    And (BRNC, One, BRNC)
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    Name (IDOD, Package (0x05)
                    {
                        0x80010400, 
                        0x80010100, 
                        0x80010300, 
                        0x80010301, 
                        0x80010302
                    })
                    Return (IDOD)
                }

                Device (LCDD)
                {
                    Name (_ADR, 0x0400)  // _ADR: Address
                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (And (CSTE, LCDM))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, LCDM))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (Or (Not (And (Arg0, 0x80000000)), And (Arg0, 0x40000000)))
                        {
                            Store (NSTE, CSTE)
                        }
                        ElseIf (Not (And (Arg0, 0x40000000))) {}
                    }

                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        If (LGreaterEqual (OSFG, OSW8))
                        {
                            Store (Zero, Local0)
                            Store (Divide (Multiply (AB00, 0x64), 0xFF, ), Local1)
                            While (LLess (Local0, 0x65))
                            {
                                If (LLess (Local0, Local1))
                                {
                                    Store (Local1, Index (PCW8, Add (Local0, 0x02)))
                                }
                                Else
                                {
                                    Store (Local0, Index (PCW8, Add (Local0, 0x02)))
                                }

                                Increment (Local0)
                            }

                            Store (0x64, Index (PCW8, Zero))
                            Store (0x28, Index (PCW8, One))
                            Return (PCW8)
                        }

                        Subtract (0x0B, One, Local0)
                        Store (^^^LPCB.HEC.PWAC (Local0), Local1)
                        Store (Divide (Multiply (Local1, 0x64), 0xFF, ), Local2)
                        Store (Local2, Index (PCTG, Zero))
                        Subtract (0x0B, 0x04, Local0)
                        Store (^^^LPCB.HEC.PWAC (Local0), Local1)
                        Store (Divide (Multiply (Local1, 0x64), 0xFF, ), Local2)
                        Store (Local2, Index (PCTG, One))
                        Store (Zero, Local0)
                        While (LLess (Local0, 0x0B))
                        {
                            Store (^^^LPCB.HEC.PWAC (Local0), Local1)
                            Store (Divide (Multiply (Local1, 0x64), 0xFF, ), Local2)
                            Store (Local2, Index (PCTG, Add (Local0, 0x02)))
                            Increment (Local0)
                        }

                        Return (PCTG)
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        Store (One, BCMD)
                        Store (GCBL (Arg0), Local0)
                        Store (Local0, LBTN)
                        AINT (One, Arg0)
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Store (LBTN, Local0)
                        Return (DerefOf (Index (PCTG, Add (Local0, 0x02))))
                    }
                }

                Device (CRTD)
                {
                    Name (_ADR, 0x0100)  // _ADR: Address
                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (And (CSTE, CRTM))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, CRTM))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (Or (Not (And (Arg0, 0x80000000)), And (Arg0, 0x40000000)))
                        {
                            Store (NSTE, CSTE)
                        }
                        ElseIf (Not (And (Arg0, 0x40000000))) {}
                    }
                }

                Device (DPBD)
                {
                    Name (_ADR, 0x0300)  // _ADR: Address
                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (And (CSTE, DPBM))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, DPBM))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (Or (Not (And (Arg0, 0x80000000)), And (Arg0, 0x40000000)))
                        {
                            Store (NSTE, CSTE)
                        }
                        ElseIf (Not (And (Arg0, 0x40000000))) {}
                    }
                }

                Device (DPCD)
                {
                    Name (_ADR, 0x0301)  // _ADR: Address
                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (And (CSTE, DPCM))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, DPCM))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (Or (Not (And (Arg0, 0x80000000)), And (Arg0, 0x40000000)))
                        {
                            Store (NSTE, CSTE)
                        }
                        ElseIf (Not (And (Arg0, 0x40000000))) {}
                    }
                }

                Device (DPDD)
                {
                    Name (_ADR, 0x0302)  // _ADR: Address
                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If (And (CSTE, DPDM))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, DPDM))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (Or (Not (And (Arg0, 0x80000000)), And (Arg0, 0x40000000)))
                        {
                            Store (NSTE, CSTE)
                        }
                        ElseIf (Not (And (Arg0, 0x40000000))) {}
                    }
                }

                Method (SWHD, 1, Serialized)
                {
                    Store (One, UPDN)
                    If (LEqual (DOSF, One))
                    {
                        If (\NATK ())
                        {
                            Store (Zero, SFUN)
                        }
                        Else
                        {
                            Store (0x04, SFUN)
                        }

                        Store (Arg0, SSTE)
                        If (\NATK ())
                        {
                            Store (MA2D (Arg0), NSTE)
                            Store (NSTE, SSTE)
                        }

                        ISMI (0x94)
                        Notify (GFX0, 0x81)
                    }
                    Else
                    {
                        Store (One, CEVT)
                        Store (0x03, CSTS)
                        If (LNotEqual (^^^CADL, PADL))
                        {
                            Store (^^^CADL, PADL)
                            If (LEqual (OSFG, OSXP))
                            {
                                Notify (PCI0, Zero)
                            }
                            Else
                            {
                                Notify (GFX0, Zero)
                            }

                            Sleep (0x03E8)
                        }

                        Store (MA2D (Arg0), NSTE)
                        Notify (GFX0, 0x80)
                    }
                }

                Method (GCDD, 0, NotSerialized)
                {
                    Store (One, SFUN)
                    ISMI (0x95)
                    Return (CSTE)
                }

                Method (GNDD, 0, NotSerialized)
                {
                    Store (0x05, SFUN)
                    ISMI (0x95)
                    Return (NSTE)
                }

                Method (GCAD, 0, NotSerialized)
                {
                    Store (0x02, SFUN)
                    ISMI (0x95)
                    Return (^^^CADL)
                }

                Method (GVIF, 0, NotSerialized)
                {
                    Store (0x67, VBIF)
                    Store (Zero, SFUN)
                    ISMI (0x95)
                    Return (VBIF)
                }

                Method (GETD, 0, NotSerialized)
                {
                    OGCD ()
                    Store (CSTE, ACTD)
                    OGCA ()
                    Store (^^^CADL, AVLD)
                    Return (ACTD)
                }

                Method (ADVD, 0, NotSerialized)
                {
                    If (And (DOSF, 0x03))
                    {
                        GCDD ()
                        GCAD ()
                        GVIF ()
                    }
                    Else
                    {
                        OGCD ()
                        OGCA ()
                    }

                    If (\NATK ())
                    {
                        If (UPDN)
                        {
                            Store (MD2A (CSTE), NXTD)
                            Store (Zero, UPDN)
                        }

                        Store (Zero, Local0)
                        Store (MD2A (^^^CADL), Local1)
                        Store (Zero, Local2)
                        If (And (VGAF, One))
                        {
                            And (VBIF, 0x08, Local2)
                        }

                        If (And (LEqual (Local2, 0x08), And (VGAF, One)))
                        {
                            And (NXTD, Local1, NXTD)
                            Store (NXTD, Local0)
                        }

                        While (LNotEqual (NXTD, Local0))
                        {
                            Increment (NXTD)
                            If (And (DOSF, 0x03))
                            {
                                If (LEqual (NXTD, 0x05))
                                {
                                    Increment (NXTD)
                                }

                                If (LEqual (NXTD, 0x06))
                                {
                                    Increment (NXTD)
                                }
                            }

                            If (LEqual (NXTD, 0x07))
                            {
                                Increment (NXTD)
                            }

                            If (LEqual (NXTD, 0x0B))
                            {
                                Increment (NXTD)
                            }

                            If (LAnd (LGreater (NXTD, 0x0C), LLess (NXTD, 0x10)))
                            {
                                Increment (NXTD)
                            }

                            If (LEqual (NXTD, 0x13))
                            {
                                Increment (NXTD)
                            }

                            If (LAnd (LGreater (NXTD, 0x14), LLess (NXTD, 0x18)))
                            {
                                Increment (NXTD)
                            }

                            If (LGreater (NXTD, 0x18))
                            {
                                Store (One, NXTD)
                            }

                            And (NXTD, Local1, Local0)
                        }

                        Return (NXTD)
                    }

                    Return (GNDD ())
                }

                Method (NATK, 0, NotSerialized)
                {
                    Return (One)
                }

                Name (BCMD, Zero)
                Method (UPBL, 0, NotSerialized)
                {
                    If (LGreaterEqual (OSFG, OSW8))
                    {
                        Notify (LCDD, 0x86)
                        Sleep (0x19)
                        Return (Zero)
                    }

                    If (ATKP)
                    {
                        Store (LBTN, Local0)
                        If (LLess (LBTN, 0x0A))
                        {
                            Increment (Local0)
                        }
                        Else
                        {
                            Store (0x0A, Local0)
                        }

                        Store (Local0, LBTN)
                        ^^^ATKD.NTFY (Add (Local0, 0x10))
                    }

                    If (BRNC)
                    {
                        Store (CBLV, Local0)
                        Store (Zero, BCMD)
                        Notify (LCDD, 0x86)
                        Store (0x0300, Local2)
                        And (Local0, 0x7FFFFFFF, Local1)
                        If (LGreater (Local1, DerefOf (Index (PCTG, 0x0B))))
                        {
                            Store (Zero, Local2)
                            Store (One, Local1)
                        }

                        While (LAnd (LNot (BCMD), Local2))
                        {
                            Store (CBLV, Local1)
                            If (LEqual (Local0, Local1))
                            {
                                Sleep (0x0A)
                                Decrement (Local2)
                                Store (Zero, Local1)
                            }
                            Else
                            {
                                Store (Zero, Local2)
                                Store (One, Local1)
                            }
                        }

                        If (LAnd (LNot (BCMD), Local1))
                        {
                            Store (GCBL (CBLV), Local3)
                            Store (Local3, LBTN)
                        }
                    }
                    Else
                    {
                        ^^LPCB.HEC.STBR ()
                        Notify (LCDD, 0x86)
                    }
                }

                Method (DWBL, 0, NotSerialized)
                {
                    If (LGreaterEqual (OSFG, OSW8))
                    {
                        Notify (LCDD, 0x87)
                        Sleep (0x19)
                        Return (Zero)
                    }

                    If (ATKP)
                    {
                        Store (LBTN, Local0)
                        If (LGreater (LBTN, Zero))
                        {
                            Decrement (Local0)
                        }

                        If (LGreater (LBTN, 0x0A))
                        {
                            Store (0x0A, Local0)
                        }

                        Store (Local0, LBTN)
                        ^^^ATKD.NTFY (Add (Local0, 0x20))
                    }

                    If (BRNC)
                    {
                        Store (CBLV, Local0)
                        Store (Zero, BCMD)
                        Notify (LCDD, 0x87)
                        Store (0x0300, Local2)
                        And (Local0, 0x7FFFFFFF, Local1)
                        If (LLessEqual (Local1, DerefOf (Index (PCTG, 0x02))))
                        {
                            Store (Zero, Local2)
                            Store (One, Local1)
                        }

                        While (LAnd (LNot (BCMD), Local2))
                        {
                            Store (CBLV, Local1)
                            If (LEqual (Local0, Local1))
                            {
                                Sleep (0x0A)
                                Decrement (Local2)
                                Store (Zero, Local1)
                            }
                            Else
                            {
                                Store (Zero, Local2)
                                Store (One, Local1)
                            }
                        }

                        If (LAnd (LNot (BCMD), Local1))
                        {
                            Store (GCBL (CBLV), Local3)
                            Store (Local3, LBTN)
                        }
                    }
                    Else
                    {
                        ^^LPCB.HEC.STBR ()
                        Notify (LCDD, 0x87)
                    }
                }

                Method (GCBL, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    And (Arg0, 0x7FFFFFFF, Arg0)
                    While (LLess (Local0, 0x0B))
                    {
                        Store (DerefOf (Index (PCTG, Add (Local0, 0x02))), Local1)
                        If (LGreaterEqual (Local1, Arg0))
                        {
                            Break
                        }

                        Increment (Local0)
                    }

                    If (LGreaterEqual (Local0, 0x0B))
                    {
                        Store (0x0A, Local2)
                    }
                    Else
                    {
                        Store (Local0, Local2)
                    }

                    Return (Local2)
                }
            }
        }
    }

    Name (RPA0, 0x001C0000)
    Name (RPA1, 0x001C0001)
    Name (RPA2, 0x001C0002)
    Name (RPA3, 0x001C0003)
    Name (RPA4, 0x001C0004)
    Name (RPA5, 0x001C0005)
    Name (RPA6, 0x001C0006)
    Name (RPA7, 0x001C0007)
    Name (PCHS, 0x00000001)
    Scope (\)
    {
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
            Offset (0x28), 
            Offset (0x2A), 
                ,   3, 
            GPE3,   1, 
                ,   7, 
            GPEB,   1, 
            Offset (0x3C), 
                ,   1, 
            UPRW,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
            Offset (0x22), 
                ,   3, 
            GPS3,   1, 
                ,   7, 
            GPSB,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (PMLP, SystemIO, Add (PMBS, 0x80), 0x20)
        Field (PMLP, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            Offset (0x11), 
            GE08,   1, 
                ,   8, 
            GE17,   1, 
                ,   17, 
            GE35,   1, 
                ,   9, 
            GE45,   1, 
                ,   5, 
            GE51,   1, 
            Offset (0x20)
        }

        Field (PMLP, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x01), 
            GS08,   1, 
                ,   8, 
            GS17,   1, 
                ,   17, 
            GS35,   1, 
                ,   9, 
            GS45,   1, 
                ,   5, 
            GS51,   1, 
            Offset (0x10)
        }

        OperationRegion (GPR, SystemIO, GPBS, 0x0400)
        Field (GPR, ByteAcc, NoLock, Preserve)
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
            GL02,   8, 
            GP24,   1, 
                ,   2, 
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
            GL04,   8, 
            GL05,   8, 
            GL06,   8, 
            GL07,   8, 
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

        OperationRegion (GPRL, SystemIO, GPBS, 0x40)
        Field (GPRL, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            GO08,   1, 
            GO09,   1, 
                ,   4, 
            GO14,   1, 
                ,   2, 
            GO17,   1, 
                ,   27, 
            GO45,   1, 
                ,   5, 
            GO51,   1, 
            Offset (0x10), 
            Offset (0x30), 
            GR00,   32, 
            GR01,   32, 
            GR02,   32
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x2330), 
            AFEA,   32, 
            AFED,   32, 
            AFES,   16, 
            AFER,   16, 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
            ADSD,   1, 
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
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E)
        }

        OperationRegion (IO_P, SystemIO, 0x1000, 0x04)
        Field (IO_P, ByteAcc, NoLock, Preserve)
        {
            TRPF,   8
        }
    }

    Scope (_SB)
    {
        Method (RDGI, 1, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   30, 
                    TEMP,   1
                }

                Return (TEMP)
            }
        }

        Method (RDGP, 1, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   31, 
                    TEMP,   1
                }

                Return (TEMP)
            }
        }

        Method (WTGP, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   31, 
                    TEMP,   1
                }

                Store (Arg1, TEMP)
            }
        }

        Method (WTIN, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, ByteAcc, NoLock, Preserve)
                {
                        ,   3, 
                    TEMP,   1
                }

                Store (Arg1, TEMP)
            }
        }

        Method (WPGP, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0104), Multiply (Arg0, 0x08)), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   2
                }

                Store (Arg1, TEMP)
            }
        }

        Method (GP2N, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   1
                }

                Store (Arg1, TEMP)
            }
        }

        Method (GP2A, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GPBS, 0x0104), Multiply (Arg0, 0x08)), Local0)
                OperationRegion (LGP2, SystemIO, Local0, 0x04)
                Field (LGP2, AnyAcc, NoLock, Preserve)
                {
                    GPWP,   2, 
                    GPIS,   1
                }

                If (LEqual (Arg1, One))
                {
                    Store (Zero, GPIS)
                    Store (Zero, GPWP)
                }
                Else
                {
                    Store (0x02, GPWP)
                    Store (One, GPIS)
                }

                Store (Add (GPBS, 0x10), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }

                If (LGreaterEqual (Arg0, 0x2D))
                {
                    Subtract (Arg0, 0x28, Local1)
                }
                ElseIf (LLessEqual (Arg0, 0x0A))
                {
                    Subtract (Arg0, 0x08, Local1)
                }
                Else
                {
                    Subtract (Arg0, 0x0A, Local1)
                }

                Store (ShiftLeft (One, Local1), Local2)
                If (Arg1)
                {
                    Or (TEMP, Local2, TEMP)
                }
                Else
                {
                    And (TEMP, Not (Local2), TEMP)
                }
            }
        }

        Method (GP2B, 2, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (GPBS, 0x10), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }

                If (LGreaterEqual (Arg0, 0x2D))
                {
                    Subtract (Arg0, 0x28, Local1)
                }
                ElseIf (LLessEqual (Arg0, 0x0A))
                {
                    Subtract (Arg0, 0x08, Local1)
                }
                Else
                {
                    Subtract (Arg0, 0x0A, Local1)
                }

                Store (ShiftLeft (One, Local1), Local2)
                If (Arg1)
                {
                    Or (TEMP, Local2, TEMP)
                }
                Else
                {
                    And (TEMP, Not (Local2), TEMP)
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (LTRE, Zero)
        Name (OBFF, Zero)
        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Device (PRT0)
            {
                Name (_ADR, 0xFFFF)  // _ADR: Address
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }

                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    If (LAnd (LAnd (LEqual (DVS0, One), LEqual (And (FDEV, One), One)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                             0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                        })
                        Return (PIB1)
                    }

                    Name (PIB2, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                    })
                    Return (PIB2)
                }
            }

            Device (PRT1)
            {
                Name (_ADR, 0x0001FFFF)  // _ADR: Address
                Name (FDEV, Zero)
                Name (FDRP, Zero)
                Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
                {
                    ADBG ("SAta DEP")
                    If (LAnd (LEqual (S0ID, One), And (PEPY, 0x02)))
                    {
                        ADBG ("SAta DEP")
                        Return (Package (0x01)
                        {
                            PEPD
                        })
                    }
                    Else
                    {
                        ADBG ("SAta DEP NULL")
                        Return (Package (0x00) {})
                    }
                }

                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }

                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    If (LAnd (LAnd (LEqual (DVS1, One), LEqual (And (FDEV, One), One)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                             0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                        })
                        Return (PIB1)
                    }

                    Name (PIB2, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                    })
                    Return (PIB2)
                }
            }

            Device (PRT3)
            {
                Name (_ADR, 0x0003FFFF)  // _ADR: Address
                Name (FDEV, Zero)
                Name (FDRP, Zero)
                Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }

                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    If (LAnd (LAnd (LEqual (DVS3, One), LEqual (And (FDEV, One), One)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                             0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                        })
                        Return (PIB1)
                    }

                    Name (PIB2, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                    })
                    Return (PIB2)
                }
            }
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
        }

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

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (CPSB, SystemMemory, 0xAD444E18, 0x10)
        Field (CPSB, AnyAcc, NoLock, Preserve)
        {
            RTCX,   1, 
            SBB0,   7, 
            SBB1,   8, 
            SBB2,   8, 
            SBB3,   8, 
            SBB4,   8, 
            SBB5,   8, 
            SBB6,   8, 
            SBB7,   8, 
            SBB8,   8, 
            SBB9,   8, 
            SBBA,   8, 
            SBBB,   8, 
            SBBC,   8, 
            SBBD,   8, 
            SBBE,   8, 
            SBBF,   8
        }

        Method (SPTS, 1, NotSerialized)
        {
            Store (One, SLPX)
            Store (One, SLPE)
        }

        Method (SWAK, 1, NotSerialized)
        {
            Store (Zero, SLPE)
        }

        OperationRegion (SMIE, SystemIO, PMBS, 0x04)
        Field (SMIE, ByteAcc, NoLock, Preserve)
        {
                ,   10, 
            RTCS,   1, 
                ,   3, 
            PEXS,   1, 
            WAKS,   1, 
            Offset (0x03), 
            PWBT,   1, 
            Offset (0x04)
        }

        OperationRegion (SLPR, SystemIO, SMCR, 0x08)
        Field (SLPR, ByteAcc, NoLock, Preserve)
        {
                ,   4, 
            SLPE,   1, 
                ,   31, 
            SLPX,   1, 
            Offset (0x08)
        }
    }

    Scope (_SB.PCI0)
    {
        Name (PA0H, Zero)
        Name (PA1H, Zero)
        Name (PA2H, Zero)
        Name (PA3H, Zero)
        Name (PA4H, Zero)
        Name (PA5H, Zero)
        Name (PA6H, Zero)
        Method (NPTS, 1, NotSerialized)
        {
            Store (PM0H, PA0H)
            Store (PM1H, PA1H)
            Store (PM2H, PA2H)
            Store (PM3H, PA3H)
            Store (PM4H, PA4H)
            Store (PM5H, PA5H)
            Store (PM6H, PA6H)
        }

        Method (NWAK, 1, NotSerialized)
        {
            Store (PA0H, PM0H)
            Store (PA1H, PM1H)
            Store (PA2H, PM2H)
            Store (PA3H, PM3H)
            Store (PA4H, PM4H)
            Store (PA5H, PM5H)
            Store (PA6H, PM6H)
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00001810, 0x06) {}
        Processor (CPU1, 0x02, 0x00001810, 0x06) {}
        Processor (CPU2, 0x03, 0x00001810, 0x06) {}
        Processor (CPU3, 0x04, 0x00001810, 0x06) {}
        Processor (CPU4, 0x05, 0x00001810, 0x06) {}
        Processor (CPU5, 0x06, 0x00001810, 0x06) {}
        Processor (CPU6, 0x07, 0x00001810, 0x06) {}
        Processor (CPU7, 0x08, 0x00001810, 0x06) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
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

        Store (P80D, P80H)
    }

    Method (ADBG, 1, Serialized)
    {
        If (CondRefOf (MDBG))
        {
            Return (MDBG)
            //Arg0
        }

        Return (Zero)
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
        P8XH (Zero, Arg0)
        PTS (Arg0)
        If (And (ICNF, 0x10))
        {
            If (CondRefOf (\_SB.IAOE.PTSL))
            {
                Store (Arg0, \_SB.IAOE.PTSL)
            }
        }

        If (LEqual (Arg0, 0x03))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        If (CondRefOf (\_SB.TPM.PTS))
        {
            \_SB.TPM.PTS (Arg0)
        }

        If (LOr (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)), LEqual (Arg0, 0x05)))
        {
            If (LEqual (PFLV, FDTP))
            {
                Store (One, GP27)
            }
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        WAK (Arg0)
        ADBG ("_WAK")
        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (And (GBSX, 0x40))
            {
                \_SB.PCI0.GFX0.IUEH (0x06)
            }

            If (And (GBSX, 0x80))
            {
                \_SB.PCI0.GFX0.IUEH (0x07)
            }

            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x14)
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            \_SB.PCI0.XHC.XWAK ()
        }

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
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Notify (\_PR.CPU3, 0x81)
                }
            }

            If (And (PDC4, 0x08))
            {
                Notify (\_PR.CPU4, 0x80)
                If (And (PDC4, 0x10))
                {
                    Notify (\_PR.CPU4, 0x81)
                }
            }

            If (And (PDC5, 0x08))
            {
                Notify (\_PR.CPU5, 0x80)
                If (And (PDC5, 0x10))
                {
                    Notify (\_PR.CPU5, 0x81)
                }
            }

            If (And (PDC6, 0x08))
            {
                Notify (\_PR.CPU6, 0x80)
                If (And (PDC6, 0x10))
                {
                    Notify (\_PR.CPU6, 0x81)
                }
            }

            If (And (PDC7, 0x08))
            {
                Notify (\_PR.CPU7, 0x80)
                If (And (PDC7, 0x10))
                {
                    Notify (\_PR.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Notify (\_PR.CPU0, 0x81)
        }

        If (LEqual (DPTF, One))
        {
            Notify (\_SB.IETM, 0x86)
        }
    }

    OperationRegion (MBAR, SystemMemory, Add (ShiftLeft (\_SB.PCI0.MHBR, 0x0F), 0x5000), 0x1000)
    Field (MBAR, ByteAcc, NoLock, Preserve)
    {
        Offset (0x938), 
        PWRU,   4, 
        Offset (0x9A0), 
        PPL1,   15, 
        PL1E,   1, 
        CLP1,   1
    }

    Name (CLMP, Zero)
    Name (PLEN, Zero)
    Name (PLSV, 0x8000)
    Name (CSEM, Zero)
    Method (SPL1, 0, Serialized)
    {
        Name (PPUU, Zero)
        If (LEqual (CSEM, One))
        {
            Return (Zero)
        }

        Store (One, CSEM)
        Store (PPL1, PLSV)
        Store (PL1E, PLEN)
        Store (CLP1, CLMP)
        If (LEqual (PWRU, Zero))
        {
            Store (One, PPUU)
        }
        Else
        {
            ShiftLeft (Decrement (PWRU), 0x02, PPUU)
        }

        Multiply (PLVL, PPUU, Local0)
        Divide (Local0, 0x03E8, , Local1)
        Store (Local1, PPL1)
        Store (One, PL1E)
        Store (One, CLP1)
    }

    Method (RPL1, 0, Serialized)
    {
        Store (PLSV, PPL1)
        Store (PLEN, PL1E)
        Store (CLMP, CLP1)
        Store (Zero, CSEM)
    }

    Name (DDPS, Zero)
    Name (UAMS, Zero)
    Method (GUAM, 1, Serialized)
    {
        If (LNotEqual (Arg0, DDPS))
        {
            Store (Arg0, DDPS)
            Store (LAnd (Arg0, Not (PWRS)), UAMS)
            If (Arg0)
            {
                If (LEqual (ECNO, One)) {}
                P8XH (Zero, 0xC5)
                P8XH (One, Zero)
                If (PSCP)
                {
                    If (LAnd (CondRefOf (\_PR.CPU0._PSS), CondRefOf (\_PR.CPU0._PPC)))
                    {
                        Subtract (SizeOf (\_PR.CPU0._PSS), One, \_PR.CPU0.MPPC)
                        PNOT ()
                    }
                }

                If (PLCS)
                {
                    SPL1 ()
                }
            }
            Else
            {
                If (LEqual (ECNO, One)) {}
                P8XH (Zero, 0xC5)
                P8XH (One, 0xAB)
                ADBG ("Exit CS")
                If (PSCP)
                {
                    If (CondRefOf (\_PR.CPU0._PPC))
                    {
                        Store (Zero, \_PR.CPU0.MPPC)
                        PNOT ()
                    }
                }

                If (PLCS)
                {
                    RPL1 ()
                }
            }

            P_CS ()
        }
    }

    Method (P_CS, 0, Serialized)
    {
        If (CondRefOf (\_SB.PCI0.PAUD.PUAM))
        {
            \_SB.PCI0.PAUD.PUAM ()
        }
    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
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

        If (LEqual (Arg0, PFTI))
        {
            Store (Zero, TRPF)
        }

        Return (SMIF)
    }

    Scope (_SB)
    {
        Device (BIND)
        {
            Name (_HID, "INT33D2")  // _HID: Hardware ID
            Name (_CID, "PNP0C40")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LAnd (And (IUBE, One), LEqual (OSYS, 0x07DC)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (CIND)
        {
            Name (_HID, "INT33D3")  // _HID: Hardware ID
            Name (_CID, "PNP0C60")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LAnd (And (IUCE, One), LEqual (OSYS, 0x07DC)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (DIND)
        {
            Name (_HID, "INT33D4")  // _HID: Hardware ID
            Name (_CID, "PNP0C70")  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LAnd (And (IUDE, One), LEqual (OSYS, 0x07DC)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Method (PTMA, 0, NotSerialized)
        {
            Return (PFMA)
        }

        Method (PTMS, 0, NotSerialized)
        {
            Return (PFMS)
        }

        Method (PTIA, 0, NotSerialized)
        {
            Return (PFIA)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (0x07D0, OSYS)
            If (CondRefOf (\_OSI, Local0))
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

                If (_OSI ("Windows 2001.1"))
                {
                    Store (0x07D3, OSYS)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (0x07D9, OSYS)
                }

                If (_OSI ("Windows 2012"))
                {
                    Store (0x07DC, OSYS)
                }

                If (_OSI ("Windows 2013"))
                {
                    Store (0x07DD, OSYS)
                }
            }

            PINI ()
        }

        Method (NHPG, 0, Serialized)
        {
            Store (Zero, ^RP01.HPEX)
            Store (Zero, ^RP03.HPEX)
            Store (Zero, ^RP04.HPEX)
            Store (One, ^RP01.HPSX)
            Store (One, ^RP03.HPSX)
            Store (One, ^RP04.HPSX)
        }

        Method (NPME, 0, Serialized)
        {
            Store (Zero, ^RP01.PMEX)
            Store (Zero, ^RP03.PMEX)
            Store (Zero, ^RP04.PMEX)
            Store (One, ^RP01.PMSX)
            Store (One, ^RP03.PMSX)
            Store (One, ^RP04.PMSX)
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Name (PRWP, Package (0x02)
        {
            Zero, 
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            Store (Arg0, Index (PRWP, Zero))
            Store (ShiftLeft (SS1, One), Local0)
            Or (Local0, ShiftLeft (SS2, 0x02), Local0)
            Or (Local0, ShiftLeft (SS3, 0x03), Local0)
            Or (Local0, ShiftLeft (SS4, 0x04), Local0)
            If (And (ShiftLeft (One, Arg1), Local0))
            {
                Store (Arg1, Index (PRWP, One))
            }
            Else
            {
                ShiftRight (Local0, One, Local0)
                FindSetLeftBit (Local0, Index (PRWP, One))
            }

            Return (PRWP)
        }
    }

    Scope (_SB)
    {
        Name (OSCI, Zero)
        Name (OSCO, Zero)
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            If (LNotEqual (OSCM (Arg0, Arg1, Arg2, Arg3), Zero))
            {
                Return (Arg3)
            }

            Return (Arg3)
        }

        Device (PEPD)
        {
            Name (_HID, "INT33A1")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80"))  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PEPP, Zero)
            Name (DEVS, Package (0x03)
            {
                0x02, 
                Package (0x01)
                {
                    "\\_SB.PCI0.GFX0"
                }, 

                Package (0x01)
                {
                    "\\_SB.PCI0.SAT0.PRT1"
                }
            })
            Name (DEVX, Package (0x08)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0", 
                    0xFFFFFFFF
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    0xFFFFFFFF
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.UA01", 
                    0xFFFFFFFF
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SDHC", 
                    0xFFFFFFFF
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.I2C0", 
                    0xFFFFFFFF
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.I2C1", 
                    0xFFFFFFFF
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.XHC", 
                    0xFFFFFFFF
                }, 

                Package (0x02)
                {
                    "HDAUDIOFUNC_01&VEN_10EC&DEV_0282&SUBSYS_00000000&REV_1000\x04&a02b74b&0&0001", 
                    0xFFFFFFFF
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (OSYS, 0x07DC))
                {
                    If (LEqual (And (CDID, 0xF000), 0x9000))
                    {
                        If (LEqual (S0ID, One))
                        {
                            Return (0x0F)
                        }
                    }
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, ToUUID ("b8febfe0-baf8-454b-aecd-49fb91137b21")))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                           
                        })
                    }

                    If (LEqual (Arg2, One))
                    {
                        Store (One, PEPP)
                        Return (0x0F)
                    }

                    If (LEqual (Arg2, 0x02))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            While (One)
                            {
                                Store (PEPY, _T_0)
                                If (LEqual (_T_0, One))
                                {
                                    Return (Package (0x02)
                                    {
                                        One, 
                                        Package (0x01)
                                        {
                                            "\\_SB.PCI0.GFX0"
                                        }
                                    })
                                }
                                ElseIf (LEqual (_T_0, 0x02))
                                {
                                    Return (Package (0x02)
                                    {
                                        One, 
                                        Package (0x01)
                                        {
                                            "\\_SB.PCI0.SAT0.PRT1"
                                        }
                                    })
                                }
                                ElseIf (LEqual (_T_0, 0x03))
                                {
                                    Return (DEVS)
                                }
                                Else
                                {
                                    Return (Package (0x01)
                                    {
                                        Zero
                                    })
                                }

                                Break
                            }
                        }

                        If (LEqual (Arg1, One))
                        {
                            If (LNot (And (PEPY, One)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, Zero)), One))
                            }

                            If (LNot (And (PEPY, 0x02)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, One)), One))
                            }

                            If (LNot (And (PEPY, 0x04)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x02)), One))
                            }

                            If (LNot (And (PEPY, 0x08)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x03)), One))
                            }

                            If (LNot (And (PEPY, 0x10)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x04)), One))
                            }

                            If (LNot (And (PEPY, 0x20)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x05)), One))
                            }

                            If (LNot (And (PEPY, 0x40)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x06)), One))
                            }

                            If (LNot (And (PEPY, 0x80)))
                            {
                                Store (Zero, Index (DerefOf (Index (DEVX, 0x07)), One))
                            }

                            Return (DEVX)
                        }
                    }
                }

                Return (One)
            }
        }
    }

    Scope (_SB)
    {
        Device (BTKL)
        {
            Name (_HID, "INT3420")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Windows 2012"))
                {
                    If (LEqual (BID, BW2C))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                And (GL0A, 0x7F, GL0A)
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                Or (GL0A, 0x80, GL0A)
            }

            Method (PSTS, 0, NotSerialized)
            {
                Return (RDGP (0x57))
            }
        }
    }

    Name (SRMB, 0xF7FF0000)
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
                    _Y1B)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y1E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y20)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y21)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
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
                    _Y1C)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1D)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1B._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1C._BAS, TBR0)  // _BAS: Base Address
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1C._LEN, TBLN)  // _LEN: Length
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1D._BAS, SNR0)  // _BAS: Base Address
                Store (SRMB, SNR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1E._BAS, MBR0)  // _BAS: Base Address
                ShiftLeft (MHBR, 0x0F, MBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y1F._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y20._BAS, EBR0)  // _BAS: Base Address
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y21._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y21._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LNotEqual (\_SB.PCI0.RP01.VDID, 0xFFFFFFFF))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02)
            }

            If (LNotEqual (\_SB.PCI0.RP03.VDID, 0xFFFFFFFF))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02)
            }

            If (LNotEqual (\_SB.PCI0.RP04.VDID, 0xFFFFFFFF))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02)
            }

            If (LEqual (\_SB.PCI0.D1F0, One))
            {
                \_SB.PCI0.PEG0.HPME ()
                Notify (\_SB.PCI0.PEG0, 0x02)
                Notify (\_SB.PCI0.PEG0.PEGP, 0x02)
            }

            If (LEqual (\_SB.PCI0.D1F1, One))
            {
                \_SB.PCI0.PEG1.HPME ()
                Notify (\_SB.PCI0.PEG1, 0x02)
            }

            If (LEqual (\_SB.PCI0.D1F2, One))
            {
                \_SB.PCI0.PEG2.HPME ()
                Notify (\_SB.PCI0.PEG2, 0x02)
            }
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.EHC1.PMEE, \_SB.PCI0.EHC1.PMES))
            {
                Notify (\_SB.PCI0.EHC1, 0x02)
            }

            If (LAnd (\_SB.PCI0.EHC0.PMEE, \_SB.PCI0.EHC0.PMES))
            {
                Notify (\_SB.PCI0.EHC0, 0x02)
            }

            If (LAnd (\_SB.PCI0.XHC.PMEE, \_SB.PCI0.XHC.PMES))
            {
                Notify (\_SB.PCI0.XHC, 0x02)
            }

            If (LAnd (\_SB.PCI0.HDEF.PMEE, \_SB.PCI0.HDEF.PMES))
            {
                Notify (\_SB.PCI0.HDEF, 0x02)
            }
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Add (L01C, One, L01C)
            P8XH (Zero, One)
            P8XH (One, L01C)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    If (LNot (\_SB.PCI0.RP01.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP01.L0SE)
                    }

                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPSX)
                }
            }

            If (LAnd (LEqual (RP3D, Zero), \_SB.PCI0.RP03.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    If (LNot (\_SB.PCI0.RP03.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP03.L0SE)
                    }

                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }

            If (LAnd (LEqual (RP4D, Zero), \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    Store (One, \_SB.PCI0.RP04.PDCX)
                    Store (One, \_SB.PCI0.RP04.HPSX)
                    If (LNot (\_SB.PCI0.RP04.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP04.L0SE)
                    }

                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP04.HPSX)
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (Zero, GPEC)
            If (CondRefOf (DTSE))
            {
                If (LGreaterEqual (DTSE, One))
                {
                    Notify (\_TZ.THRM, 0x80)
                }
            }

            If (CondRefOf (\_SB.PCCD.PENB))
            {
                If (LEqual (\_SB.PCCD.PENB, One))
                {
                    Notify (\_SB.PCCD, 0x80)
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.GFX0.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }
    }

    Device (WCAM)
    {
        Name (_ADR, 0x05)  // _ADR: Address
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0xC8, 0x00, 0xA0, 0x00                         
                }
            })
            Return (PLDP)
        }
    }

    Name (TPMF, Zero)
    Scope (\)
    {
        Device (WMI0)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
        }
    }

    Scope (\)
    {
        Method (DIAG, 1, NotSerialized)
        {
            P8XH (Zero, Arg0)
            SBYT (Zero, Arg0)
        }

        OperationRegion (GPSC, SystemIO, 0xB2, 0x02)
        Field (GPSC, ByteAcc, NoLock, Preserve)
        {
            SMCM,   8, 
            SMST,   8
        }

        Method (ISMI, 1, Serialized)
        {
            Store (Arg0, SMCM)
        }

        Method (ASMI, 1, Serialized)
        {
            Store (Arg0, \_SB.ALPR)
            Store (0xA3, SMCM)
            Return (\_SB.ALPR)
        }

        Scope (_SB)
        {
            OperationRegion (\ECMS, SystemIO, 0x72, 0x02)
            Field (ECMS, ByteAcc, Lock, Preserve)
            {
                EIND,   8, 
                EDAT,   8
            }

            IndexField (EIND, EDAT, ByteAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                DASF,   8, 
                IKFG,   8, 
                Offset (0x43), 
                RAMB,   32, 
                AVOL,   8, 
                LBTN,   8, 
                LBT2,   8, 
                SLPN,   8, 
                ALSL,   8, 
                ALAE,   1, 
                ALDE,   1, 
                ALSP,   1, 
                SYNA,   1, 
                ALPS,   1, 
                SIDE,   1, 
                PWBS,   1, 
                WFFG,   1, 
                WLDP,   1, 
                WRST,   1, 
                BTDP,   1, 
                BRST,   1, 
                WWDP,   1, 
                WWST,   1, 
                WRPS,   1, 
                BRPS,   1, 
                WMDP,   1, 
                WMST,   1, 
                Offset (0x4F), 
                UHDB,   8, 
                FBDP,   8, 
                SWD2,   1, 
                F9KP,   1, 
                LSDF,   1, 
                MANF,   1, 
                RRSF,   1, 
                CMDP,   1, 
                CMST,   1, 
                F9RK,   1, 
                USBD,   16, 
                FDAY,   8, 
                FMON,   8, 
                FYER,   8, 
                FPRC,   8, 
                Offset (0x59), 
                TCGF,   8, 
                Offset (0x5B), 
                Offset (0x5C), 
                CTPF,   4, 
                AG3F,   1, 
                Offset (0x5D), 
                WFOK,   8, 
                SFFG,   8, 
                SFAD,   32, 
                UWDP,   1, 
                GPDP,   1, 
                TGDP,   1, 
                UWST,   1, 
                GPST,   1, 
                TGST,   1, 
                Offset (0x64), 
                DS3F,   1, 
                Offset (0x65), 
                DS3A,   8, 
                HEM1,   32, 
                HEM2,   32
            }

            OperationRegion (RAMW, SystemMemory, RAMB, 0x0FF0)
            Field (RAMW, AnyAcc, NoLock, Preserve)
            {
                TRTY,   8, 
                FSFN,   8, 
                FSTA,   16, 
                FADR,   32, 
                FSIZ,   16, 
                GNBF,   32, 
                BIPA,   32, 
                RTCW,   16, 
                DBR1,   32, 
                DBR2,   32, 
                DBR3,   32, 
                DBR4,   32, 
                ACTD,   8, 
                AVLD,   8, 
                SETD,   8, 
                PADL,   16, 
                CADL,   16, 
                CSTE,   16, 
                NSTE,   16, 
                SSTE,   16, 
                SFUN,   8, 
                VGAF,   16, 
                LCDV,   32, 
                LCDR,   8, 
                VBIF,   16, 
                GCDF,   16, 
                AB00,   8, 
                AB01,   8, 
                AB02,   8, 
                AB03,   8, 
                AB04,   8, 
                AB05,   8, 
                AB06,   8, 
                AB07,   8, 
                AB08,   8, 
                AB09,   8, 
                AB0A,   8, 
                AB0B,   8, 
                AB0C,   8, 
                AB0D,   8, 
                AB0E,   8, 
                AB0F,   8, 
                AB10,   8, 
                AB11,   8, 
                AB12,   8, 
                AB13,   8, 
                AB14,   8, 
                AB15,   8, 
                AB16,   8, 
                AB17,   8, 
                AB18,   8, 
                AB19,   8, 
                AB1A,   8, 
                AB1B,   8, 
                AB1C,   8, 
                AB1D,   8, 
                AB1E,   8, 
                AB1F,   8, 
                DB00,   8, 
                DB01,   8, 
                DB02,   8, 
                DB03,   8, 
                DB04,   8, 
                DB05,   8, 
                DB06,   8, 
                DB07,   8, 
                DB08,   8, 
                DB09,   8, 
                DB0A,   8, 
                DB0B,   8, 
                DB0C,   8, 
                DB0D,   8, 
                DB0E,   8, 
                DB0F,   8, 
                DB10,   8, 
                DB11,   8, 
                DB12,   8, 
                DB13,   8, 
                DB14,   8, 
                DB15,   8, 
                DB16,   8, 
                DB17,   8, 
                DB18,   8, 
                DB19,   8, 
                DB1A,   8, 
                DB1B,   8, 
                DB1C,   8, 
                DB1D,   8, 
                DB1E,   8, 
                DB1F,   8, 
                ACPF,   8, 
                DCPF,   8, 
                DCP2,   8, 
                DCTP,   8, 
                TPSV,   8, 
                TAC0,   8, 
                TCRT,   8, 
                PPSV,   8, 
                LUXS,   8, 
                LUXL,   8, 
                LUXH,   8, 
                LUXF,   8, 
                PTIM,   8, 
                PTMP,   8, 
                QFAN,   8, 
                CPUN,   8, 
                CIST,   8, 
                CPUP,   16, 
                SLMT,   16, 
                PSTN,   16, 
                TJMX,   16, 
                SLPT,   8, 
                ALPR,   32, 
                IDES,   8, 
                HDDF,   8, 
                MNAM,   64, 
                OSVR,   32, 
                SGRQ,   32, 
                SGFN,   8, 
                SGMD,   8, 
                B0DP,   8, 
                B1DP,   8, 
                P2KS,   8, 
                P2MS,   8, 
                NRSN,   8, 
                EECP,   32, 
                P0UB,   8, 
                P1UB,   8, 
                P2UB,   8, 
                P3UB,   8, 
                PCSL,   8, 
                SC7A,   8, 
                NFCE,   8, 
                WMIB,   32, 
                WMIS,   8, 
                LDST,   8, 
                NVOB,   32, 
                NPXB,   32, 
                GC6E,   8, 
                AICD,   32, 
                AIST,   8, 
                BAML,   8, 
                AMLA,   32, 
                KBDF,   8, 
                MEMS,   8, 
                TBOT,   16, 
                TRTC,   32, 
                EXPC,   64, 
                MCFD,   8
            }
        }

        Name (OSFG, Zero)
        Name (OS9X, One)
        Name (OS98, 0x02)
        Name (OSME, 0x04)
        Name (OS2K, 0x08)
        Name (OSLX, 0x09)
        Name (OSXP, 0x10)
        Name (OSVT, 0x20)
        Name (OSW7, 0x40)
        Name (OSW8, 0x80)
        Name (OSWB, 0x0100)
        Method (MCTH, 2, NotSerialized)
        {
            If (LLess (SizeOf (Arg0), SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Add (SizeOf (Arg0), One, Local0)
            Name (BUF0, Buffer (Local0) {})
            Name (BUF1, Buffer (Local0) {})
            Store (Arg0, BUF0)
            Store (Arg1, BUF1)
            While (Local0)
            {
                Decrement (Local0)
                If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (BUF1, Local0))))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (MSOS, 0, NotSerialized)
        {
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Windows 2001"))
                {
                    Store (OSXP, OSFG)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (OSXP, OSFG)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (OSXP, OSFG)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (OSVT, OSFG)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (OSW7, OSFG)
                }

                If (_OSI ("Windows 2012"))
                {
                    Store (OSW8, OSFG)
                }

                If (_OSI ("Windows 2013"))
                {
                    Store (OSWB, OSFG)
                }

                Store (OSFG, \_SB.OSVR)
                Return (OSFG)
            }
            ElseIf (MCTH (_OS, "Microsoft Windows"))
            {
                Store (OS98, OSFG)
            }
            ElseIf (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
            {
                Store (OSME, OSFG)
            }
            ElseIf (MCTH (_OS, "Microsoft Windows NT"))
            {
                Store (OS2K, OSFG)
            }
            Else
            {
                Store (OSXP, OSFG)
            }

            Return (OSFG)
        }

        Method (DBGR, 4, NotSerialized)
        {
            Store (Arg0, \_SB.DBR1)
            Store (Arg1, \_SB.DBR2)
            Store (Arg2, \_SB.DBR3)
            Store (Arg3, \_SB.DBR4)
            ASMI (0x80)
        }

        Name (ONAM, "ASUS")
        Method (ADVG, 0, NotSerialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                Return (\_SB.PCI0.GFX0.ADVD ())
            }

            Return (0x03)
        }

        Method (SWHG, 1, Serialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                \_SB.PCI0.GFX0.SWHD (Arg0)
                Return (One)
            }

            Return (Zero)
        }

        Method (NATK, 0, NotSerialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                Return (\_SB.PCI0.GFX0.NATK ())
            }

            Return (One)
        }
    }

    Scope (_SB.PCI0)
    {
        Method (PINI, 0, NotSerialized)
        {
            MSOS ()
        }
    }

    Scope (_SB)
    {
        Name (ATKP, Zero)
        Name (AITM, Zero)
        Name (PLMD, Zero)
        Name (MUTX, One)
        Name (LEDS, Zero)
        Name (LIDP, Zero)
        Device (ATKD)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, "ATK")  // _UID: Unique ID
            Name (ATKQ, Package (0x10)
            {
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Name (AQHI, Zero)
            Name (AQTI, 0x0F)
            Name (AQNO, Zero)
            Name (WAPF, Zero)
            Name (PCDV, Zero)
            Method (IANQ, 1, Serialized)
            {
                If (LGreaterEqual (AQNO, 0x10))
                {
                    Store (0x64, Local0)
                    While (LAnd (Local0, LGreaterEqual (AQNO, 0x10)))
                    {
                        Decrement (Local0)
                        Sleep (0x0A)
                    }

                    If (LAnd (Local0, LGreaterEqual (AQNO, 0x10)))
                    {
                        Return (Zero)
                    }
                }

                Increment (AQTI)
                And (AQTI, 0x0F, AQTI)
                Store (Arg0, Index (ATKQ, AQTI))
                Increment (AQNO)
                Return (One)
            }

            Method (GANQ, 0, Serialized)
            {
                If (AQNO)
                {
                    Decrement (AQNO)
                    Store (DerefOf (Index (ATKQ, AQHI)), Local0)
                    Increment (AQHI)
                    And (AQHI, 0x0F, AQHI)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (IANE, 1, Serialized)
            {
                IANQ (Arg0)
                Notify (ATKD, 0xFF)
            }

            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0xD0, 0x5E, 0x84, 0x97, 0x6D, 0x4E, 0xDE, 0x11,
                /* 0008 */  0x8A, 0x39, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66,
                /* 0010 */  0x4E, 0x42, 0x01, 0x02, 0x35, 0xBB, 0x3C, 0x0B,
                /* 0018 */  0xC2, 0xE3, 0xED, 0x45, 0x91, 0xC2, 0x4C, 0x5A,
                /* 0020 */  0x6D, 0x19, 0x5D, 0x1C, 0xFF, 0x00, 0x01, 0x08 
            })
            Method (HKEY, 0, NotSerialized)
            {
                Store (^^PCI0.LPCB.HEC.CDTD, Local0)
            }

            Method (KBFT, 1, NotSerialized)
            {
                Store (Arg0, ^^PCI0.LPCB.HEC.HKEN)
                If (LGreaterEqual (OSFG, OSW8))
                {
                    ^^PCI0.LPCB.HEC.WRAM (0x0C0C, 0x80)
                }

                Return (Zero)
            }

            Method (NTFY, 1, Serialized)
            {
                IANE (Arg0)
            }

            Method (AICH, 0, NotSerialized)
            {
                Or (AIST, 0x04, Local0)
                Return (Local0)
            }

            Method (AICG, 1, Serialized)
            {
                Store (Arg0, AICD)
                ISMI (0xE7)
                Return (Zero)
            }

            Method (WMNB, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                CreateDWordField (Arg2, Zero, IIA0)
                And (Arg1, 0xFFFFFFFF, Local0)
                While (One)
                {
                    Store (Local0, _T_0)
                    If (LEqual (_T_0, 0x54494E49))
                    {
                        INIT (IIA0)
                        Return (One)
                    }
                    ElseIf (LEqual (_T_0, 0x53545342))
                    {
                        Return (BSTS ())
                    }
                    ElseIf (LEqual (_T_0, 0x4E554653))
                    {
                        Return (SFUN ())
                    }
                    ElseIf (LEqual (_T_0, 0x474F4457))
                    {
                        Return (WDOG (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x494E424B))
                    {
                        Return (KBNI ())
                    }
                    ElseIf (LEqual (_T_0, 0x43455053))
                    {
                        Return (0x00070007)
                    }
                    ElseIf (LEqual (_T_0, 0x5256534F))
                    {
                        OSVR (IIA0)
                        Return (Zero)
                    }
                    ElseIf (LEqual (_T_0, 0x48534C46))
                    {
                        FLSH (IIA0)
                        Return (One)
                    }
                    ElseIf (LEqual (_T_0, 0x494E4946))
                    {
                        Return (FINI (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x53524546))
                    {
                        Return (FERS (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x49525746))
                    {
                        Return (FWRI (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x50525746))
                    {
                        Return (FWRP ())
                    }
                    ElseIf (LEqual (_T_0, 0x52534345))
                    {
                        Return (ECSR (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x43534C46))
                    {
                        Return (FLSC (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x57504346))
                    {
                        Return (FCPW (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x50504346))
                    {
                        Return (FCPP ())
                    }
                    ElseIf (LEqual (_T_0, 0x4C425053))
                    {
                        Return (SPBL (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x50534453))
                    {
                        SDSP (IIA0)
                        Return (One)
                    }
                    ElseIf (LEqual (_T_0, 0x50534447))
                    {
                        Return (GDSP (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x44495047))
                    {
                        Return (GPID ())
                    }
                    ElseIf (LEqual (_T_0, 0x44434C47))
                    {
                        Return (GLCD ())
                    }
                    ElseIf (LEqual (_T_0, 0x444F4D51))
                    {
                        Return (QMOD (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x44424653))
                    {
                        Return (Zero)
                    }
                    ElseIf (LEqual (_T_0, 0x49564E41))
                    {
                        Return (ANVI (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x46494243))
                    {
                        Return (CBIF (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x5453424B))
                    {
                        Return (Zero)
                    }
                    ElseIf (LEqual (_T_0, 0x4E554647))
                    {
                        Return (AGFN (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x4E464741))
                    {
                        Return (AGFN (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x53545344))
                    {
                        If (LEqual (IIA0, 0x00010002))
                        {
                            Return (Zero)
                        }

                        If (LEqual (IIA0, 0x00020011))
                        {
                            Return (Or (GALE (One), 0x00050000))
                        }

                        If (LEqual (IIA0, 0x00020012))
                        {
                            Return (Or (GALE (0x02), 0x00050000))
                        }

                        If (LEqual (IIA0, 0x00020013))
                        {
                            Return (Or (GALE (0x04), 0x00050000))
                        }

                        If (LEqual (IIA0, 0x00040015))
                        {
                            Return (Or (GALE (0x08), 0x00050000))
                        }

                        If (LEqual (IIA0, 0x00020014))
                        {
                            Return (Or (GALE (0x10), 0x00050000))
                        }

                        If (LEqual (IIA0, 0x00020015))
                        {
                            Return (Or (GALE (0x20), 0x00050000))
                        }

                        If (LEqual (IIA0, 0x00020016))
                        {
                            Return (Or (GALE (0x40), 0x00050000))
                        }

                        If (LEqual (IIA0, 0x00110011))
                        {
                            Return (And (TMPR (), 0xFFFF))
                        }

                        If (LEqual (IIA0, 0x00110012))
                        {
                            Store (TMPR (), Local0)
                            Store (Local0, Local1)
                            ShiftRight (And (Local0, 0xF0000000), 0x1C, Local0)
                            ShiftRight (And (Local1, 0x0F000000), 0x18, Local1)
                            ShiftLeft (Local1, 0x08, Local1)
                            Return (Add (Local0, Local1))
                        }

                        If (LEqual (IIA0, 0x00050012))
                        {
                            Store (0x0A, Local0)
                            ShiftLeft (Local0, 0x08, Local0)
                            Store (Add (GPLV (), Local0), Local1)
                            Return (Local1)
                        }

                        If (LEqual (IIA0, 0x00010011))
                        {
                            If (WLDP)
                            {
                                Return (Add (WRST, 0x00030000))
                            }
                        }

                        If (LEqual (IIA0, 0x00010013))
                        {
                            If (BTDP)
                            {
                                Return (Add (BRST, 0x00050000))
                            }
                        }

                        If (LEqual (IIA0, 0x00010021))
                        {
                            If (UWDP)
                            {
                                Return (Add (UWST, 0x00050000))
                            }
                        }

                        If (LEqual (IIA0, 0x00010017))
                        {
                            If (WMDP)
                            {
                                Return (Add (WMST, 0x00050000))
                            }
                        }

                        If (LEqual (IIA0, 0x00010015))
                        {
                            If (GPDP)
                            {
                                Return (Add (^^GPST, 0x00050000))
                            }
                        }

                        If (LEqual (IIA0, 0x00010019))
                        {
                            If (TGDP)
                            {
                                Return (Add (TGST, 0x00050000))
                            }
                        }

                        If (LEqual (IIA0, 0x00120012))
                        {
                            Return (PSTC (Zero))
                        }

                        If (LEqual (IIA0, 0x00130001)) {}
                        If (LEqual (IIA0, 0x00050021))
                        {
                            Return (0x8000)
                        }

                        If (LEqual (IIA0, 0x00060023))
                        {
                            Return (AICH ())
                        }

                        If (LEqual (IIA0, 0x00060024))
                        {
                            Name (BBUF, Buffer (0x0C) {})
                            CreateDWordField (BBUF, Zero, DAT1)
                            CreateDWordField (BBUF, 0x04, DAT2)
                            CreateDWordField (BBUF, 0x08, DAT3)
                            Store (0x8C318086, DAT1)
                            Store (One, DAT2)
                            Store (0xFFFFFFFF, DAT3)
                            Return (BBUF)
                        }

                        If (LEqual (IIA0, 0x00060025))
                        {
                            Name (INFO, Buffer (0x08) {})
                            CreateDWordField (INFO, Zero, INF1)
                            CreateDWordField (INFO, 0x04, INF2)
                            Store (0x1400, INF1)
                            Store (0xFFFFFFFF, INF2)
                            Return (INFO)
                        }

                        If (LEqual (IIA0, 0x00120031))
                        {
                            Return (GDS3 (Arg0))
                        }

                        If (LEqual (IIA0, 0x00120037))
                        {
                            Return (0x00010000)
                        }

                        If (LEqual (IIA0, 0x00120038))
                        {
                            Return (0x00010000)
                        }

                        If (LEqual (IIA0, 0x00120041))
                        {
                            Return (NS3P ())
                        }

                        If (LEqual (IIA0, 0x00120042))
                        {
                            Return (DS3P ())
                        }

                        If (LEqual (IIA0, 0x00120043))
                        {
                            Return (T2BF ())
                        }

                        If (LEqual (IIA0, 0x00120044))
                        {
                            Store (0x00010000, Local0)
                            Or (^^PCI0.LPCB.HEC.BRCP (Zero), Local0, Local0)
                            Return (Local0)
                        }

                        If (LEqual (IIA0, 0x00120045))
                        {
                            Store (0x00010000, Local0)
                            Or (N3MV (), Local0, Local0)
                            Return (Local0)
                        }

                        If (LEqual (IIA0, 0x00120046))
                        {
                            Store (0x00010000, Local0)
                            Or (D3MV (), Local0, Local0)
                            Return (Local0)
                        }

                        If (LEqual (IIA0, 0x00120047))
                        {
                            Store (0x00010000, Local0)
                            Or (^^PCI0.LPCB.HEC.BIF4 (Zero), Local0, Local0)
                            If (LEqual (Local0, 0x00010001))
                            {
                                Store (0xFFFF, Local0)
                            }

                            Return (Local0)
                        }

                        If (LEqual (IIA0, 0x00120048))
                        {
                            Store (0x00010000, Local0)
                            Or (S4PC (), Local0, Local0)
                            Return (Local0)
                        }

                        If (LEqual (IIA0, 0x00120049))
                        {
                            Store (0x00010000, Local0)
                            Or (^^PCI0.LPCB.HEC.BIF2 (Zero), Local0, Local0)
                            If (LEqual (Local0, 0x00010001))
                            {
                                Store (0xFFFF, Local0)
                            }

                            Return (Local0)
                        }

                        Return (0x02)
                    }
                    ElseIf (LEqual (_T_0, 0x53564544))
                    {
                        CreateDWordField (Arg2, 0x04, IIA1)
                        If (LEqual (IIA0, 0x00020011))
                        {
                            Return (SALE (Add (IIA1, 0x02)))
                        }

                        If (LEqual (IIA0, 0x00020012))
                        {
                            Return (SALE (Add (IIA1, 0x04)))
                        }

                        If (LEqual (IIA0, 0x00020013))
                        {
                            Return (SALE (Add (IIA1, 0x08)))
                        }

                        If (LEqual (IIA0, 0x00040015))
                        {
                            Return (SALE (Add (IIA1, 0x10)))
                        }

                        If (LEqual (IIA0, 0x00020014))
                        {
                            Return (SALE (Add (IIA1, 0x20)))
                        }

                        If (LEqual (IIA0, 0x00020015))
                        {
                            Return (SALE (Add (IIA1, 0x40)))
                        }

                        If (LEqual (IIA0, 0x00020016))
                        {
                            Return (SALE (Add (IIA1, 0x80)))
                        }

                        If (LEqual (IIA0, 0x00020019))
                        {
                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00020020))
                        {
                            CPCS (IIA1)
                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00050012))
                        {
                            SPLV (IIA1)
                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00050011))
                        {
                            If (LEqual (IIA1, 0x02))
                            {
                                Store (One, LIDP)
                            }
                            Else
                            {
                                Store (Zero, LIDP)
                            }
                        }

                        If (LEqual (IIA0, 0x00010002))
                        {
                            OWGD (IIA1)
                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00010012))
                        {
                            If (WLDP)
                            {
                                WLED (IIA1)
                            }

                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00010013))
                        {
                            If (BTDP)
                            {
                                BLED (IIA1)
                            }

                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00010003))
                        {
                            Return (CWAP (IIA1))
                        }

                        If (LEqual (IIA0, 0x00010015))
                        {
                            If (GPDP)
                            {
                                GPSC (IIA1)
                            }

                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00010019))
                        {
                            If (TGDP)
                            {
                                GSMC (IIA1)
                            }

                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00010017))
                        {
                            If (WMDP)
                            {
                                WMXC (IIA1)
                            }

                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00010021))
                        {
                            If (UWDP)
                            {
                                UWBC (IIA1)
                            }

                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00120012))
                        {
                            Return (PSTC (Add (IIA1, One)))
                        }

                        If (LEqual (IIA0, 0x00100012))
                        {
                            TLED (IIA1)
                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00020018))
                        {
                            EGCR (IIA1)
                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00120031))
                        {
                            DESP (IIA1)
                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00120037))
                        {
                            IOMB (IIA1)
                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00120038))
                        {
                            IOMT (IIA1)
                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00120053))
                        {
                            If (LEqual (IIA1, One))
                            {
                                If (ACPF)
                                {
                                    Store (0xAA, DS3T)
                                    Store (Zero, ACPF)
                                    Notify (^^PCI0.AC0, 0x80)
                                    Sleep (0x64)
                                    PNOT ()
                                    Sleep (0x0A)
                                    ^^PCI0.LPCB.HEC.NBAT (0x80)
                                }

                                Store (0xAA, DS3A)
                            }
                            Else
                            {
                                Store (0x55, DS3T)
                                Store (0x55, DS3A)
                                Store (^^PCI0.LPCB.HEC.ACPS (), ACPF)
                                Notify (^^PCI0.AC0, 0x80)
                                Sleep (0x64)
                                PNOT ()
                                Sleep (0x0A)
                                ^^PCI0.LPCB.HEC.NBAT (0x80)
                            }

                            Return (One)
                        }

                        If (LEqual (IIA0, 0x00060023))
                        {
                            AICG (IIA1)
                            Return (One)
                        }

                        Return (Zero)
                    }
                    ElseIf (LEqual (_T_0, 0x50564544))
                    {
                        Return (GSRD (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x59454B48))
                    {
                        HKEY ()
                        Return (One)
                    }
                    ElseIf (LEqual (_T_0, 0x5446424B))
                    {
                        KBFT (IIA0)
                        Return (One)
                    }
                    ElseIf (LEqual (_T_0, 0x46494643))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (_T_0, 0x44495046))
                    {
                        Return (FPID ())
                    }
                    ElseIf (LEqual (_T_0, 0x424D5352))
                    {
                        Return (RSMB (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x424D5357))
                    {
                        Return (WSMB (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x574D5352))
                    {
                        Return (RSMW (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x574D5357))
                    {
                        Return (WSMW (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x4B4D5352))
                    {
                        Return (RSMK (IIA0))
                    }
                    ElseIf (LEqual (_T_0, 0x4B4D5357))
                    {
                        Return (WSMK (IIA0))
                    }
                    Else
                    {
                        Return (0xFFFFFFFE)
                    }

                    Break
                }
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                If (LEqual (Arg0, 0xFF))
                {
                    Return (GANQ ())
                }

                Return (Ones)
            }

            Method (INIT, 1, NotSerialized)
            {
                Store (One, ATKP)
                If (LNotEqual (SLLL, 0xAA))
                {
                    Notify (PCI0, Zero)
                }
                Else
                {
                    NTFY (0x69)
                }

                Store (Zero, SLLL)
                If (LGreaterEqual (OSFG, OSW8))
                {
                    ^^PCI0.LPCB.HEC.WRAM (0x0C0C, 0x80)
                }

                Return (MNAM)
            }

            Method (BSTS, 0, NotSerialized)
            {
                If (LOr (LEqual (^^PCI0.LPCB.HEC.RRAM (0x04FE), 0x34), LEqual (^^PCI0.LPCB.HEC.RRAM (0x04FE), 0x39)))
                {
                    Return (0x05)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TMPR, 0, NotSerialized)
            {
                Return (Ones)
            }

            Method (SFUN, 0, NotSerialized)
            {
                Store (0x37, Local0)
                Or (Local0, 0x40, Local0)
                Or (Local0, 0x80, Local0)
                Or (Local0, 0x00020000, Local0)
                Or (Local0, 0x00080000, Local0)
                Or (Local0, 0x00400000, Local0)
                Return (Local0)
            }

            Method (OSVR, 1, NotSerialized)
            {
            }

            Method (GPLV, 0, NotSerialized)
            {
                Return (LBTN)
            }

            Method (SPLV, 1, NotSerialized)
            {
                Store (Arg0, LBTN)
                ^^PCI0.LPCB.HEC.STBR ()
                Return (One)
            }

            Method (SPBL, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x0100))
                {
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x80))
                {
                    Return (Zero)
                }

                If (LGreaterEqual (Arg0, 0x0B))
                {
                    Return (Zero)
                }

                If (LLess (Arg0, Zero))
                {
                    Return (Zero)
                }

                Store (Arg0, LBTN)
                ^^PCI0.LPCB.HEC.STBR ()
                Return (One)
            }

            Method (GSRD, 1, NotSerialized)
            {
                Return (One)
            }

            Method (OWGD, 1, NotSerialized)
            {
            }

            Method (WLED, 1, NotSerialized)
            {
                OWLD (Arg0)
                Return (One)
            }

            Method (BLED, 1, NotSerialized)
            {
                OBTD (Arg0)
                Return (One)
            }

            Method (UWBC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WMXC, 1, NotSerialized)
            {
                OWMD (Arg0)
                Return (One)
            }

            Method (GPSC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GSMC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (KBNI, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (GALE, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x04))
                {
                    If (LAnd (LEDS, 0x04))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, 0x08))
                {
                    If (LAnd (LEDS, 0x08))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, 0x10))
                {
                    If (LAnd (LEDS, 0x10))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (0x02)
            }

            Method (SALE, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GMLE, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x03))
                {
                    Return (One)
                }

                Return (One)
            }

            Method (SMLE, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GDSP, 1, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (NATK ())
                {
                    While (One)
                    {
                        Store (Arg0, _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            Return (OGND ())
                        }
                        ElseIf (LEqual (_T_0, One))
                        {
                            Return (OEAD ())
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            Return (OGCD ())
                        }
                        ElseIf (LEqual (_T_0, 0x80))
                        {
                            Return (One)
                        }

                        Break
                    }
                }
            }

            Method (SDSP, 1, NotSerialized)
            {
                SWHG (Arg0)
            }

            Method (GPID, 0, NotSerialized)
            {
                Return (LCDR)
            }

            Method (FPID, 0, NotSerialized)
            {
                Return (0x0118)
            }

            Method (ALSC, 1, NotSerialized)
            {
                If (Arg0) {}
                Else
                {
                }

                Return (One)
            }

            Method (ALSL, 1, NotSerialized)
            {
                Return (One)
            }

            Method (HWRS, 0, NotSerialized)
            {
                Return (OHWR ())
            }

            Method (GLCD, 0, NotSerialized)
            {
                Return (LCDV)
            }

            Method (CWAP, 1, NotSerialized)
            {
                Or (Arg0, WAPF, WAPF)
                Return (One)
            }

            Method (WDOG, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (PTIM, PCDV)
                    Return (0x3C)
                }

                If (LEqual (Arg0, One))
                {
                    If (^^LID._LID ())
                    {
                        Store (PTIM, PCDV)
                        Return (One)
                    }

                    If (LLess (\_TZ.RLTM (), PTMP))
                    {
                        Store (PTIM, PCDV)
                        Return (One)
                    }

                    Decrement (PCDV)
                    If (LEqual (PCDV, Zero))
                    {
                        Store (PTIM, PCDV)
                        NTFY (0x6D)
                    }

                    Return (One)
                }

                If (LEqual (Arg0, 0x10))
                {
                    Return (0x8005)
                }

                If (LEqual (Arg0, 0x11))
                {
                    Notify (PCI0, Zero)
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (DPWR, 1, NotSerialized)
            {
                Return (One)
            }

            Method (QDEV, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Return (0x02)
                }

                If (LEqual (Arg0, 0x02))
                {
                    Return (0x02)
                }

                If (LEqual (Arg0, 0x04))
                {
                    Return (0x02)
                }

                If (LEqual (Arg0, 0x08))
                {
                    Return (0x02)
                }

                Return (0x02)
            }

            Method (SDON, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x02))
                {
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x04))
                {
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x08))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (SDOF, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x02))
                {
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x04))
                {
                    Return (Zero)
                }

                If (LEqual (Arg0, 0x08))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (QMOD, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Return (Zero)
                }

                If (LEqual (Arg0, One)) {}
                If (LEqual (Arg0, 0x02)) {}
                Return (One)
            }

            Method (ANVI, 1, Serialized)
            {
                Store (ASMI (Arg0), Local0)
                Return (Local0)
            }

            Method (PSTC, 1, Serialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    Return (PSTN)
                }

                If (ACPF)
                {
                    ShiftRight (PSTN, 0x08, Local0)
                }
                Else
                {
                    And (PSTN, 0xFF, Local0)
                }

                If (LGreater (Arg0, Local0))
                {
                    Return (Ones)
                }

                Store (Arg0, SLMT)
                PNOT ()
                Return (Zero)
            }

            Method (SMBB, 1, Serialized)
            {
                ShiftRight (Arg0, 0x10, Local0)
                And (Local0, 0xFF, Local0)
                ShiftRight (Arg0, 0x18, Local1)
                And (Arg0, 0xFF, Local2)
                If (And (Local1, One))
                {
                    Return (RBYT (Local1, Local0))
                }
                Else
                {
                    Return (WBYT (Local1, Local0, Local2))
                }
            }

            Method (SMBW, 1, Serialized)
            {
                ShiftRight (Arg0, 0x10, Local0)
                And (Local0, 0xFF, Local0)
                ShiftRight (Arg0, 0x18, Local1)
                And (Arg0, 0xFF, Local2)
                If (And (Local1, One))
                {
                    Return (RWRD (Local1, Local0))
                }
                Else
                {
                    Return (WWRD (Local1, Local0, Local2))
                }
            }

            Method (SMBK, 1, Serialized)
            {
                ShiftRight (Arg0, 0x08, Local0)
                And (Local0, 0xFF, Local0)
                If (Local0)
                {
                    ShiftRight (Arg0, 0x10, Local0)
                    And (Local0, 0xFF, Local0)
                    ShiftRight (Arg0, 0x18, Local1)
                    And (Local1, 0xFF, Local1)
                    And (Arg0, 0x0F, Local3)
                    If (And (Local1, One))
                    {
                        RBLK (Local1, Local0, Local3)
                    }
                    Else
                    {
                        WBLK (Local1, Local0, Local3)
                    }

                    Return (Zero)
                }
                Else
                {
                    ShiftRight (Arg0, 0x10, Local2)
                    And (Local2, 0xFF, Local2)
                    ShiftRight (Arg0, 0x18, Local1)
                    If (And (Local1, One))
                    {
                        Return (DerefOf (Index (RBUF, Local2)))
                    }
                    Else
                    {
                        And (Arg0, 0xFF, Local1)
                        Store (Local1, Index (RBUF, Local2))
                        Return (Zero)
                    }
                }
            }

            Method (ECRW, 1, Serialized)
            {
                ShiftRight (Arg0, 0x18, Local0)
                And (Local0, 0xFF, Local0)
                ShiftRight (Arg0, 0x10, Local1)
                And (Local1, 0xFF, Local1)
                ShiftRight (Arg0, 0x08, Local2)
                And (Local2, 0xFF, Local2)
                And (Arg0, 0xFF, Local3)
                If (LNotEqual (Acquire (^^PCI0.LPCB.HEC.MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                Store (Local0, ^^PCI0.LPCB.HEC.CDT3)
                Store (Local1, ^^PCI0.LPCB.HEC.CDT2)
                Store (Local2, ^^PCI0.LPCB.HEC.CDT1)
                Store (Local3, ^^PCI0.LPCB.HEC.CMD1)
                Store (0x05, Local0)
                While (LAnd (Local0, ^^PCI0.LPCB.HEC.CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                Store (^^PCI0.LPCB.HEC.CDT3, Local0)
                Store (^^PCI0.LPCB.HEC.CDT2, Local1)
                Store (^^PCI0.LPCB.HEC.CDT1, Local2)
                Store (^^PCI0.LPCB.HEC.CMD1, Local3)
                Release (^^PCI0.LPCB.HEC.MUEC)
                ShiftLeft (Local0, 0x08, Local0)
                Or (Local0, Local1, Local0)
                ShiftLeft (Local0, 0x08, Local0)
                Or (Local0, Local2, Local0)
                ShiftLeft (Local0, 0x08, Local0)
                Or (Local0, Local3, Local0)
                Return (Local0)
            }

            Method (CBIF, 1, Serialized)
            {
                Return (One)
            }

            Method (TLED, 1, NotSerialized)
            {
                OTLD (Arg0)
            }

            Method (GLED, 1, NotSerialized)
            {
                OGLD (Arg0)
            }

            Method (RLKB, 1, NotSerialized)
            {
                Return (One)
            }

            Method (CPCS, 1, NotSerialized)
            {
                Return (One)
            }

            Method (EGCR, 1, Serialized)
            {
            }

            Method (RSMB, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WSMB, 1, NotSerialized)
            {
                Return (One)
            }

            Method (RSMW, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WSMW, 1, NotSerialized)
            {
                Return (One)
            }

            Method (RSMK, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WSMK, 1, NotSerialized)
            {
                Return (One)
            }

            Method (USBC, 1, NotSerialized)
            {
            }
        }
    }

    Scope (_SB)
    {
        Device (ASHS)
        {
            Name (_HID, "ATK4001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Windows 2012"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (NTFY, 1, Serialized)
            {
                Notify (ASHS, Arg0)
            }

            Method (HSWC, 1, Serialized)
            {
                If (LLess (Arg0, 0x02))
                {
                    If (WLDP)
                    {
                        OWLD (Arg0)
                    }

                    If (BTDP)
                    {
                        OBTD (Arg0)
                    }

                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    Return (BRST)
                }

                If (LEqual (Arg0, 0x03))
                {
                    Return (OHWR ())
                }

                If (LEqual (Arg0, 0x80))
                {
                    Return (One)
                    Return (0x03)
                }
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        Device (HEC)
        {
            Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
            Name (CRS, ResourceTemplate ()
            {
                IO (Decode16,
                    0x0062,             // Range Minimum
                    0x0062,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0066,             // Range Minimum
                    0x0066,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
                Memory32Fixed (ReadOnly,
                    0x00000000,         // Address Base
                    0x00000500,         // Address Length
                    _Y22)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.PCI0.LPCB.HEC._Y22._BAS, HB01)  // _BAS: Base Address
                Store (HEM1, HB01)
                Return (CRS)
            }

            Name (_GPE, 0x1D)  // _GPE: General Purpose Events
            Mutex (MUEC, 0x00)
            Mutex (ASIO, 0x00)
            Name (ECFL, Ones)
            Method (ECAV, 0, NotSerialized)
            {
                If (LGreaterEqual (_REV, 0x02))
                {
                    Return (One)
                }

                If (LGreaterEqual (SLPT, 0x04))
                {
                    Return (Zero)
                }

                If (LEqual (ECFL, Ones))
                {
                    Return (Zero)
                }

                Return (ECFL)
            }

            OperationRegion (ECOR, EmbeddedControl, Zero, 0xFF)
            Field (ECOR, ByteAcc, Lock, Preserve)
            {
                Offset (0x04), 
                Offset (0x05), 
                CDTD,   8, 
                Offset (0x8A), 
                HKEN,   1
            }

            OperationRegion (ECW1, SystemMemory, HEM1, 0x80)
            Field (ECW1, ByteAcc, Lock, Preserve)
            {
                Offset (0x01), 
                EPWS,   8, 
                EB0S,   8, 
                EB1S,   8, 
                EB0R,   8, 
                EB1R,   8, 
                EB0T,   8, 
                EB1T,   8, 
                Offset (0x10), 
                B0PN,   16, 
                B0VL,   16, 
                B0RC,   16, 
                B0FC,   16, 
                B0ST,   16, 
                B0CC,   16, 
                B0TM,   16, 
                B0C1,   16, 
                B0CV,   16, 
                Offset (0x30), 
                B1PN,   16, 
                B1VL,   16, 
                B1RC,   16, 
                B1FC,   16, 
                B1ST,   16, 
                B1CC,   16, 
                B1TM,   16, 
                B1C1,   16, 
                B1CV,   16, 
                Offset (0x50), 
                B0DC,   16, 
                B0DV,   16, 
                B0SN,   16, 
                B0MD,   16, 
                B1DC,   16, 
                B1DV,   16, 
                B1SN,   16, 
                B1MD,   16, 
                TH1R,   8, 
                TH1L,   8, 
                TH0R,   8, 
                TH0L,   8, 
                ECRT,   8, 
                EPSV,   8, 
                EACT,   8, 
                TERR,   8, 
                F0TS,   16, 
                F1TS,   16, 
                F0CS,   8, 
                F1CS,   8, 
                PCPT,   16, 
                Offset (0x7A), 
                SYSC,   16
            }

            OperationRegion (ECW2, SystemMemory, HEM2, 0x0100)
            Field (ECW2, ByteAcc, Lock, Preserve)
            {
                ESEM,   8, 
                CMD1,   8, 
                CDT1,   8, 
                CDT2,   8, 
                CDT3,   8, 
                CDT4,   8, 
                CDT5,   8, 
                CDT6,   8, 
                CDT7,   8, 
                CDT8,   8, 
                CDT9,   8, 
                CD10,   8, 
                CD11,   8, 
                CD12,   8, 
                Offset (0x40), 
                EDA1,   8, 
                EDA2,   8, 
                EDA3,   8, 
                EDA4,   8, 
                EDA5,   8, 
                EDA6,   8, 
                EDA7,   8, 
                EDA8,   8, 
                EDA9,   8, 
                ED10,   8, 
                ED11,   8, 
                ED12,   8
            }

            OperationRegion (ECWB, SystemMemory, HEM2, 0x0100)
            Field (ECWB, ByteAcc, Lock, Preserve)
            {
                ESEB,   8, 
                CMDB,   8, 
                CDTB,   256, 
                Offset (0x40), 
                BCNT,   8, 
                BDAT,   256
            }

            OperationRegion (HMW1, SystemMemory, HEM2, 0x80)
            Field (HMW1, ByteAcc, Lock, Preserve)
            {
                ESMP,   8, 
                MCMD,   8, 
                MCDB,   496, 
                EHFD,   512
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LLessEqual (OSFG, OSME))
                {
                    Store (One, ECFL)
                }
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x03))
                {
                    Store (Arg1, ECFL)
                }
            }
        }
    }

    Scope (_SB.ATKD)
    {
        Method (CPUX, 4, NotSerialized)
        {
            If (LEqual (Arg1, 0x31))
            {
                If (LEqual (Arg2, 0x02))
                {
                    GCPU (Arg0, Arg1, Arg2, Arg3)
                    Return (Zero)
                }

                If (LEqual (Arg2, 0x03))
                {
                    SCPU (Arg0, Arg1, Arg2, Arg3)
                    Return (Zero)
                }
            }

            Return (Zero)
        }

        Method (GCPU, 4, NotSerialized)
        {
            OperationRegion (\F31A, SystemMemory, Arg0, 0x10)
            Field (F31A, DWordAcc, NoLock, Preserve)
            {
                MFUN,   16, 
                SFUN,   16, 
                LEN,    16, 
                STAS,   8, 
                EROR,   8, 
                PSIN,   16
            }

            Store (PSTC (Zero), PSIN)
            Store (0x80, STAS)
        }

        Method (SCPU, 4, NotSerialized)
        {
            OperationRegion (\F31B, SystemMemory, Arg0, 0x10)
            Field (F31B, DWordAcc, NoLock, Preserve)
            {
                MFUN,   16, 
                SFUN,   16, 
                LEN,    16, 
                STAS,   8, 
                EROR,   8, 
                PSTL,   8
            }

            If (PSTC (PSTL))
            {
                Store (0x82, STAS)
                Store (One, EROR)
            }
            Else
            {
                Store (0x80, STAS)
            }
        }
    }

    Scope (_SB)
    {
        Name (XCPD, Zero)
        Name (XNPT, One)
        Name (XCAP, 0x02)
        Name (XDCP, 0x04)
        Name (XDCT, 0x08)
        Name (XDST, 0x0A)
        Name (XLCP, 0x0C)
        Name (XLCT, 0x10)
        Name (XLST, 0x12)
        Name (XSCP, 0x14)
        Name (XSCT, 0x18)
        Name (XSST, 0x1A)
        Name (XRCT, 0x1C)
        Mutex (MUTE, 0x00)
        Method (BDFR, 4, NotSerialized)
        {
            Store (Zero, Local0)
            Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
            Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
            Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
            Add (Arg3, Local0, Local0)
            Return (Local0)
        }

        Method (RBPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (RWPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (RDPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (WBPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x0FFF)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (WWPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (WDPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (RWDP, 3, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PEBS, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            And (XCFG, Arg2, Local1)
            Or (Local1, Arg1, XCFG)
            Release (MUTE)
        }

        Method (RPME, 1, NotSerialized)
        {
            Add (Arg0, 0x84, Local0)
            Store (RDPE (Local0), Local1)
            If (LEqual (Local1, 0xFFFFFFFF))
            {
                Return (Zero)
            }
            Else
            {
                If (LAnd (Local1, 0x00010000))
                {
                    WDPE (Local0, And (Local1, 0x00010000))
                    Return (One)
                }

                Return (Zero)
            }
        }
    }

    Scope (\)
    {
        OperationRegion (PMIX, SystemIO, PMBS, 0x80)
        Field (PMIX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            TDTY,   3, 
            TENA,   1, 
            TTDT,   3, 
            FRCT,   1, 
                ,   8, 
            THLS,   1, 
            Offset (0x13), 
            Offset (0x20), 
                ,   1, 
            PEHS,   1, 
                ,   7, 
            PEPS,   1, 
            BALS,   1, 
            SBPS,   1, 
            Offset (0x22), 
            G00S,   1, 
            G01S,   1, 
            G02S,   1, 
            G03S,   1, 
            G04S,   1, 
            G05S,   1, 
            G06S,   1, 
            G07S,   1, 
            G08S,   1, 
            G09S,   1, 
            G0AS,   1, 
            G0BS,   1, 
            G0CS,   1, 
            G0DS,   1, 
            G0ES,   1, 
            G0FS,   1, 
            Offset (0x28), 
                ,   1, 
            PEHE,   1, 
                ,   7, 
            PEPE,   1, 
            BALE,   1, 
            SBPE,   1, 
            Offset (0x2A), 
            G00E,   1, 
            G01E,   1, 
            G02E,   1, 
            G03E,   1, 
            G04E,   1, 
            G05E,   1, 
            G06E,   1, 
            G07E,   1, 
            G08E,   1, 
            G09E,   1, 
            G0AE,   1, 
            G0BE,   1, 
            G0CE,   1, 
            G0DE,   1, 
            G0EE,   1, 
            G0FE,   1, 
            Offset (0x30), 
                ,   4, 
            SLPE,   1, 
            APME,   1, 
                ,   5, 
            MCSE,   1, 
                ,   1, 
            TCOE,   1, 
            PERE,   1, 
            Offset (0x32), 
            Offset (0x34), 
                ,   4, 
            SLPS,   1, 
            APMS,   1, 
                ,   5, 
            MCSS,   1, 
                ,   1, 
            TCOS,   1, 
            PERS,   1, 
            Offset (0x36), 
            Offset (0x42), 
                ,   1, 
            Offset (0x64), 
                ,   9, 
                ,   6
        }

        OperationRegion (GPIS, SystemIO, PMBS, 0x50)
        Field (GPIS, ByteAcc, NoLock, Preserve)
        {
            Offset (0x22), 
            GS00,   16, 
            Offset (0x2A), 
            GE00,   16
        }

        OperationRegion (GPXX, SystemIO, GPBS, 0x80)
        Field (GPXX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            GLV0,   32, 
            Offset (0x2C), 
            GP00,   16, 
            Offset (0x38), 
            GLV1,   32, 
            Offset (0x48), 
            GLV2,   32
        }

        OperationRegion (RCBA, SystemMemory, 0xFED1C000, 0x4000)
        Field (RCBA, ByteAcc, NoLock, Preserve)
        {
            Offset (0x3418), 
            FDRT,   32
        }

        Method (RGPL, 2, Serialized)
        {
            Store (Arg1, Local0)
            Store (Zero, Local1)
            While (Local0)
            {
                ShiftLeft (Local1, One, Local1)
                Or (Local1, One, Local1)
                Decrement (Local0)
            }

            If (LLess (Arg0, 0x20))
            {
                ShiftLeft (Local1, Arg0, Local1)
                Store (GLV0, Local0)
                And (Local0, Local1, Local0)
                ShiftRight (Local0, Arg0, Local0)
            }
            ElseIf (LLess (Arg0, 0x40))
            {
                Store (GLV1, Local0)
                Subtract (Arg0, 0x20, Local2)
            }
            Else
            {
                Store (GLV2, Local0)
                Subtract (Arg0, 0x40, Local2)
            }

            Return (Local0)
        }

        Method (SGPL, 3, Serialized)
        {
            Store (Arg1, Local0)
            Store (Zero, Local1)
            While (Local0)
            {
                ShiftLeft (Local1, One, Local1)
                Or (Local1, One, Local1)
                Decrement (Local0)
            }

            If (LLess (Arg0, 0x20))
            {
                Store (MKPN (Arg0, GLV0, Arg2, Local1), GLV0)
            }
            ElseIf (LLess (Arg0, 0x40))
            {
                Subtract (Arg0, 0x20, Local2)
                Store (MKPN (Local2, GLV1, Arg2, Local1), GLV1)
            }
            Else
            {
                Subtract (Arg0, 0x40, Local2)
                Store (MKPN (Local2, GLV2, Arg2, Local1), GLV2)
            }
        }

        Method (MKPN, 4, Serialized)
        {
            ShiftLeft (Arg3, Arg0, Local1)
            Not (Local1, Local3)
            And (Arg1, Local3, Local0)
            ShiftLeft (Arg2, Arg0, Local4)
            Or (Local0, Local4, Local0)
            Return (Local0)
        }

        Method (RGPP, 1, Serialized)
        {
            ShiftRight (GP00, Arg0, Local0)
            And (Local0, One, Local0)
            Return (Local0)
        }

        Method (TGPP, 1, Serialized)
        {
            ShiftLeft (One, Arg0, Local0)
            XOr (GP00, Local0, GP00)
        }

        Method (SGPP, 2, Serialized)
        {
            ShiftLeft (One, Arg0, Local0)
            If (Arg1)
            {
                Or (GP00, Local0, GP00)
            }
            Else
            {
                Not (Local0, Local1)
                And (GP00, Local1, GP00)
            }
        }

        Name (PMEW, Zero)
        Method (SBRS, 1, NotSerialized)
        {
            CPXS ()
        }

        Method (SBRW, 1, NotSerialized)
        {
            Store (SBPS, PMEW)
            If (_OSI ("Windows 2012"))
            {
                \_SB.PCI0.XHC.XSEL ()
            }
        }

        Method (STRP, 1, NotSerialized)
        {
            If (Arg0)
            {
                Store (One, SLPS)
                Store (One, SLPE)
            }
            Else
            {
                Store (Zero, SLPE)
                Store (One, SLPS)
            }
        }

        Method (HKTH, 0, Serialized)
        {
            If (THLS)
            {
                Return (TTDT)
            }
            Else
            {
                Return (0xFFFF)
            }
        }

        Method (CPXS, 0, NotSerialized)
        {
            Store (Zero, Local0)
            Store (0x00010000, Local1)
            Store (0x000E0060, Local2)
            Store (0x000E00DC, Local3)
            While (LLess (Local0, 0x08))
            {
                If (LNot (And (FDRT, Local1)))
                {
                    If (LEqual (\_SB.RDPE (Local2), 0xFFFFFFFF))
                    {
                        Add (Local2, 0x1000, Local2)
                        Add (Local3, 0x1000, Local3)
                        ShiftLeft (Local1, One, Local1)
                        Increment (Local0)
                        Continue
                    }

                    While (And (\_SB.RDPE (Local2), 0x00010000))
                    {
                        Or (\_SB.RDPE (Local2), 0x00010000, Local4)
                        \_SB.WDPE (Local2, Local4)
                    }

                    While (And (\_SB.RDPE (Local3), 0x80000000))
                    {
                        Or (\_SB.RDPE (Local3), 0x80000000, Local4)
                        \_SB.WDPE (Local3, Local4)
                    }
                }

                Add (Local2, 0x1000, Local2)
                Add (Local3, 0x1000, Local3)
                ShiftLeft (Local1, One, Local1)
                Increment (Local0)
            }

            While (And (PEPS, One))
            {
                Or (PEPS, One, PEPS)
            }
        }
    }

    Scope (_GPE)
    {
    }

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (RXA0, PCI_Config, 0xA0, 0x20)
        Field (RXA0, ByteAcc, NoLock, Preserve)
        {
                ,   9, 
            PBLV,   1, 
            BCPE,   1, 
            Offset (0x10), 
                ,   1, 
            PBMS,   1, 
                ,   1, 
            PMCS,   1, 
            ECNS,   1, 
            Offset (0x11), 
            ECT1,   16, 
            ELEN,   1, 
            Offset (0x14)
        }
    }

    Scope (\)
    {
        OperationRegion (SMB0, SystemIO, 0x0580, 0x10)
        Field (SMB0, ByteAcc, NoLock, Preserve)
        {
            HSTS,   8, 
            SSTS,   8, 
            HSTC,   8, 
            HCMD,   8, 
            HADR,   8, 
            HDT0,   8, 
            HDT1,   8, 
            BLKD,   8, 
            SPEC,   8, 
            SRCV,   8, 
            SLVD,   16, 
            AUXS,   8, 
            AUXC,   8
        }

        Name (RBUF, Package (0x20) {})
        Method (HBSY, 0, NotSerialized)
        {
            Store (0x000FFFFF, Local0)
            While (Local0)
            {
                And (HSTS, One, Local1)
                If (LNot (Local1))
                {
                    Return (Zero)
                }

                Decrement (Local0)
            }

            Return (One)
        }

        Method (WTSB, 0, NotSerialized)
        {
            Store (0x000FFFFF, Local0)
            While (Local0)
            {
                Decrement (Local0)
                And (HSTS, 0x1E, Local1)
                If (LEqual (Local1, 0x02))
                {
                    Return (One)
                }

                If (Local1)
                {
                    Return (Zero)
                }
            }

            Return (Zero)
        }

        Mutex (P4SM, 0x00)
        Method (SBYT, 2, Serialized)
        {
            If (LNotEqual (Acquire (P4SM, 0xFFFF), Zero))
            {
                Return (Ones)
            }

            Store (Zero, AUXC)
            Store (Arg0, HADR)
            Store (Arg1, HCMD)
            Store (0xFF, HSTS)
            Store (0x44, HSTC)
            If (WTSB ())
            {
                Release (P4SM)
                Return (One)
            }
            Else
            {
                Release (P4SM)
                Return (Zero)
            }

            Return (Ones)
        }

        Method (WBYT, 3, Serialized)
        {
            If (LNotEqual (Acquire (P4SM, 0xFFFF), Zero))
            {
                Return (Ones)
            }

            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Store (Arg0, HADR)
                    Store (Arg1, HCMD)
                    Store (Arg2, HDT0)
                    Store (0xFF, HSTS)
                    Store (0x48, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (WWRD, 3, Serialized)
        {
            If (LNotEqual (Acquire (P4SM, 0xFFFF), Zero))
            {
                Return (Ones)
            }

            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Store (Arg0, HADR)
                    Store (Arg1, HCMD)
                    And (Arg2, 0xFF, Local1)
                    ShiftRight (Arg2, 0x08, Local2)
                    And (Local2, 0xFF, Local2)
                    Store (Local2, HDT0)
                    Store (Local1, HDT1)
                    Store (0xFF, HSTS)
                    Store (0x4C, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (WBLK, 3, Serialized)
        {
            If (LNotEqual (Acquire (P4SM, 0xFFFF), Zero))
            {
                Return (Ones)
            }

            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Store (Arg0, HADR)
                    Store (Arg1, HCMD)
                    Store (HSTC, Local1)
                    Store (Arg2, Local2)
                    Store (Zero, Local1)
                    While (Local2)
                    {
                        Store (DerefOf (Index (RBUF, Local1)), BLKD)
                        Decrement (Local2)
                        Increment (Local1)
                    }

                    Store (Arg2, HDT0)
                    Store (HSTC, Local1)
                    Store (0xFF, HSTS)
                    Store (0x54, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (RSBT, 2, Serialized)
        {
            If (LNotEqual (Acquire (P4SM, 0xFFFF), Zero))
            {
                Return (Ones)
            }

            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Or (Arg0, One, HADR)
                    Store (Arg1, HCMD)
                    Store (0xFF, HSTS)
                    Store (0x44, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (HDT0)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (RBYT, 2, Serialized)
        {
            If (LNotEqual (Acquire (P4SM, 0xFFFF), Zero))
            {
                Return (Ones)
            }

            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Or (Arg0, One, HADR)
                    Store (Arg1, HCMD)
                    Store (0xFF, HSTS)
                    Store (0x48, HSTC)
                    If (WTSB ())
                    {
                        Release (P4SM)
                        Return (HDT0)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (RWRD, 2, Serialized)
        {
            If (LNotEqual (Acquire (P4SM, 0xFFFF), Zero))
            {
                Return (Ones)
            }

            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Or (Arg0, One, HADR)
                    Store (Arg1, HCMD)
                    Store (0xFF, HSTS)
                    Store (0x4C, HSTC)
                    If (WTSB ())
                    {
                        Store (HDT0, Local1)
                        ShiftLeft (Local1, 0x08, Local1)
                        Store (HDT1, Local2)
                        Add (Local1, Local2, Local1)
                        Release (P4SM)
                        Return (Local1)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }

        Method (RBLK, 3, Serialized)
        {
            If (LNotEqual (Acquire (P4SM, 0xFFFF), Zero))
            {
                Return (Ones)
            }

            Store (0x05, Local0)
            While (Local0)
            {
                If (HBSY ())
                {
                    Decrement (Local0)
                }
                Else
                {
                    Or (Arg0, One, HADR)
                    Store (Arg1, HCMD)
                    Store (0xFF, HSTS)
                    Store (0x54, HSTC)
                    If (WTSB ())
                    {
                        Store (HSTC, Local1)
                        Store (HDT0, Local2)
                        Store (Local2, Local3)
                        Store (Zero, RBUF)
                        Store (Zero, Local1)
                        While (Local2)
                        {
                            Store (BLKD, Index (RBUF, Local1))
                            Decrement (Local2)
                            Increment (Local1)
                        }

                        Release (P4SM)
                        Return (Local3)
                    }
                    Else
                    {
                        Decrement (Local0)
                    }
                }
            }

            Release (P4SM)
            Return (Ones)
        }
    }

    Scope (_SB.PCI0.EHC0)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
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
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (Zero))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (Zero))
                    }
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (One))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (One))
                    }
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x02))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x02))
                    }
                }

                Device (PRT4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x03))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x03))
                    }
                }

                Device (PRT5)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x04))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x04))
                    }
                }

                Device (PRT6)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x05))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x05))
                    }
                }

                Device (PRT7)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x06))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x06))
                    }
                }

                Device (PRT8)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x07))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x07))
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.EHC1)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
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
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x08))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x08))
                    }
                }

                Device (PRT2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x09))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x09))
                    }
                }

                Device (PRT3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x0A))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x0A))
                    }
                }

                Device (PRT4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x0B))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x0B))
                    }
                }

                Device (PRT5)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x0C))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x0C))
                    }
                }

                Device (PRT6)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (OUPC (0x0D))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (OPLD (0x0D))
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.EHC1.RHUB.PRT1.PRT6)
    {
        Device (CAM0)
        {
            Name (_ADR, 0x06)  // _ADR: Address
            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0xA1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                }
            })
        }
    }

    Scope (_SB.PCI0.XHC)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (HS01)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (Zero))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (Zero))
                }
            }

            Device (HS02)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (One))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (One))
                }
            }

            Device (HS03)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x02))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Store (XPLD (0x02), Local0)
                    CreateBitField (DerefOf (Index (Local0, Zero)), 0x40, VIS)
                    If (LEqual (And (CDID, 0xF000), 0x9000))
                    {
                        And (VIS, Zero, VIS)
                    }

                    Return (Local0)
                }
            }

            Device (HS04)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x03))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x03))
                }
            }

            Device (HS05)
            {
                Name (_ADR, 0x05)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x04))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x04))
                }
            }

            Device (HS06)
            {
                Name (_ADR, 0x06)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x05))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x05))
                }
            }

            Device (HS07)
            {
                Name (_ADR, 0x07)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x06))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x06))
                }
            }

            Device (HS08)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x07))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x07))
                }
            }

            Device (HS09)
            {
                Name (_ADR, 0x09)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x08))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Store (XPLD (0x08), Local0)
                    CreateBitField (DerefOf (Index (Local0, Zero)), 0x40, VIS)
                    If (LEqual (And (CDID, 0xF000), 0x9000))
                    {
                        And (VIS, Zero, VIS)
                    }

                    Return (Local0)
                }
            }

            Device (HS10)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0A)
                    }
                    Else
                    {
                        Return (0xFA)
                    }
                }

                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x09))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x09))
                }
            }

            Device (HS11)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (0xFB)
                    }
                }

                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x0A))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x0A))
                }
            }

            Device (HS12)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0C)
                    }
                    Else
                    {
                        Return (0xFC)
                    }
                }

                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x0B))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x0B))
                }
            }

            Device (HS13)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0D)
                    }
                    Else
                    {
                        Return (0xFD)
                    }
                }

                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x0C))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x0C))
                }
            }

            Device (HS14)
            {
                Name (_ADR, 0x0E)  // _ADR: Address
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x0D))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x0D))
                }
            }

            Device (HS15)
            {
                Name (_ADR, 0x0F)  // _ADR: Address
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Name (UPCP, Package (0x04)
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    If (LNot (And (PR2, 0x4000)))
                    {
                        Store (Zero, Index (UPCP, Zero))
                    }

                    Return (UPCP)
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Name (PLDP, Package (0x01)
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */  0x70, 0x0C, 0x80, 0x07, 0x00, 0x00, 0x00, 0x00 
                        }
                    })
                    CreateBitField (DerefOf (Index (PLDP, Zero)), 0x40, VIS)
                    If (LNot (And (PR2, 0x2000)))
                    {
                        And (VIS, Zero, VIS)
                    }

                    Return (PLDP)
                }
            }

            Device (SSP1)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x10)
                    }
                    Else
                    {
                        Return (0x0A)
                    }
                }

                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x0F))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x0F))
                }
            }

            Device (SSP2)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x11)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x10))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x10))
                }
            }

            Device (SSP3)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x12)
                    }
                    Else
                    {
                        Return (0x0C)
                    }
                }

                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x11))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x11))
                }
            }

            Device (SSP4)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x13)
                    }
                    Else
                    {
                        Return (0x0D)
                    }
                }

                Name (_STA, 0x0F)  // _STA: Status
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x12))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x12))
                }
            }

            Device (SSP5)
            {
                Name (_ADR, 0x14)  // _ADR: Address
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x13))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x13))
                }
            }

            Device (SSP6)
            {
                Name (_ADR, 0x15)  // _ADR: Address
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If (LEqual (And (CDID, 0xF000), 0x8000))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (XUPC (0x14))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (XPLD (0x14))
                }
            }
        }
    }

    Scope (_SB)
    {
        Name (CNTB, Buffer (0x10)
        {
            /* 0000 */  0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00 
        })
        Name (VISB, Buffer (0x10)
        {
            /* 0000 */  0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00 
        })
        Name (SHPB, Buffer (0x10)
        {
            /* 0000 */  0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
            /* 0008 */  0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07 
        })
        Method (OUPC, 1, Serialized)
        {
            Name (BUPC, Package (0x04)
            {
                0xFF, 
                Zero, 
                Zero, 
                Zero
            })
            Store (DerefOf (Index (CNTB, Arg0)), Local0)
            Store (Local0, Index (BUPC, Zero))
            Return (BUPC)
        }

        Method (OPLD, 1, Serialized)
        {
            Name (BPLD, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Store (DerefOf (Index (VISB, Arg0)), Local0)
            Store (DerefOf (Index (BPLD, 0x08)), Local1)
            And (Local1, 0xFE, Local1)
            Or (Local1, Local0, Local1)
            Store (Local1, Index (BPLD, 0x08))
            Store (DerefOf (Index (SHPB, Arg0)), Local0)
            Store (DerefOf (Index (BPLD, 0x09)), Local1)
            And (Local1, 0xC3, Local1)
            Or (Local1, Local0, Local1)
            Store (Local1, Index (BPLD, 0x09))
            Return (BPLD)
        }

        Name (CNTX, Buffer (0x15)
        {
            /* 0000 */  0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0xFF,
            /* 0010 */  0xFF, 0x00, 0x00, 0x00, 0x00                   
        })
        Name (VISX, Buffer (0x15)
        {
            /* 0000 */  0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01,
            /* 0010 */  0x01, 0x00, 0x00, 0x00, 0x00                   
        })
        Name (SHPX, Buffer (0x15)
        {
            /* 0000 */  0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
            /* 0008 */  0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
            /* 0010 */  0x07, 0x07, 0x07, 0x07, 0x07                   
        })
        Method (XUPC, 1, Serialized)
        {
            Name (UPCP, Package (0x04)
            {
                0xFF, 
                0x03, 
                Zero, 
                Zero
            })
            Store (DerefOf (Index (CNTX, Arg0)), Local0)
            Store (Local0, Index (UPCP, Zero))
            If (LLess (Arg0, 0x0F))
            {
                Store (Zero, Index (UPCP, One))
            }

            Return (UPCP)
        }

        Method (XPLD, 1, Serialized)
        {
            Name (PLDP, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x69, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00 
                }
            })
            Store (DerefOf (Index (VISX, Arg0)), Local0)
            Store (DerefOf (Index (PLDP, 0x08)), Local1)
            And (Local1, 0xFE, Local1)
            Or (Local1, Local0, Local1)
            Store (Local1, Index (PLDP, 0x08))
            Store (DerefOf (Index (SHPX, Arg0)), Local0)
            Store (DerefOf (Index (PLDP, 0x09)), Local1)
            And (Local1, 0xC3, Local1)
            Or (Local1, Local0, Local1)
            Store (Local1, Index (PLDP, 0x09))
            Return (PLDP)
        }
    }

    Scope (_SB.PCI0.XHC.RHUB.HS10)
    {
        Device (CAM0)
        {
            Name (_ADR, 0x0A)  // _ADR: Address
            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
            {
                Buffer (0x14)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0xA1, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                }
            })
        }
    }

    Scope (\)
    {
        Device (NFC1)
        {
            Name (_HID, EisaId ("SKTD000"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\_SB.NFCE, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (NFC2)
        {
            Name (_HID, EisaId ("NXP5442"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\_SB.NFCE, 0x02))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (NFC3)
        {
            Name (_HID, EisaId ("ICV0A12"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\_SB.NFCE, 0x03))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (AC0)
        {
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Return (^^LPCB.HEC.ACAP ())
            }

            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                PCI0
            })
        }
    }

    Scope (_SB.PCI0.LPCB.HEC)
    {
        Method (ACAP, 0, Serialized)
        {
            Return (ACPF)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                PCI0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (B0DP)
                {
                    If (^^LPCB.HEC.BATP (Zero))
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
                    Return (Zero)
                }
            }

            Name (LOW2, 0x012C)
            Name (DVOT, 0x0E)
            Name (PUNT, One)
            Name (LFCC, 0x1770)
            Name (PLFC, 0x1770)
            Name (NBIF, Package (0x0D)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                "", 
                "", 
                "", 
                ""
            })
            Name (PBIF, Package (0x0D)
            {
                One, 
                0x1770, 
                0x1770, 
                One, 
                0x39D0, 
                0x0258, 
                0x012C, 
                0x3C, 
                0x3C, 
                "M3N", 
                "  ", 
                "LIon", 
                "ASUS"
            })
            Name (PBST, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (FBIF, 5, NotSerialized)
            {
                Store (Arg0, PUNT)
                Store (Arg1, Local1)
                Store (Arg2, Local2)
                If (LEqual (PUNT, Zero))
                {
                    Multiply (Local1, 0x0A, Local1)
                    Multiply (Local2, 0x0A, Local2)
                }

                Store (Arg0, Index (PBIF, Zero))
                Store (Local1, Index (PBIF, One))
                Store (Local2, Index (PBIF, 0x02))
                Store (Local2, LFCC)
                Store (Arg3, Index (PBIF, 0x03))
                Store (Arg4, Index (PBIF, 0x04))
                If (LLess (OSFG, OSVT))
                {
                    Divide (Local1, 0x64, Local3, Local5)
                }
                Else
                {
                    Divide (Local2, 0x64, Local3, Local5)
                }

                Multiply (Local5, 0x0A, Local6)
                Store (Local6, Index (PBIF, 0x05))
                Multiply (Local5, One, Local6)
                Store (Local6, Index (PBIF, 0x06))
                Store (Local6, LOW2)
                Divide (Local1, 0x64, Local3, Local7)
                Store (Local7, Index (PBIF, 0x07))
                Store (Local7, Index (PBIF, 0x08))
            }

            Method (CBIF, 0, NotSerialized)
            {
                If (PUNT)
                {
                    Store (DerefOf (Index (PBIF, 0x04)), Local0)
                    Add (Local0, 0x01F4, Local0)
                    Divide (Local0, 0x03E8, Local1, DVOT)
                    Store (Zero, Index (PBIF, Zero))
                    Multiply (DerefOf (Index (PBIF, One)), DVOT, Index (PBIF, One))
                    Multiply (DerefOf (Index (PBIF, 0x02)), DVOT, Index (PBIF, 0x02))
                    Multiply (DerefOf (Index (PBIF, 0x05)), DVOT, Index (PBIF, 0x05))
                    Multiply (DerefOf (Index (PBIF, 0x06)), DVOT, Index (PBIF, 0x06))
                    Multiply (DerefOf (Index (PBIF, 0x07)), DVOT, Index (PBIF, 0x07))
                    Multiply (DerefOf (Index (PBIF, 0x08)), DVOT, Index (PBIF, 0x08))
                }
            }

            Method (_BIF, 0, Serialized)  // _BIF: Battery Information
            {
                If (LNot (^^LPCB.HEC.BATP (Zero)))
                {
                    Return (NBIF)
                }

                If (LEqual (^^LPCB.HEC.GBTT (Zero), 0xFF))
                {
                    Return (NBIF)
                }

                Store (^^LPCB.HEC.BIF9 (), Index (PBIF, 0x09))
                Store (ONAM, Index (PBIF, 0x0C))
                Store (^^LPCB.HEC.BIF0 (Zero), Local0)
                Store (^^LPCB.HEC.BIF1 (Zero), Local1)
                Store (^^LPCB.HEC.BIF2 (Zero), Local2)
                Store (Local2, PLFC)
                Store (^^LPCB.HEC.BIF3 (Zero), Local3)
                Store (^^LPCB.HEC.BIF4 (Zero), Local4)
                If (LNotEqual (Local0, Ones))
                {
                    If (LNotEqual (Local1, Ones))
                    {
                        If (LNotEqual (Local2, Ones))
                        {
                            If (LNotEqual (Local3, Ones))
                            {
                                If (LNotEqual (Local4, Ones))
                                {
                                    FBIF (Local0, Local1, Local2, Local3, Local4)
                                    CBIF ()
                                }
                            }
                        }
                    }
                }

                If (LEqual (PUNT, Zero))
                {
                    Multiply (Local2, 0x0A, Local2)
                }

                Store (Local2, LFCC)
                Return (PBIF)
            }

            Method (FBST, 4, NotSerialized)
            {
                And (Arg1, 0xFFFF, Local1)
                Store (Zero, Local0)
                If (^^LPCB.HEC.ACAP ())
                {
                    Store (One, Local0)
                }

                If (Local0)
                {
                    If (CHGS (Zero))
                    {
                        Store (0x02, Local0)
                    }
                    Else
                    {
                        Store (One, Local0)
                    }
                }
                Else
                {
                    Store (One, Local0)
                }

                And (Arg0, 0x0300, Local2)
                If (Local2)
                {
                    ShiftLeft (One, 0x02, Local2)
                    Or (Local0, Local2, Local0)
                }

                If (LGreaterEqual (Local1, 0x8000))
                {
                    Subtract (0xFFFF, Local1, Local1)
                }

                Store (Arg2, Local2)
                If (LEqual (PUNT, Zero))
                {
                    Multiply (Local1, DVOT, Local1)
                    Multiply (Local2, 0x0A, Local2)
                }

                And (Local0, 0x02, Local3)
                If (LNot (Local3))
                {
                    Subtract (LFCC, Local2, Local3)
                    Divide (LFCC, 0xC8, Local4, Local5)
                    If (LLess (Local3, Local5))
                    {
                        Store (LFCC, Local2)
                    }
                }
                Else
                {
                    Divide (LFCC, 0xC8, Local4, Local5)
                    Subtract (LFCC, Local5, Local4)
                    If (LGreater (Local2, Local4))
                    {
                        Store (Local4, Local2)
                    }
                }

                If (LNot (^^LPCB.HEC.ACAP ()))
                {
                    Divide (Local2, MBLF, Local3, Local4)
                    If (LLess (Local1, Local4))
                    {
                        Store (Local4, Local1)
                    }
                }

                Store (Local0, Index (PBST, Zero))
                Store (Local1, Index (PBST, One))
                Store (Local2, Index (PBST, 0x02))
                Store (Arg3, Index (PBST, 0x03))
            }

            Method (CBST, 0, NotSerialized)
            {
                If (PUNT)
                {
                    Multiply (DerefOf (Index (PBST, One)), DVOT, Index (PBST, One))
                    Multiply (DerefOf (Index (PBST, 0x02)), DVOT, Index (PBST, 0x02))
                }
            }

            Method (_BST, 0, Serialized)  // _BST: Battery Status
            {
                Store (Zero, Index (PBST, Zero))
                Store (Ones, Index (PBST, One))
                Store (Ones, Index (PBST, 0x02))
                Store (Ones, Index (PBST, 0x03))
                If (LNot (^^LPCB.HEC.BATP (Zero)))
                {
                    Return (PBST)
                }

                If (LEqual (^^LPCB.HEC.GBTT (Zero), 0xFF))
                {
                    Return (PBST)
                }

                If (MES4)
                {
                    Decrement (MES4)
                    Return (PBST)
                }

                If (LNotEqual (^^LPCB.HEC.BIF2 (Zero), PLFC))
                {
                    Notify (BAT0, 0x81)
                }

                Store (^^LPCB.HEC.BSTS (Zero), Local0)
                Store (^^LPCB.HEC.BCRT (Zero), Local1)
                Store (^^LPCB.HEC.BRCP (Zero), Local2)
                Store (^^LPCB.HEC.BVOT (Zero), Local3)
                BATR ()
                If (LNotEqual (Local0, Ones))
                {
                    If (LNotEqual (Local1, Ones))
                    {
                        If (LNotEqual (Local2, Ones))
                        {
                            If (LNotEqual (Local3, Ones))
                            {
                                FBST (Local0, Local1, Local2, Local3)
                                CBST ()
                            }
                        }
                    }
                }

                Return (PBST)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (B0CR, Zero)
        Name (B1CR, Zero)
        Method (GGCC, 1, Serialized)
        {
            Store (^LPCB.HEC.BCRT (Arg0), Local0)
            BATR ()
            If (LEqual (Local0, Ones))
            {
                If (Arg0)
                {
                    Store (B1CR, Local0)
                }
                Else
                {
                    Store (B0CR, Local0)
                }
            }

            And (Local0, 0x8000, Local1)
            If (Local1)
            {
                Store (Zero, Local0)
            }

            If (Arg0)
            {
                Store (Local0, B1CR)
            }
            Else
            {
                Store (Local0, B0CR)
            }

            Return (Local0)
        }
    }

    Scope (_SB.PCI0.LPCB.HEC)
    {
        Name (BADR, 0x0B)
        Name (CADR, 0x09)
        Name (SADR, 0x0A)
        Method (BIF0, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                If (Arg0)
                {
                    Store (B1MD, Local0)
                }
                Else
                {
                    Store (B0MD, Local0)
                }

                If (LNotEqual (Local0, 0xFFFF))
                {
                    ShiftRight (Local0, 0x0F, Local1)
                    And (Local1, One, Local1)
                    XOr (Local1, One, Local0)
                }

                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF1, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Store (Ones, Local0)
                    Return (Local0)
                }

                If (Arg0)
                {
                    Store (B1DC, Local0)
                }
                Else
                {
                    Store (B0DC, Local0)
                }

                And (Local0, 0xFFFF, Local0)
                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF2, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                If (Arg0)
                {
                    Store (B1FC, Local0)
                }
                Else
                {
                    Store (B0FC, Local0)
                }

                And (Local0, 0xFFFF, Local0)
                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF3, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                If (Arg0)
                {
                    Store (B1MD, Local0)
                }
                Else
                {
                    Store (B0MD, Local0)
                }

                If (LNotEqual (Local0, 0xFFFF))
                {
                    ShiftRight (Local0, 0x09, Local0)
                    And (Local0, One, Local0)
                    XOr (Local0, One, Local0)
                }

                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF4, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                If (Arg0)
                {
                    Store (B1DV, Local0)
                }
                Else
                {
                    Store (B0DV, Local0)
                }

                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF9, 0, NotSerialized)
        {
            Name (BSTR, Buffer (0x20) {})
            If (BATP (One))
            {
                Store (SMBR (RDBL, BADR, 0x21, One), Local0)
            }

            If (BATP (Zero))
            {
                Store (SMBR (RDBL, BADR, 0x21, Zero), Local0)
            }

            If (LNotEqual (DerefOf (Index (Local0, Zero)), Zero))
            {
                Store (MNAM, BSTR)
                Store (Zero, Index (BSTR, 0x04))
            }
            Else
            {
                Store (DerefOf (Index (Local0, 0x02)), BSTR)
                Store (Zero, Index (BSTR, DerefOf (Index (Local0, One))))
            }

            Return (BSTR)
        }

        Method (BIFA, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                If (Arg0)
                {
                    Store (B1SN, Local0)
                }
                Else
                {
                    Store (B0SN, Local0)
                }

                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BSTS, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                If (Arg0)
                {
                    Store (B1ST, Local0)
                }
                Else
                {
                    Store (B0ST, Local0)
                }

                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BCRT, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                If (Arg0)
                {
                    Store (B1CC, Local0)
                }
                Else
                {
                    Store (B0CC, Local0)
                }

                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BRCP, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                If (Arg0)
                {
                    Store (B1RC, Local0)
                }
                Else
                {
                    Store (B0RC, Local0)
                }

                If (LEqual (Local0, 0xFFFF))
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BVOT, 1, Serialized)
        {
            If (ECAV ())
            {
                If (LNotEqual (Acquire (MUEC, 0xFFFF), Zero))
                {
                    Return (Ones)
                }

                If (Arg0)
                {
                    Store (B1VL, Local0)
                }
                Else
                {
                    Store (B0VL, Local0)
                }

                Release (MUEC)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }
    }

    Scope (\)
    {
        Method (CHGS, 1, Serialized)
        {
            Store (\_SB.PCI0.LPCB.HEC.BCHG (Arg0), Local0)
            Return (Local0)
        }

        Name (BSLF, Zero)
        Method (BATS, 1, Serialized)
        {
            If (Arg0)
            {
                Store (One, BSLF)
            }
            Else
            {
                Store (Zero, BSLF)
            }
        }

        Method (BATR, 0, Serialized)
        {
        }
    }

    Scope (_SB.PCI0.LPCB.HEC)
    {
        Method (_QA1, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (DCPS (Zero), DCPF)
            If (DCPF)
            {
                Sleep (0x07D0)
            }

            Notify (BAT0, 0x80)
            Notify (BAT0, 0x81)
        }

        Method (BATP, 1, Serialized)
        {
            If (LNot (And (RRAM (0x0620), 0x80)))
            {
                Return (Zero)
            }

            If (Arg0)
            {
                Return (DCP2)
            }
            Else
            {
                Return (DCPF)
            }
        }

        Method (NBAT, 1, NotSerialized)
        {
            If (BATP (Zero))
            {
                Notify (BAT0, Arg0)
            }
        }
    }

    Scope (\)
    {
        Name (MES4, Zero)
        Method (OEMS, 1, NotSerialized)
        {
            SBRS (Arg0)
            \_SB.PCI0.LPCB.HEC.EC0S (Arg0)
            Store (Arg0, \_SB.SLPN)
            Store (Arg0, \_SB.SLPT)
            DIAG (Add (Arg0, 0xD0))
            If (Arg0)
            {
                STRP (One)
            }

            PRJS (Arg0)
            ISMI (0x9D)
        }

        Method (OEMW, 1, NotSerialized)
        {
            ISMI (0x9E)
            Store (Zero, \_SB.SLPT)
            \_SB.PCI0.LPCB.HEC.EC0W (Arg0)
            If (LEqual (Arg0, 0x03)) {}
            SBRW (Arg0)
            If (LEqual (Arg0, 0x04))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            PRJW (Arg0)
            DIAG (Add (Arg0, 0xF0))
        }
    }

    Scope (_SB.ATKD)
    {
        Method (AGFN, 1, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (GNBF)
            }

            Store (AGFB (Arg0), Local0)
            Store (And (ShiftRight (Local0, 0x10), 0xFFFF), Local1)
            And (Local0, 0xFFFF, Local0)
            Store (GLEN (Arg0), Local2)
            If (LEqual (Local0, One))
            {
                GVER (Arg0, Local2)
                And (STAS, 0xFE, STAS)
            }

            If (LEqual (Local0, 0x02))
            {
                BSMI (Arg0)
                And (STAS, 0xFE, STAS)
            }

            AGLN (Arg0, Local0, Local1, Local2)
            OperationRegion (\PARM, SystemMemory, Arg0, 0x08)
            Field (PARM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                STAS,   8, 
                EROR,   8
            }

            If (LEqual (STAS, One))
            {
                Store (One, EROR)
                Or (STAS, 0x02, STAS)
            }

            And (STAS, 0xFE, STAS)
            Or (STAS, 0x80, STAS)
            Return (Zero)
        }

        Method (AGFB, 1, NotSerialized)
        {
            OperationRegion (\PAR, SystemMemory, Arg0, 0x08)
            Field (PAR, DWordAcc, NoLock, Preserve)
            {
                FUNC,   32, 
                Offset (0x06), 
                STAS,   8, 
                EROR,   8
            }

            Store (Zero, EROR)
            Store (One, STAS)
            Return (FUNC)
        }

        Method (GLEN, 1, NotSerialized)
        {
            OperationRegion (\PARL, SystemMemory, Arg0, 0x08)
            Field (PARL, DWordAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                LEN,    16
            }

            Return (LEN)
        }

        Method (GVER, 2, NotSerialized)
        {
            OperationRegion (\FGVR, SystemMemory, Arg0, Arg1)
            Field (FGVR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                APID,   16, 
                APRV,   32
            }

            If (LLess (Arg1, 0x0E))
            {
                Return (0x02)
            }

            If (LEqual (APID, One))
            {
                ^^PCI0.LPCB.HEC.PKEN (One)
            }

            Return (Zero)
        }

        Method (GENS, 1, NotSerialized)
        {
        }

        Method (GENW, 1, NotSerialized)
        {
            Store (Zero, RTCW)
        }

        Method (BSMI, 1, Serialized)
        {
            Store (Arg0, BIPA)
            ISMI (0xA1)
        }
    }

    Scope (_SB.ATKD)
    {
        Method (MF1X, 4, NotSerialized)
        {
            If (LNotEqual (And (Arg1, 0xF0), 0x10))
            {
                Return (Zero)
            }

            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            Store (One, Local0)
            If (LEqual (Arg1, 0x10))
            {
                Store (MF10 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x11))
            {
                Store (MF11 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x12))
            {
                Store (MF12 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x13))
            {
                Store (MF13 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x14))
            {
                Store (MF14 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x15))
            {
                Store (MF15 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x16))
            {
                Store (MF16 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x17))
            {
                Store (MF17 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x18))
            {
                Store (MF18 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x19))
            {
                Store (MF19 (Arg0, Arg3, Arg2), Local0)
            }

            If (LEqual (Arg1, 0x1A))
            {
                Store (MF1A (Arg0, Arg3, Arg2), Local0)
            }

            And (SM1X, 0xFE, SM1X)
            If (Local0)
            {
                Store (Local0, EM1X)
                Or (SM1X, 0x02, SM1X)
            }

            Or (SM1X, 0x80, SM1X)
            Return (Zero)
        }

        Method (MF10, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G10V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (SRTC (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G10V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F100, SystemMemory, Arg0, Arg1)
            Field (F100, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (SRTC, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F101, SystemMemory, Arg0, Arg1)
            Field (F101, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DLTM,   16
            }

            Store (DLTM, RTCW)
            Return (Zero)
        }

        Method (MF11, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G11V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GBAT (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (ASBR (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (ASBE (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x04))
            {
                Store (BTCR (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x80))
            {
                Store (GTSB (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x81))
            {
                Store (GPST (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x82))
            {
                Store (SBSM (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G11V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F110, SystemMemory, Arg0, Arg1)
            Field (F110, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GBAT, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F111, SystemMemory, Arg0, Arg1)
            Field (F111, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BTNM,   8, 
                BTTP,   8
            }

            Store (One, BTNM)
            Store (Zero, BTTP)
            Return (Zero)
        }

        Method (ASBR, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x30))
            {
                Return (0x02)
            }

            OperationRegion (\F112, SystemMemory, Arg0, Arg1)
            Field (F112, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BATN,   8, 
                BATA,   8, 
                REGS,   8, 
                BDAT,   16, 
                BLEN,   8, 
                BREV,   16, 
                BLK1,   32, 
                BLK2,   32, 
                BLK3,   32, 
                BLK4,   32, 
                BLK5,   32, 
                BLK6,   32, 
                BLK7,   32, 
                BLK8,   32
            }

            If (LGreaterEqual (BATN, One))
            {
                Return (0x11)
            }

            If (LEqual (BATA, Zero))
            {
                Store (^^PCI0.LPCB.HEC.SMBR (^^PCI0.LPCB.HEC.RDWD, ^^PCI0.LPCB.HEC.BADR, REGS, BATN), Local0)
                Store (DerefOf (Index (Local0, 0x02)), BDAT)
                Store (DerefOf (Index (Local0, Zero)), Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            If (LEqual (BATA, One))
            {
                Store (^^PCI0.LPCB.HEC.SMBW (^^PCI0.LPCB.HEC.WRWD, ^^PCI0.LPCB.HEC.BADR, REGS, BATN, 0x02, BDAT), Local0)
                Store (DerefOf (Index (Local0, Zero)), Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            If (LEqual (BATA, 0x02))
            {
                Name (BKUF, Buffer (0x20) {})
                Store (^^PCI0.LPCB.HEC.SMBR (^^PCI0.LPCB.HEC.RDBL, ^^PCI0.LPCB.HEC.BADR, REGS, BATN), Local0)
                Store (DerefOf (Index (Local0, 0x02)), BKUF)
                Store (DerefOf (Index (Local0, One)), BLEN)
                Store (DerefOf (Index (Local0, Zero)), Local2)
                CreateDWordField (BKUF, Zero, DAT1)
                CreateDWordField (BKUF, 0x04, DAT2)
                CreateDWordField (BKUF, 0x08, DAT3)
                CreateDWordField (BKUF, 0x0C, DAT4)
                CreateDWordField (BKUF, 0x10, DAT5)
                CreateDWordField (BKUF, 0x14, DAT6)
                CreateDWordField (BKUF, 0x18, DAT7)
                CreateDWordField (BKUF, 0x1C, DAT8)
                Store (DerefOf (Index (Local0, 0x02)), BKUF)
                Store (DAT1, BLK1)
                Store (DAT2, BLK2)
                Store (DAT3, BLK3)
                Store (DAT4, BLK4)
                Store (DAT5, BLK5)
                Store (DAT6, BLK6)
                Store (DAT7, BLK7)
                Store (DAT8, BLK8)
                Store (DerefOf (Index (Local0, One)), BLEN)
                Store (DerefOf (Index (Local0, Zero)), Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            Return (0x10)
        }

        Method (ASBE, 2, Serialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F113, SystemMemory, Arg0, Arg1)
            Field (F113, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BATN,   8, 
                BATA,   8, 
                REGS,   8, 
                BDAT,   8
            }

            If (LGreater (BATN, One))
            {
                Return (0x11)
            }

            If (LEqual (BATA, Zero))
            {
                Store (^^PCI0.LPCB.HEC.RBEP (REGS), Local2)
                And (Local2, 0xFF, Local3)
                Store (Local3, BDAT)
                ShiftRight (Local2, 0x08, Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            If (LEqual (BATA, One))
            {
                Store (^^PCI0.LPCB.HEC.WBEP (REGS, BDAT), Local2)
                And (Local2, 0x1F, Local2)
                If (Local2)
                {
                    Add (Local2, 0x10, Local2)
                }

                Return (Local2)
            }

            Return (0x10)
        }

        Method (BTCR, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x09))
            {
                Return (0x02)
            }

            OperationRegion (\F114, SystemMemory, Arg0, Arg1)
            Field (F114, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BCDC,   8
            }

            SBTL (BCDC)
            Return (Zero)
        }

        Method (GTSB, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0F))
            {
                Return (0x02)
            }

            OperationRegion (\F118, SystemMemory, Arg0, Arg1)
            Field (F118, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BAST,   16
            }

            Store (^^PCI0.LPCB.HEC.SMBR (^^PCI0.LPCB.HEC.RDWD, ^^PCI0.LPCB.HEC.BADR, 0x16, Zero), Local0)
            Store (DerefOf (Index (Local0, 0x02)), BAST)
            Store (DerefOf (Index (Local0, Zero)), Local1)
            And (Local1, 0x1F, Local1)
            If (Local1)
            {
                Add (Local1, 0x10, Local1)
            }

            Return (Local1)
        }

        Method (GPST, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0F))
            {
                Return (0x02)
            }

            OperationRegion (\F119, SystemMemory, Arg0, Arg1)
            Field (F119, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SORC,   8, 
                GPCT,   8
            }

            If (Or (LEqual (SORC, Zero), LGreater (SORC, 0x03)))
            {
                Return (One)
            }

            If (LEqual (SORC, One))
            {
                Store (^^PCI0.LPCB.HEC.RPIN (0x02, 0x04), GPCT)
            }
            ElseIf (LEqual (SORC, 0x02))
            {
                Store (^^PCI0.LPCB.HEC.RPIN (0x02, 0x06), Local0)
                If (Local0)
                {
                    Store (Zero, GPCT)
                }
                Else
                {
                    Store (One, GPCT)
                }
            }
            ElseIf (LEqual (SORC, 0x03))
            {
                Store (^^PCI0.LPCB.HEC.RPIN (0x04, 0x06), Local0)
                If (Local0)
                {
                    Store (Zero, GPCT)
                }
                Else
                {
                    Store (One, GPCT)
                }
            }

            Return (Zero)
        }

        Method (SBSM, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x10))
            {
                Return (0x02)
            }

            OperationRegion (\F1A3, SystemMemory, Arg0, Arg1)
            Field (F1A3, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                EABL,   8
            }

            If (LEqual (EABL, One))
            {
                PRJB ()
            }

            Return (Zero)
        }

        Method (MF12, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G12V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GLDI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (LDCR (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G12V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F120, SystemMemory, Arg0, Arg1)
            Field (F120, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GLDI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x10))
            {
                Return (0x02)
            }

            OperationRegion (\F121, SystemMemory, Arg0, Arg1)
            Field (F121, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LDI0,   32, 
                LDI1,   32
            }

            Store (Zero, Local0)
            Or (Local0, 0x10, Local0)
            Or (Local0, 0x20, Local0)
            Store (Local0, LDI0)
            Return (Zero)
        }

        Method (LDCR, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0B))
            {
                Return (0x02)
            }

            OperationRegion (\F122, SystemMemory, Arg0, Arg1)
            Field (F122, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LDNM,   8, 
                LCRT,   8
            }

            If (LEqual (LDNM, 0x04))
            {
                WLED (LCRT)
                Return (Zero)
            }

            If (LEqual (LDNM, 0x05))
            {
                BLED (LCRT)
                Return (Zero)
            }

            Return (0x10)
        }

        Method (MF13, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G13V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GTSI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (GTSV (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (GVSN (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x04))
            {
                Store (GVSV (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x05))
            {
                Store (GFNN (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x06))
            {
                Store (GFNS (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x07))
            {
                Store (SFNS (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G13V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F130, SystemMemory, Arg0, Arg1)
            Field (F130, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GTSI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F131, SystemMemory, Arg0, Arg1)
            Field (F131, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                THRI,   32
            }

            Store (Zero, Local0)
            Or (Local0, One, Local0)
            If (LGreaterEqual (CPUN, One))
            {
                Or (Local0, 0x0100, Local0)
            }

            If (LGreaterEqual (CPUN, 0x02))
            {
                Or (Local0, 0x0200, Local0)
            }

            If (LGreaterEqual (CPUN, 0x03))
            {
                Or (Local0, 0x0400, Local0)
            }

            If (LGreaterEqual (CPUN, 0x04))
            {
                Or (Local0, 0x0800, Local0)
            }

            Store (Local0, THRI)
            Return (Zero)
        }

        Method (GTSV, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F132, SystemMemory, Arg0, Arg1)
            Field (F132, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                TSNM,   8, 
                TSVL,   8, 
                TSST,   8
            }

            Store (Zero, TSST)
            If (LEqual (TSNM, Zero))
            {
                Store (\_TZ.RTMP (), TSVL)
                Return (Zero)
            }

            If (LEqual (TSNM, 0x08))
            {
                BSMI (Arg0)
                Return (Zero)
            }

            If (LEqual (TSNM, 0x09))
            {
                BSMI (Arg0)
                Return (Zero)
            }

            If (LEqual (TSNM, 0x0A))
            {
                BSMI (Arg0)
                Return (Zero)
            }

            If (LEqual (TSNM, 0x0B))
            {
                BSMI (Arg0)
                Return (Zero)
            }

            Return (0x10)
        }

        Method (GVSN, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x09))
            {
                Return (0x02)
            }

            OperationRegion (\F133, SystemMemory, Arg0, Arg1)
            Field (F133, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                NMVS,   8
            }

            Store (Zero, NMVS)
            Return (Zero)
        }

        Method (GVSV, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0B))
            {
                Return (0x02)
            }

            OperationRegion (\F134, SystemMemory, Arg0, Arg1)
            Field (F134, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VSNM,   8, 
                VSVL,   16
            }

            If (LGreater (VSNM, Zero))
            {
                Return (0x10)
            }

            Return (Zero)
        }

        Method (GFNN, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x09))
            {
                Return (0x02)
            }

            OperationRegion (\F135, SystemMemory, Arg0, Arg1)
            Field (F135, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                NMFN,   32
            }

            Store (One, NMFN)
            Return (Zero)
        }

        Method (GFNS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0D))
            {
                Return (0x02)
            }

            OperationRegion (\F136, SystemMemory, Arg0, Arg1)
            Field (F136, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                FNNM,   8, 
                GFNS,   32
            }

            If (Or (LEqual (FNNM, Zero), LGreater (FNNM, One)))
            {
                Return (0x10)
            }

            BSMI (Arg0)
            Return (Zero)
        }

        Method (SFNS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F137, SystemMemory, Arg0, Arg1)
            Field (F137, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                FNNB,   8, 
                FNSP,   8
            }

            If (LGreater (FNNB, One))
            {
                Return (0x10)
            }

            ^^PCI0.LPCB.HEC.SFNV (FNNB, FNSP)
            Return (Zero)
        }

        Method (MF14, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G14V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GNBT (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (GBTS (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G14V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F140, SystemMemory, Arg0, Arg1)
            Field (F140, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GNBT, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x09))
            {
                Return (0x02)
            }

            OperationRegion (\F141, SystemMemory, Arg0, Arg1)
            Field (F141, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                NBBT,   8
            }

            Store (0x05, NBBT)
            Return (Zero)
        }

        Method (GBTS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F142, SystemMemory, Arg0, Arg1)
            Field (F142, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BTNM,   8, 
                BTST,   8
            }

            Name (BTTB, Package (0x05)
            {
                Package (0x04)
                {
                    Zero, 
                    0x0C, 
                    Zero, 
                    Zero
                }, 

                Package (0x04)
                {
                    Zero, 
                    0x0D, 
                    Zero, 
                    Zero
                }, 

                Package (0x04)
                {
                    Zero, 
                    0x0E, 
                    Zero, 
                    Zero
                }, 

                Package (0x04)
                {
                    Zero, 
                    0x0F, 
                    Zero, 
                    Zero
                }, 

                Package (0x04)
                {
                    Zero, 
                    0x15, 
                    Zero, 
                    Zero
                }
            })
            If (LGreater (BTNM, 0x05))
            {
                Return (0x10)
            }

            Store (BTNM, Local0)
            Decrement (Local0)
            Store (DerefOf (Index (BTTB, Local0)), Local1)
            If (LEqual (DerefOf (Index (Local1, 0x02)), Zero))
            {
                Store (^^PCI0.LPCB.HEC.RPIN (DerefOf (Index (Local1, Zero)), DerefOf (Index (Local1, One))), Local2)
            }

            If (LEqual (DerefOf (Index (Local1, One)), One))
            {
                Store (RGPL (DerefOf (Index (Local1, Zero)), One), Local2)
            }

            If (LEqual (DerefOf (Index (Local1, One)), 0x03)) {}
            If (LEqual (DerefOf (Index (Local1, 0x02)), Local2))
            {
                Store (Zero, BTST)
            }
            Else
            {
                Store (One, BTST)
            }

            Return (Zero)
        }

        Method (MF15, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G15V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GLDB (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (SLDB (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (GDPI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x04))
            {
                Store (SODP (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G15V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F150, SystemMemory, Arg0, Arg1)
            Field (F150, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GLDB, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F151, SystemMemory, Arg0, Arg1)
            Field (F151, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LCDB,   8, 
                MLDB,   8
            }

            Store (GPLV (), LCDB)
            Store (0x0A, MLDB)
            Return (Zero)
        }

        Method (SLDB, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F152, SystemMemory, Arg0, Arg1)
            Field (F152, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LCDL,   8, 
                LTPE,   8
            }

            If (LEqual (LTPE, Zero))
            {
                If (LGreaterEqual (LCDL, 0x0B))
                {
                    Return (0x10)
                }

                SPLV (LCDL)
                Return (Zero)
            }

            If (LEqual (LTPE, One))
            {
                ^^PCI0.LPCB.HEC.SBRV (LCDL)
                Return (Zero)
            }

            Return (0x11)
        }

        Method (GDPI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x10))
            {
                Return (0x02)
            }

            OperationRegion (\F153, SystemMemory, Arg0, Arg1)
            Field (F153, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ODPI,   32, 
                ODPC,   32, 
                ODAV,   32
            }

            Store (Zero, Local0)
            Or (Local0, One, Local0)
            Or (Local0, 0x02, Local0)
            Or (Local0, 0x10, Local0)
            Store (Local0, ODPI)
            If (^^PCI0.GFX0.PRST ())
            {
                ^^PCI0.GFX0.GETD ()
                Store (ACTD, Local0)
                Store (^^PCI0.GFX0.MD2A (Local0), ODAV)
                Store (AVLD, Local1)
                Store (^^PCI0.GFX0.MD2A (Local1), ODPC)
            }

            Return (Zero)
        }

        Method (SODP, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F154, SystemMemory, Arg0, Arg1)
            Field (F154, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ODPM,   32
            }

            Store (Zero, Local0)
            Or (Local0, One, Local0)
            Or (Local0, 0x02, Local0)
            Or (Local0, 0x10, Local0)
            And (ODPM, Local0, Local0)
            If (LEqual (Local0, ODPM))
            {
                SDSP (ODPM)
                Return (Zero)
            }

            Return (0x10)
        }

        Method (MF16, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G16V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (SFBD (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (LCMD (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (BSFN (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x04))
            {
                Store (PSSF (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G16V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F160, SystemMemory, Arg0, Arg1)
            Field (F160, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (SFBD, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F161, SystemMemory, Arg0, Arg1)
            Field (F161, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                NXBD,   8
            }

            BSMI (Arg0)
            Return (Zero)
        }

        Method (LCMD, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            BSMI (Arg0)
            Return (Zero)
        }

        Method (BSFN, 2, NotSerialized)
        {
            BSMI (Arg0)
            Return (Zero)
        }

        Method (PSSF, 2, NotSerialized)
        {
            BSMI (Arg0)
            Return (Zero)
        }

        Method (MF17, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G17V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GMDL (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (GBSI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (GECI (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G17V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F170, SystemMemory, Arg0, Arg1)
            Field (F170, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GMDL, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x19))
            {
                Return (0x02)
            }

            OperationRegion (\F171, SystemMemory, Arg0, Arg1)
            Field (F171, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                MLEN,   8, 
                MDL1,   32, 
                MDL2,   32, 
                MDL3,   32, 
                MDL4,   32
            }

            Store (Zero, MDL1)
            Store (Zero, MDL2)
            Store (Zero, MDL3)
            Store (Zero, MDL4)
            Name (BBUF, Buffer (0x10) {})
            CreateDWordField (BBUF, Zero, DAT1)
            CreateDWordField (BBUF, 0x04, DAT2)
            CreateDWordField (BBUF, 0x08, DAT3)
            CreateDWordField (BBUF, 0x0C, DAT4)
            Store (GBMN (), Local0)
            Store (SizeOf (Local0), MLEN)
            Store (GBMN (), BBUF)
            Store (DAT1, MDL1)
            Store (DAT2, MDL2)
            Store (DAT3, MDL3)
            Store (DAT4, MDL4)
            Return (Zero)
        }

        Method (GBSI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x19))
            {
                Return (0x02)
            }

            OperationRegion (\F172, SystemMemory, Arg0, Arg1)
            Field (F172, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BLEN,   8, 
                BDL1,   32, 
                BDL2,   32, 
                BDL3,   32, 
                BDL4,   24, 
                YEAR,   32, 
                MON,    16, 
                DAY,    16
            }

            Store (Zero, BDL1)
            Store (Zero, BDL2)
            Store (Zero, BDL3)
            Store (Zero, BDL4)
            Name (BBUF, Buffer (0x10) {})
            CreateDWordField (BBUF, Zero, DAT1)
            CreateDWordField (BBUF, 0x04, DAT2)
            CreateDWordField (BBUF, 0x08, DAT3)
            CreateDWordField (BBUF, 0x0C, DAT4)
            Store (GBRV (), Local0)
            Store (SizeOf (Local0), BLEN)
            Store (GBRV (), BBUF)
            Store (DAT1, BDL1)
            Store (DAT2, BDL2)
            Store (DAT3, BDL3)
            Store (DAT4, BDL4)
            CreateWordField (BBUF, Zero, WRD0)
            Store ("2013", BBUF)
            Store (DAT1, YEAR)
            Store ("08", BBUF)
            Store (WRD0, MON)
            Store ("14", BBUF)
            Store (WRD0, DAY)
            Return (Zero)
        }

        Method (GECI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x19))
            {
                Return (0x02)
            }

            OperationRegion (\F173, SystemMemory, Arg0, Arg1)
            Field (F173, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ELEN,   8, 
                EDL1,   32, 
                EDL2,   32, 
                EDL3,   32, 
                EDL4,   32
            }

            Store (Zero, EDL1)
            Store (Zero, EDL2)
            Store (Zero, EDL3)
            Store (Zero, EDL4)
            BSMI (Arg0)
            Return (Zero)
        }

        Method (MF18, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G18V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GDVI (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (GDVS (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (SDPW (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G18V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F180, SystemMemory, Arg0, Arg1)
            Field (F180, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GDVI, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x18))
            {
                Return (0x02)
            }

            OperationRegion (\F181, SystemMemory, Arg0, Arg1)
            Field (F181, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                LDI0,   32, 
                LDI1,   32
            }

            Store (Zero, LDI0)
            Return (Zero)
        }

        Method (GDVS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F182, SystemMemory, Arg0, Arg1)
            Field (F182, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DNUM,   8, 
                DSTS,   8
            }

            ShiftLeft (One, DNUM, Local0)
            If (LEqual (And (Local0, Zero), Zero))
            {
                Return (0x10)
            }

            Return (Zero)
        }

        Method (SDPW, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F183, SystemMemory, Arg0, Arg1)
            Field (F183, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DNUM,   8, 
                DCTR,   8
            }

            ShiftLeft (One, DNUM, Local0)
            If (LEqual (And (Local0, Zero), Zero))
            {
                Return (0x10)
            }

            If (LGreater (DCTR, One))
            {
                Return (0x11)
            }

            Return (Zero)
        }

        Method (MF19, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G19V (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (ACMS (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (CSIN (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G19V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F190, SystemMemory, Arg0, Arg1)
            Field (F190, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (ACMS, 2, NotSerialized)
        {
            BSMI (Arg0)
            Return (Zero)
        }

        Method (CSIN, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F192, SystemMemory, Arg0, Arg1)
            Field (F192, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                CMAX,   16
            }

            Store (0x7F, CMAX)
            Return (Zero)
        }

        Method (MF1A, 3, NotSerialized)
        {
            Store (One, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G1AV (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (GWDS (Arg0, Arg1), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (SWDS (Arg0, Arg1), Local0)
            }

            Return (Local0)
        }

        Method (G1AV, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F1A0, SystemMemory, Arg0, Arg1)
            Field (F1A0, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (GWDS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x10))
            {
                Return (0x02)
            }

            OperationRegion (\F1A1, SystemMemory, Arg0, Arg1)
            Field (F1A1, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                WDS0,   32, 
                WDS1,   32
            }

            Store (Zero, Local0)
            Store (Zero, Local1)
            Store (Zero, Local2)
            Store (RGPL (0x1C, One), Local1)
            If (Local1)
            {
                Or (Local0, 0x08, Local0)
            }
            Else
            {
                And (Local0, 0xFFF7, Local0)
            }

            If (BTDP)
            {
                Or (Local0, 0x10, Local0)
            }

            Store (RGPL (0x30, One), Local1)
            If (Local1)
            {
                Or (Local0, 0x20, Local0)
            }
            Else
            {
                And (Local0, 0xFFDF, Local0)
            }

            If (WWDP)
            {
                Or (Local0, 0x40, Local0)
            }

            If (WMDP)
            {
                Or (Local0, 0x0100, Local0)
            }

            Store (Local0, WDS0)
            Return (Zero)
        }

        Method (SWDS, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (\F1A2, SystemMemory, Arg0, Arg1)
            Field (F1A2, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SWD0,   8, 
                SWD1,   8
            }

            Store (SWD0, Local0)
            And (Local0, One, Local1)
            ShiftRight (Local1, Zero, Local1)
            OWLD (Local1)
            And (Local0, 0x02, Local1)
            ShiftRight (Local1, One, Local1)
            OBTD (Local1)
            Return (Zero)
        }
    }

    Scope (_SB.ATKD)
    {
        Method (AGLN, 4, NotSerialized)
        {
            CPUX (Arg0, Arg1, Arg2, Arg3)
            MF1X (Arg0, Arg1, Arg2, Arg3)
            MF1F (Arg0, Arg1, Arg2, Arg3)
            MF42 (Arg0, Arg1, Arg2, Arg3)
            ^^PCI0.LPCB.HEC.MF63 (Arg0, Arg1, Arg2, Arg3)
            ^^PCI0.LPCB.HEC.MF30 (Arg0, Arg1, Arg2, Arg3)
        }
    }

    Scope (_SB.ATKD)
    {
        Method (GBRV, 0, NotSerialized)
        {
            Store ("208", Local0)
            Return (Local0)
        }

        Method (GBMN, 0, NotSerialized)
        {
            Store ("X750JB", Local0)
            Return (Local0)
        }
    }

    Scope (WMI0)
    {
        Name (_WDG, Buffer (0x01B8)
        {
            /* 0000 */  0x00, 0x24, 0x14, 0x39, 0xA3, 0xC6, 0xFA, 0x40,
            /* 0008 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 0010 */  0x30, 0x30, 0x01, 0x01, 0x00, 0x24, 0x14, 0x49,
            /* 0018 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 0020 */  0x52, 0x83, 0x41, 0x00, 0x30, 0x31, 0x01, 0x01,
            /* 0028 */  0x00, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,
            /* 0030 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 0038 */  0x30, 0x32, 0x01, 0x01, 0x01, 0x24, 0x14, 0x49,
            /* 0040 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 0048 */  0x52, 0x83, 0x41, 0x00, 0x31, 0x31, 0x01, 0x01,
            /* 0050 */  0x01, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,
            /* 0058 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 0060 */  0x31, 0x32, 0x01, 0x01, 0x02, 0x24, 0x14, 0x49,
            /* 0068 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 0070 */  0x52, 0x83, 0x41, 0x00, 0x32, 0x31, 0x01, 0x01,
            /* 0078 */  0x02, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,
            /* 0080 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 0088 */  0x32, 0x32, 0x01, 0x01, 0x03, 0x24, 0x14, 0x49,
            /* 0090 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 0098 */  0x52, 0x83, 0x41, 0x00, 0x33, 0x31, 0x01, 0x01,
            /* 00A0 */  0x03, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,
            /* 00A8 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 00B0 */  0x33, 0x32, 0x01, 0x01, 0x04, 0x24, 0x14, 0x49,
            /* 00B8 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 00C0 */  0x52, 0x83, 0x41, 0x00, 0x34, 0x31, 0x01, 0x01,
            /* 00C8 */  0x04, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,
            /* 00D0 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 00D8 */  0x34, 0x32, 0x01, 0x01, 0x05, 0x24, 0x14, 0x49,
            /* 00E0 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 00E8 */  0x52, 0x83, 0x41, 0x00, 0x35, 0x31, 0x01, 0x01,
            /* 00F0 */  0x05, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,
            /* 00F8 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 0100 */  0x35, 0x32, 0x01, 0x01, 0x06, 0x24, 0x14, 0x49,
            /* 0108 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 0110 */  0x52, 0x83, 0x41, 0x00, 0x36, 0x31, 0x01, 0x01,
            /* 0118 */  0x06, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,
            /* 0120 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 0128 */  0x36, 0x32, 0x01, 0x01, 0x07, 0x24, 0x14, 0x49,
            /* 0130 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 0138 */  0x52, 0x83, 0x41, 0x00, 0x37, 0x31, 0x01, 0x01,
            /* 0140 */  0x07, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,
            /* 0148 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 0150 */  0x37, 0x32, 0x01, 0x01, 0x00, 0x24, 0x14, 0x59,
            /* 0158 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 0160 */  0x52, 0x83, 0x41, 0x00, 0x80, 0x00, 0x01, 0x08,
            /* 0168 */  0x00, 0x24, 0x14, 0x69, 0xA3, 0xC6, 0xFA, 0x40,
            /* 0170 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 0178 */  0x30, 0x35, 0x01, 0x02, 0x00, 0x24, 0x14, 0x79,
            /* 0180 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,
            /* 0188 */  0x52, 0x83, 0x41, 0x00, 0x30, 0x36, 0x01, 0x02,
            /* 0190 */  0x00, 0x24, 0x14, 0x89, 0xA3, 0xC6, 0xFA, 0x40,
            /* 0198 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,
            /* 01A0 */  0x30, 0x37, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,
            /* 01A8 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
            /* 01B0 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x01 
        })
        Name (EVCD, Zero)
        Method (WQ00, 1, NotSerialized)
        {
            Return (EVCD)
        }

        OperationRegion (\WMIA, SystemMemory, \_SB.WMIB, 0x9000)
        Field (WMIA, AnyAcc, NoLock, Preserve)
        {
            WAG1,   2048, 
            WAG2,   2048, 
            WAG3,   2048, 
            WAG4,   2048, 
            WAG5,   2048, 
            WAG6,   2048, 
            WAG7,   2048, 
            WAG8,   2048, 
            Offset (0x1000), 
            WPD1,   32768, 
            WPD2,   32768, 
            WPD3,   32768, 
            WPD4,   32768, 
            WPD5,   32768, 
            WPD6,   32768, 
            WPD7,   32768, 
            WPD8,   32768
        }

        Method (WQ01, 1, NotSerialized)
        {
            Return (WAG1)
        }

        Method (WS01, 2, NotSerialized)
        {
            Store (Arg1, WAG1)
            Return (Zero)
        }

        Method (WQ02, 1, NotSerialized)
        {
            Return (WPD1)
        }

        Method (WS02, 2, NotSerialized)
        {
            Store (Arg1, WPD1)
            Return (Zero)
        }

        Method (WQ11, 1, NotSerialized)
        {
            Return (WAG2)
        }

        Method (WS11, 2, NotSerialized)
        {
            Store (Arg1, WAG2)
            Return (Zero)
        }

        Method (WQ12, 1, NotSerialized)
        {
            Return (WPD2)
        }

        Method (WS12, 2, NotSerialized)
        {
            Store (Arg1, WPD2)
            Return (Zero)
        }

        Method (WQ21, 1, NotSerialized)
        {
            Return (WAG3)
        }

        Method (WS21, 2, NotSerialized)
        {
            Store (Arg1, WAG3)
            Return (Zero)
        }

        Method (WQ22, 1, NotSerialized)
        {
            Return (WPD3)
        }

        Method (WS22, 2, NotSerialized)
        {
            Store (Arg1, WPD3)
            Return (Zero)
        }

        Method (WQ31, 1, NotSerialized)
        {
            Return (WAG4)
        }

        Method (WS31, 2, NotSerialized)
        {
            Store (Arg1, WAG4)
            Return (Zero)
        }

        Method (WQ32, 1, NotSerialized)
        {
            Return (WPD4)
        }

        Method (WS32, 2, NotSerialized)
        {
            Store (Arg1, WPD4)
            Return (Zero)
        }

        Method (WQ41, 1, NotSerialized)
        {
            Return (WAG5)
        }

        Method (WS41, 2, NotSerialized)
        {
            Store (Arg1, WAG5)
            Return (Zero)
        }

        Method (WQ42, 1, NotSerialized)
        {
            Return (WPD5)
        }

        Method (WS42, 2, NotSerialized)
        {
            Store (Arg1, WPD5)
            Return (Zero)
        }

        Method (WQ51, 1, NotSerialized)
        {
            Return (WAG6)
        }

        Method (WS51, 2, NotSerialized)
        {
            Store (Arg1, WAG6)
            Return (Zero)
        }

        Method (WQ52, 1, NotSerialized)
        {
            Return (WPD6)
        }

        Method (WS52, 2, NotSerialized)
        {
            Store (Arg1, WPD6)
            Return (Zero)
        }

        Method (WQ61, 1, NotSerialized)
        {
            Return (WAG7)
        }

        Method (WS61, 2, NotSerialized)
        {
            Store (Arg1, WAG7)
            Return (Zero)
        }

        Method (WQ62, 1, NotSerialized)
        {
            Return (WPD7)
        }

        Method (WS62, 2, NotSerialized)
        {
            Store (Arg1, WPD7)
            Return (Zero)
        }

        Method (WQ71, 1, NotSerialized)
        {
            Return (WAG8)
        }

        Method (WS71, 2, NotSerialized)
        {
            Store (Arg1, WAG8)
            Return (Zero)
        }

        Method (WQ72, 1, NotSerialized)
        {
            Return (WPD8)
        }

        Method (WS72, 2, NotSerialized)
        {
            Store (Arg1, WPD8)
            Return (Zero)
        }

        Method (WM05, 3, NotSerialized)
        {
            CreateDWordField (Arg2, Zero, WMA5)
            If (LEqual (WMA5, One))
            {
                WMIG (\_SB.WMIB, Add (\_SB.WMIB, 0x1000), One)
                Return (Zero)
            }

            If (LEqual (WMA5, 0x02))
            {
                WMIG (Add (\_SB.WMIB, 0x0100), Add (\_SB.WMIB, 0x2000), 0x02)
                Return (Zero)
            }

            If (LEqual (WMA5, 0x03))
            {
                WMIG (Add (\_SB.WMIB, 0x0200), Add (\_SB.WMIB, 0x3000), 0x03)
                Return (Zero)
            }

            If (LEqual (WMA5, 0x04))
            {
                WMIG (Add (\_SB.WMIB, 0x0300), Add (\_SB.WMIB, 0x4000), 0x04)
                Return (Zero)
            }

            If (LEqual (WMA5, 0x05))
            {
                WMIG (Add (\_SB.WMIB, 0x0400), Add (\_SB.WMIB, 0x5000), 0x05)
                Return (Zero)
            }

            If (LEqual (WMA5, 0x06))
            {
                WMIG (Add (\_SB.WMIB, 0x0500), Add (\_SB.WMIB, 0x6000), 0x06)
                Return (Zero)
            }

            If (LEqual (WMA5, 0x07))
            {
                WMIG (Add (\_SB.WMIB, 0x0600), Add (\_SB.WMIB, 0x7000), 0x07)
                Return (Zero)
            }

            If (LEqual (WMA5, 0x08))
            {
                WMIG (Add (\_SB.WMIB, 0x0700), Add (\_SB.WMIB, 0x8000), 0x08)
                Return (Zero)
            }

            Return (Zero)
        }

        Method (WM06, 3, Serialized)
        {
            CreateDWordField (Arg2, Zero, WM6A)
            Store (INIT (WM6A), Local0)
            Return (Local0)
        }

        Method (WM07, 3, Serialized)
        {
            CreateDWordField (Arg2, Zero, WM7A)
            Store (WDOG (WM7A), Local0)
            Return (Local0)
        }

        Method (NTFY, 1, Serialized)
        {
            If (LNot (QNTY (Arg0)))
            {
                Return (Zero)
            }

            Store (Arg0, EVCD)
            Notify (WMI0, 0x80)
        }

        Method (WSMI, 1, Serialized)
        {
            Store (Arg0, \_SB.WMIS)
            ISMI (0xE3)
        }

        Name (WQBA, Buffer (0x0914)
        {
            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
            /* 0008 */  0x04, 0x09, 0x00, 0x00, 0x50, 0x67, 0x00, 0x00,
            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
            /* 0018 */  0x28, 0xC7, 0xB2, 0x00, 0x01, 0x06, 0x18, 0x42,
            /* 0020 */  0x10, 0x2B, 0x10, 0x92, 0x2B, 0x81, 0x42, 0x04,
            /* 0028 */  0x0A, 0x44, 0x24, 0x81, 0x30, 0x28, 0x0D, 0x20,
            /* 0030 */  0x92, 0x03, 0x21, 0x17, 0x4C, 0x4C, 0x80, 0x08,
            /* 0038 */  0x08, 0x79, 0x15, 0x60, 0x53, 0x80, 0x49, 0x10,
            /* 0040 */  0xF5, 0xEF, 0x0F, 0x51, 0x12, 0x1C, 0x4A, 0x08,
            /* 0048 */  0x84, 0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00,
            /* 0050 */  0xC3, 0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31,
            /* 0058 */  0x24, 0x95, 0x06, 0x4E, 0x09, 0x2C, 0x05, 0x42,
            /* 0060 */  0x42, 0x05, 0x28, 0x17, 0xE0, 0x5B, 0x80, 0x76,
            /* 0068 */  0x44, 0x49, 0x16, 0xB0, 0xA3, 0x30, 0x09, 0x3C,
            /* 0070 */  0x8A, 0xC8, 0x46, 0xE3, 0xD0, 0xD8, 0x61, 0x58,
            /* 0078 */  0x26, 0x98, 0x06, 0x71, 0x18, 0x65, 0x23, 0x8B,
            /* 0080 */  0xC0, 0x13, 0xEA, 0x74, 0x74, 0x05, 0x08, 0x13,
            /* 0088 */  0x20, 0x1E, 0x55, 0x18, 0xCD, 0x41, 0x91, 0x08,
            /* 0090 */  0xD0, 0x28, 0x31, 0x63, 0x22, 0xB0, 0x9D, 0x63,
            /* 0098 */  0x6B, 0x14, 0xA7, 0x51, 0xB8, 0x00, 0xE9, 0x18,
            /* 00A0 */  0x1A, 0xC1, 0x71, 0x85, 0xF7, 0xC8, 0x8E, 0x90,
            /* 00A8 */  0x59, 0x1C, 0x8B, 0x20, 0x43, 0x85, 0xEB, 0x10,
            /* 00B0 */  0x4E, 0x73, 0x32, 0xC8, 0x89, 0x9C, 0x49, 0xEC,
            /* 00B8 */  0x08, 0x05, 0x09, 0xB0, 0x8E, 0x21, 0xA4, 0x58,
            /* 00C0 */  0x51, 0x6A, 0xC6, 0xD3, 0x0C, 0x82, 0x34, 0x0A,
            /* 00C8 */  0xA5, 0xC9, 0x79, 0x00, 0x61, 0xC2, 0xC3, 0x20,
            /* 00D0 */  0x30, 0xFE, 0x11, 0x61, 0x64, 0x40, 0xC8, 0x33,
            /* 00D8 */  0xB2, 0x86, 0x6A, 0x02, 0xBB, 0x17, 0xE0, 0x6C,
            /* 00E0 */  0x6A, 0x32, 0x36, 0x39, 0x29, 0x9B, 0x1D, 0x41,
            /* 00E8 */  0x68, 0x0B, 0x5E, 0xDA, 0x04, 0x18, 0x04, 0x13,
            /* 00F0 */  0x4A, 0x24, 0x0F, 0xE5, 0x78, 0xA2, 0x54, 0x88,
            /* 00F8 */  0xA4, 0xF1, 0xC5, 0x88, 0x52, 0x1C, 0x8A, 0x60,
            /* 0100 */  0x23, 0xB6, 0x86, 0x21, 0x98, 0x98, 0x21, 0xE3,
            /* 0108 */  0x07, 0xB7, 0xFD, 0x83, 0x01, 0x53, 0x00, 0xD1,
            /* 0110 */  0x02, 0x88, 0x22, 0x8D, 0x06, 0x75, 0x18, 0x48,
            /* 0118 */  0xF0, 0x70, 0xE0, 0x71, 0x9E, 0xD6, 0xF9, 0x1D,
            /* 0120 */  0xD7, 0x41, 0x04, 0x39, 0xE1, 0xE3, 0xAA, 0xF3,
            /* 0128 */  0x54, 0x40, 0x46, 0xC6, 0xFE, 0xFF, 0x58, 0x09,
            /* 0130 */  0x3A, 0x38, 0x26, 0x40, 0x71, 0x0D, 0xA8, 0x69,
            /* 0138 */  0x3E, 0x1D, 0xB0, 0x81, 0x86, 0xC3, 0x0C, 0xD1,
            /* 0140 */  0xA3, 0x0D, 0x77, 0x02, 0x87, 0xC8, 0x00, 0x3D,
            /* 0148 */  0xA2, 0x07, 0x03, 0xEC, 0x10, 0x4F, 0xE6, 0x25,
            /* 0150 */  0xA0, 0x54, 0x01, 0x66, 0x4F, 0x08, 0x9A, 0x76,
            /* 0158 */  0x82, 0xE3, 0xF1, 0x71, 0xC0, 0xF3, 0x39, 0xE1,
            /* 0160 */  0x04, 0x96, 0x3F, 0x08, 0xD4, 0xC8, 0x0C, 0xED,
            /* 0168 */  0x71, 0x9E, 0xD6, 0x5B, 0x81, 0x8F, 0x00, 0x26,
            /* 0170 */  0xB0, 0x58, 0x08, 0x6D, 0x52, 0xE3, 0x01, 0x02,
            /* 0178 */  0x8A, 0x0F, 0x05, 0x42, 0x78, 0x75, 0xF0, 0x7C,
            /* 0180 */  0x4D, 0x30, 0x32, 0x84, 0x9C, 0x8C, 0x07, 0x35,
            /* 0188 */  0x0A, 0x83, 0xD6, 0x0A, 0xAE, 0x9B, 0x40, 0x02,
            /* 0190 */  0x47, 0x84, 0xD0, 0x67, 0xC3, 0xA2, 0x86, 0x4D,
            /* 0198 */  0x8F, 0x16, 0xFC, 0x54, 0xC1, 0x20, 0xCF, 0xE0,
            /* 01A0 */  0x11, 0xC0, 0x23, 0x39, 0x21, 0x1F, 0x3E, 0x3C,
            /* 01A8 */  0x30, 0xF8, 0xB3, 0xF0, 0x91, 0x02, 0x1C, 0x1E,
            /* 01B0 */  0xC1, 0x84, 0xF3, 0x0A, 0x01, 0x6B, 0xA4, 0xF0,
            /* 01B8 */  0x6F, 0x11, 0x46, 0xF6, 0xA9, 0xE1, 0xB5, 0x21,
            /* 01C0 */  0x81, 0x0F, 0x1E, 0x81, 0xB1, 0x43, 0xB5, 0x5F,
            /* 01C8 */  0x01, 0x08, 0xC1, 0xA3, 0x3D, 0x0A, 0x3C, 0x7B,
            /* 01D0 */  0x44, 0x78, 0xDC, 0xC0, 0xFC, 0xFF, 0x8F, 0x1B,
            /* 01D8 */  0xB0, 0x09, 0x8A, 0x1C, 0x20, 0x7A, 0x0C, 0xFC,
            /* 01E0 */  0x04, 0x71, 0x0A, 0xF1, 0xC3, 0x1F, 0xC3, 0x11,
            /* 01E8 */  0x45, 0x89, 0x7C, 0x48, 0x3E, 0x9C, 0x18, 0xE1,
            /* 01F0 */  0x10, 0x9E, 0x49, 0xCE, 0xC0, 0x07, 0x0C, 0x4F,
            /* 01F8 */  0xEB, 0x14, 0x5E, 0x24, 0x3C, 0x02, 0x4C, 0xA0,
            /* 0200 */  0x43, 0x0C, 0x8D, 0xB2, 0x7E, 0x45, 0x80, 0x41,
            /* 0208 */  0x9D, 0x63, 0x00, 0x57, 0x30, 0xCF, 0x31, 0xE0,
            /* 0210 */  0x3B, 0x3E, 0xF0, 0x6B, 0x00, 0xE6, 0x7C, 0xF2,
            /* 0218 */  0x14, 0x03, 0x07, 0x97, 0x81, 0xBC, 0x04, 0xC4,
            /* 0220 */  0x79, 0x77, 0xF1, 0xCD, 0xC4, 0xD7, 0x02, 0xE3,
            /* 0228 */  0x3E, 0xC4, 0x80, 0x61, 0x60, 0x0F, 0x31, 0xE0,
            /* 0230 */  0xFC, 0xFF, 0x1F, 0x62, 0xE0, 0x05, 0x3F, 0xC4,
            /* 0238 */  0x00, 0x34, 0x91, 0x77, 0xBE, 0x90, 0x91, 0x55,
            /* 0240 */  0xF8, 0x10, 0x83, 0xBA, 0x21, 0x9C, 0xCF, 0x43,
            /* 0248 */  0xCA, 0xD3, 0x01, 0x93, 0x73, 0xCE, 0xA0, 0x87,
            /* 0250 */  0x18, 0xE0, 0x01, 0x88, 0xF7, 0x3E, 0x65, 0x32,
            /* 0258 */  0x82, 0x33, 0x35, 0xA0, 0x51, 0x7D, 0xAE, 0x00,
            /* 0260 */  0xC7, 0x79, 0x82, 0xFF, 0xFF, 0xCF, 0x13, 0x18,
            /* 0268 */  0xBC, 0xD7, 0x0A, 0x76, 0x0C, 0x60, 0x67, 0x0A,
            /* 0270 */  0x38, 0x57, 0x0A, 0x9F, 0x5A, 0x7C, 0x4E, 0xF0,
            /* 0278 */  0x18, 0xF9, 0x58, 0x0C, 0x1A, 0xF2, 0x41, 0xC0,
            /* 0280 */  0x0B, 0xB4, 0xAC, 0xB3, 0x0D, 0x68, 0x2E, 0x13,
            /* 0288 */  0xCF, 0x3D, 0xD8, 0xA3, 0x0D, 0x18, 0x90, 0x2A,
            /* 0290 */  0xBD, 0x05, 0xE8, 0x02, 0x82, 0x23, 0xF0, 0xC1,
            /* 0298 */  0x06, 0xF8, 0xC4, 0x3A, 0xD5, 0xD0, 0x30, 0x63,
            /* 02A0 */  0x54, 0x10, 0x18, 0xD4, 0xC1, 0x06, 0x70, 0x75,
            /* 02A8 */  0xE8, 0xF0, 0xC1, 0x06, 0x3C, 0xFF, 0xFF, 0x11,
            /* 02B0 */  0xB2, 0xC1, 0x9C, 0x44, 0x98, 0xA3, 0x08, 0xF6,
            /* 02B8 */  0x2C, 0xE1, 0x9B, 0x0D, 0x78, 0xB0, 0xB1, 0x27,
            /* 02C0 */  0x1B, 0xB0, 0x9C, 0x09, 0x9E, 0x6C, 0x80, 0x49,
            /* 02C8 */  0xF8, 0x93, 0x0D, 0x40, 0x1E, 0xD8, 0x27, 0x81,
            /* 02D0 */  0x77, 0x80, 0xFF, 0xFF, 0x93, 0x0D, 0x60, 0xF1,
            /* 02D8 */  0x4A, 0x81, 0x3D, 0xD9, 0x40, 0x5E, 0xBC, 0x4E,
            /* 02E0 */  0x36, 0xE0, 0x3A, 0x03, 0x82, 0xED, 0x08, 0x02,
            /* 02E8 */  0xF3, 0x6C, 0x03, 0x9C, 0xCE, 0x80, 0xC0, 0xE1,
            /* 02F0 */  0xFF, 0x7F, 0x06, 0x04, 0x1C, 0x9E, 0x5B, 0x9E,
            /* 02F8 */  0x01, 0xC1, 0x75, 0xF2, 0x64, 0x67, 0x40, 0x70,
            /* 0300 */  0xA1, 0x3C, 0x03, 0x02, 0x66, 0xFF, 0xFF, 0x67,
            /* 0308 */  0x40, 0xC0, 0xD2, 0xE9, 0x80, 0x9D, 0x01, 0x01,
            /* 0310 */  0x4E, 0xFD, 0xFF, 0x2F, 0x20, 0xFC, 0x0C, 0x08,
            /* 0318 */  0x30, 0xEC, 0x66, 0x03, 0x1B, 0x1B, 0x7B, 0xB2,
            /* 0320 */  0x01, 0xCB, 0x19, 0x10, 0x77, 0xB2, 0x01, 0xEF,
            /* 0328 */  0xFF, 0xFF, 0x0C, 0x08, 0x30, 0xE9, 0x64, 0x03,
            /* 0330 */  0x58, 0xFB, 0xFF, 0x9F, 0x01, 0x01, 0x63, 0x67,
            /* 0338 */  0x1B, 0x60, 0x75, 0x06, 0x04, 0xBC, 0xFF, 0xFF,
            /* 0340 */  0xCF, 0x80, 0xF8, 0x63, 0xCB, 0x33, 0x20, 0xB8,
            /* 0348 */  0x70, 0x9F, 0x01, 0xC1, 0x87, 0xF1, 0x0C, 0x08,
            /* 0350 */  0xF0, 0xEF, 0x74, 0xC0, 0x8E, 0x36, 0xFC, 0xFF,
            /* 0358 */  0x7F, 0x06, 0x04, 0x18, 0x75, 0x10, 0x60, 0x67,
            /* 0360 */  0x40, 0xC0, 0xD3, 0xFF, 0xFF, 0x0C, 0x08, 0x58,
            /* 0368 */  0xBB, 0xD9, 0xC0, 0xC6, 0xC6, 0x9E, 0x6C, 0xC0,
            /* 0370 */  0x72, 0x06, 0xC4, 0x9D, 0x6C, 0xC0, 0x7F, 0x06,
            /* 0378 */  0x04, 0x5C, 0xFD, 0xFF, 0xCF, 0x80, 0x80, 0x95,
            /* 0380 */  0x93, 0x0D, 0xE0, 0xF1, 0x0C, 0x08, 0xF8, 0x39,
            /* 0388 */  0x0A, 0xFC, 0xFF, 0x9F, 0x01, 0x01, 0x6E, 0xCD,
            /* 0390 */  0xE1, 0x19, 0x10, 0x5C, 0x33, 0xF3, 0x19, 0x10,
            /* 0398 */  0x6C, 0xF7, 0x1A, 0x9F, 0x01, 0xC1, 0xFF, 0xFF,
            /* 03A0 */  0x3F, 0x03, 0x02, 0xEC, 0x39, 0x1D, 0xB0, 0xA3,
            /* 03A8 */  0x0D, 0xE0, 0xEE, 0xFF, 0x7F, 0x06, 0x04, 0xEC,
            /* 03B0 */  0x1C, 0x04, 0xD8, 0x19, 0x10, 0xE0, 0xD6, 0xFF,
            /* 03B8 */  0xFF, 0x66, 0x03, 0x1F, 0x1B, 0x7B, 0xB2, 0x01,
            /* 03C0 */  0xCB, 0x19, 0x10, 0x77, 0xB2, 0x01, 0xFF, 0x19,
            /* 03C8 */  0x10, 0x60, 0xD0, 0xC9, 0x06, 0xF6, 0xFF, 0xFF,
            /* 03D0 */  0x0C, 0x08, 0x30, 0xE9, 0x6C, 0x03, 0xAC, 0xCE,
            /* 03D8 */  0x80, 0xC0, 0xEF, 0xFF, 0x7F, 0x06, 0x04, 0x3C,
            /* 03E0 */  0xDD, 0x5B, 0x9E, 0x01, 0xC1, 0x85, 0xFB, 0x0C,
            /* 03E8 */  0x08, 0x3E, 0x88, 0x67, 0x40, 0xC0, 0xFA, 0xFF,
            /* 03F0 */  0xFF, 0x0C, 0x08, 0x98, 0x38, 0x1D, 0xB0, 0x33,
            /* 03F8 */  0x20, 0xC0, 0xAC, 0x83, 0x00, 0x3B, 0xD8, 0xE0,
            /* 0400 */  0xFF, 0xFF, 0x67, 0x40, 0x80, 0x4D, 0x37, 0x1B,
            /* 0408 */  0xD8, 0xD8, 0xD8, 0x93, 0x0D, 0x58, 0xCE, 0x80,
            /* 0410 */  0xB8, 0x93, 0x0D, 0xF8, 0xCF, 0x80, 0x70, 0xFE,
            /* 0418 */  0xFF, 0x67, 0x40, 0x80, 0x2D, 0x27, 0x1B, 0xC0,
            /* 0420 */  0xE3, 0x95, 0x02, 0xF3, 0xFF, 0x3F, 0x03, 0x02,
            /* 0428 */  0x56, 0xCE, 0x36, 0xC0, 0xEA, 0x0C, 0x08, 0xF0,
            /* 0430 */  0xE0, 0xE0, 0xF2, 0x66, 0x83, 0xF9, 0xFF, 0x9F,
            /* 0438 */  0x01, 0xC1, 0x80, 0xFB, 0x0C, 0x08, 0xBE, 0xFB,
            /* 0440 */  0xC1, 0x33, 0x20, 0xC0, 0xBF, 0xD3, 0x01, 0x3B,
            /* 0448 */  0xDA, 0x80, 0xE3, 0xFF, 0x7F, 0x06, 0x04, 0x58,
            /* 0450 */  0x73, 0x10, 0x60, 0x67, 0x40, 0xC0, 0xE1, 0xFF,
            /* 0458 */  0xFF, 0x0C, 0x08, 0x98, 0xB9, 0xD9, 0xC0, 0xC6,
            /* 0460 */  0xC6, 0x9E, 0x6C, 0xC0, 0x72, 0x06, 0xC4, 0x9D,
            /* 0468 */  0x6C, 0xC0, 0x7F, 0x06, 0x04, 0x3C, 0xFE, 0xFF,
            /* 0470 */  0xCF, 0x80, 0xC0, 0xFC, 0x64, 0x03, 0x78, 0x3C,
            /* 0478 */  0x03, 0x02, 0x7E, 0xCE, 0x36, 0xB0, 0xFF, 0xFF,
            /* 0480 */  0x67, 0x40, 0x80, 0x3F, 0xDE, 0xCE, 0x80, 0x20,
            /* 0488 */  0xC3, 0x7D, 0x06, 0x04, 0xDF, 0xFD, 0xE0, 0x19,
            /* 0490 */  0x10, 0xD8, 0xFD, 0xFF, 0xCF, 0x80, 0x00, 0x43,
            /* 0498 */  0x4E, 0x07, 0xEC, 0x0C, 0x08, 0x78, 0xFD, 0xFF,
            /* 04A0 */  0x9F, 0x01, 0x01, 0x03, 0x07, 0x01, 0x76, 0x06,
            /* 04A8 */  0x04, 0xD8, 0x75, 0xB3, 0x81, 0xF9, 0xFF, 0xBF,
            /* 04B0 */  0x60, 0xC1, 0x38, 0xD9, 0x80, 0xE5, 0x0C, 0x88,
            /* 04B8 */  0x3B, 0xD9, 0x80, 0xFF, 0x0C, 0x08, 0x30, 0xE8,
            /* 04C0 */  0x64, 0x03, 0xE6, 0xFF, 0xFF, 0x19, 0x10, 0x60,
            /* 04C8 */  0xCB, 0xD9, 0x06, 0x58, 0x9D, 0x01, 0x81, 0xFB,
            /* 04D0 */  0xFF, 0xFF, 0x0C, 0x08, 0xB8, 0x38, 0x1A, 0x3C,
            /* 04D8 */  0x03, 0x82, 0xEB, 0x96, 0xE0, 0x33, 0x20, 0xD8,
            /* 04E0 */  0xEE, 0x07, 0xCF, 0x80, 0x00, 0x23, 0xFE, 0xFF,
            /* 04E8 */  0x67, 0x40, 0x60, 0x7B, 0x3A, 0x60, 0x67, 0x40,
            /* 04F0 */  0x80, 0x59, 0x07, 0x01, 0x76, 0xB0, 0x01, 0xD7,
            /* 04F8 */  0xFF, 0xFF, 0x0C, 0x08, 0x30, 0xE6, 0x66, 0x03,
            /* 0500 */  0x1B, 0x1B, 0x7B, 0xB2, 0x01, 0xCB, 0x19, 0x10,
            /* 0508 */  0x77, 0xB2, 0x01, 0xFF, 0x19, 0x10, 0x7C, 0xFF,
            /* 0510 */  0xFF, 0x33, 0x20, 0xC0, 0x88, 0x93, 0x0D, 0xE0,
            /* 0518 */  0xF1, 0x0C, 0x08, 0x96, 0xFF, 0xFF, 0x19, 0x10,
            /* 0520 */  0x98, 0x9F, 0x6D, 0x80, 0x55, 0xB4, 0x83, 0x0D,
            /* 0528 */  0x2A, 0xCC, 0xD9, 0x06, 0x10, 0x3D, 0xEF, 0x87,
            /* 0530 */  0x0F, 0x1F, 0x0C, 0x7C, 0x10, 0xC0, 0xDC, 0x6C,
            /* 0538 */  0xE0, 0xDC, 0x2A, 0x7C, 0x5D, 0xF1, 0x41, 0xC4,
            /* 0540 */  0x87, 0x07, 0xF6, 0xFF, 0x87, 0x8A, 0x13, 0x9E,
            /* 0548 */  0x9F, 0x1C, 0x7C, 0xB6, 0x81, 0x7D, 0x9A, 0x79,
            /* 0550 */  0x08, 0xC4, 0x21, 0x3C, 0xDB, 0x80, 0xFD, 0x4D,
            /* 0558 */  0xE1, 0x63, 0x81, 0xCF, 0x36, 0x00, 0x3F, 0x44,
            /* 0560 */  0x1C, 0x30, 0xE4, 0x64, 0x3C, 0xA8, 0x51, 0x58,
            /* 0568 */  0xE3, 0x25, 0x81, 0x4C, 0xDB, 0x04, 0x43, 0x43,
            /* 0570 */  0xE8, 0xB4, 0xE4, 0xB3, 0x0D, 0x38, 0xFF, 0xFF,
            /* 0578 */  0x67, 0x1B, 0x70, 0x9E, 0x4E, 0xF0, 0x67, 0x1B,
            /* 0580 */  0x30, 0x9D, 0x25, 0x30, 0x04, 0x1E, 0x32, 0xFC,
            /* 0588 */  0xD3, 0x0C, 0x3F, 0x3E, 0xBC, 0x3F, 0x24, 0xF0,
            /* 0590 */  0xB9, 0x0F, 0x6C, 0xA7, 0x0E, 0x38, 0x87, 0x19,
            /* 0598 */  0x60, 0x32, 0x26, 0xDC, 0x91, 0xC2, 0x43, 0xE0,
            /* 05A0 */  0x03, 0x68, 0x75, 0x7E, 0xE4, 0x58, 0x78, 0x56,
            /* 05A8 */  0xB8, 0xB3, 0x0C, 0x1F, 0x15, 0xE6, 0x74, 0x83,
            /* 05B0 */  0x8B, 0xF2, 0x3E, 0x30, 0x81, 0x82, 0xBC, 0x0B,
            /* 05B8 */  0x24, 0xF2, 0x81, 0x40, 0x61, 0x7C, 0xBA, 0x01,
            /* 05C0 */  0x8E, 0xFF, 0xFF, 0xD3, 0x0D, 0xF0, 0x98, 0xA4,
            /* 05C8 */  0x4F, 0x37, 0x60, 0x83, 0x88, 0x18, 0xAC, 0x68,
            /* 05D0 */  0x30, 0xDD, 0x9A, 0x70, 0xB7, 0x1B, 0x1C, 0x5E,
            /* 05D8 */  0xB8, 0x18, 0xA7, 0xC3, 0x10, 0xA2, 0x3C, 0xB0,
            /* 05E0 */  0x18, 0x99, 0x1F, 0x03, 0xC1, 0x70, 0x9B, 0x79,
            /* 05E8 */  0xB6, 0x01, 0x2E, 0xE1, 0x0E, 0x05, 0xFA, 0x43,
            /* 05F0 */  0xF9, 0x6C, 0x03, 0xF8, 0xFC, 0xFF, 0x9F, 0x6D,
            /* 05F8 */  0x80, 0xCF, 0x41, 0x04, 0x77, 0x32, 0x01, 0xC3,
            /* 0600 */  0x89, 0x01, 0xD6, 0xB1, 0x0D, 0xB8, 0x88, 0x5B,
            /* 0608 */  0xA9, 0x4E, 0x3B, 0x16, 0x06, 0x22, 0x1B, 0x87,
            /* 0610 */  0x45, 0x3A, 0x54, 0x0B, 0xA1, 0xD2, 0x90, 0x7C,
            /* 0618 */  0x04, 0x3A, 0xBB, 0x47, 0x85, 0xE7, 0x04, 0x01,
            /* 0620 */  0x09, 0xD4, 0x10, 0x0E, 0x0F, 0xA1, 0xE8, 0xA3,
            /* 0628 */  0xA1, 0xC0, 0x0E, 0x0B, 0x46, 0x41, 0x3C, 0x7A,
            /* 0630 */  0x07, 0x81, 0xD0, 0xA1, 0x08, 0x7F, 0x62, 0xF0,
            /* 0638 */  0x7C, 0xDE, 0xF8, 0x4D, 0xF0, 0xB0, 0xF1, 0xB4,
            /* 0640 */  0x00, 0xEB, 0x62, 0xE0, 0x63, 0x00, 0x3F, 0x13,
            /* 0648 */  0xE2, 0x0F, 0xFD, 0x26, 0xE0, 0xC7, 0x1E, 0xF0,
            /* 0650 */  0x09, 0x3C, 0x0D, 0x80, 0x02, 0xC8, 0x93, 0xF7,
            /* 0658 */  0xB1, 0xE6, 0x01, 0x80, 0xCD, 0xE1, 0xC9, 0xC6,
            /* 0660 */  0x68, 0xFF, 0xFF, 0x47, 0x1A, 0x9C, 0x8C, 0x95,
            /* 0668 */  0xEA, 0x4B, 0xE3, 0x33, 0xA3, 0xC7, 0xC5, 0xCF,
            /* 0670 */  0x03, 0x3E, 0xB8, 0xB0, 0xB3, 0x01, 0xEE, 0x0C,
            /* 0678 */  0x85, 0x81, 0xF5, 0x48, 0x39, 0xAC, 0xD1, 0xC2,
            /* 0680 */  0x1E, 0xF0, 0x43, 0x83, 0x2F, 0x1C, 0x9E, 0x99,
            /* 0688 */  0xCF, 0x28, 0x3E, 0x6A, 0x80, 0xE5, 0x38, 0x05,
            /* 0690 */  0xFF, 0xB0, 0x82, 0x3B, 0xC9, 0xC0, 0x9D, 0xE6,
            /* 0698 */  0x23, 0xC1, 0xA3, 0x9E, 0x87, 0x1E, 0xDE, 0x47,
            /* 06A0 */  0x18, 0xCF, 0x2E, 0x88, 0xAF, 0x9D, 0xFC, 0xF2,
            /* 06A8 */  0x7D, 0x5A, 0xBE, 0xEF, 0xF8, 0xE8, 0x63, 0xA0,
            /* 06B0 */  0x27, 0x86, 0xA8, 0xAF, 0x27, 0x9E, 0x00, 0xBF,
            /* 06B8 */  0x50, 0x38, 0xC6, 0xA9, 0x88, 0x06, 0x5A, 0xA9,
            /* 06C0 */  0xA4, 0xAE, 0x99, 0xC2, 0xF8, 0x54, 0x04, 0xB8,
            /* 06C8 */  0x8A, 0x30, 0x78, 0x50, 0xFC, 0xFF, 0x4F, 0x45,
            /* 06D0 */  0xD8, 0x1B, 0x86, 0x2F, 0x03, 0x3E, 0x14, 0x81,
            /* 06D8 */  0xE5, 0x40, 0xE2, 0x89, 0xBD, 0x04, 0xF8, 0xDC,
            /* 06E0 */  0x80, 0xC3, 0x39, 0x03, 0x7E, 0x32, 0x02, 0xC3,
            /* 06E8 */  0x5D, 0xFB, 0xC9, 0x08, 0xB8, 0x44, 0x3B, 0x19,
            /* 06F0 */  0x01, 0x34, 0x39, 0xDF, 0xE1, 0xFE, 0xFF, 0x27,
            /* 06F8 */  0x23, 0x30, 0x9C, 0x1A, 0x60, 0x1C, 0x8C, 0x80,
            /* 0700 */  0x8B, 0xA4, 0x83, 0x11, 0x95, 0x73, 0x30, 0x82,
            /* 0708 */  0x72, 0x84, 0xC0, 0x1D, 0x8C, 0xC0, 0x3F, 0xA6,
            /* 0710 */  0x33, 0x7A, 0x1D, 0x38, 0x75, 0x1F, 0x8C, 0x00,
            /* 0718 */  0x73, 0xC3, 0xF5, 0xC1, 0x08, 0xF8, 0xFC, 0xFF,
            /* 0720 */  0x0F, 0x46, 0xC0, 0xE5, 0x70, 0xE1, 0x83, 0x11,
            /* 0728 */  0xB8, 0x0F, 0x0B, 0xFC, 0x10, 0x83, 0x25, 0x28,
            /* 0730 */  0xFE, 0x35, 0x64, 0x02, 0x85, 0x5A, 0xA4, 0x24,
            /* 0738 */  0x2F, 0x97, 0xC2, 0xF8, 0x4C, 0x04, 0xB8, 0x8A,
            /* 0740 */  0x71, 0x26, 0x02, 0x21, 0xC6, 0xE3, 0xB1, 0x11,
            /* 0748 */  0xCF, 0x38, 0x6C, 0xB8, 0xE7, 0x8B, 0xA7, 0x22,
            /* 0750 */  0xB0, 0xCF, 0xE1, 0x0C, 0xFA, 0xBC, 0x6E, 0xE9,
            /* 0758 */  0x54, 0x84, 0xFF, 0xFF, 0x9F, 0x8A, 0x60, 0x1C,
            /* 0760 */  0x83, 0x9E, 0x8A, 0x80, 0x4B, 0xBC, 0x53, 0x11,
            /* 0768 */  0x40, 0x93, 0x13, 0xC4, 0x53, 0x11, 0xB8, 0xCE,
            /* 0770 */  0x0D, 0x30, 0xCF, 0x45, 0xE0, 0xFB, 0xFF, 0x9F,
            /* 0778 */  0x8B, 0xE0, 0x3E, 0x08, 0x7C, 0x18, 0x22, 0xE7,
            /* 0780 */  0x22, 0x74, 0x78, 0x2A, 0x1D, 0x22, 0x70, 0xB1,
            /* 0788 */  0xCF, 0x45, 0x74, 0xD8, 0x0E, 0x4C, 0xA2, 0x43,
            /* 0790 */  0xBD, 0xCF, 0x45, 0x3C, 0xE6, 0x91, 0x86, 0x82,
            /* 0798 */  0x18, 0xD0, 0x19, 0xCE, 0x45, 0x68, 0x15, 0xE7,
            /* 07A0 */  0x22, 0xE4, 0x20, 0xDF, 0x16, 0xD8, 0xEC, 0x7C,
            /* 07A8 */  0x0F, 0xE0, 0x37, 0x15, 0x5F, 0x8B, 0x18, 0x6E,
            /* 07B0 */  0x35, 0xD7, 0x1D, 0x14, 0x98, 0x6F, 0x45, 0x18,
            /* 07B8 */  0x5D, 0xA7, 0x22, 0x90, 0xE9, 0xBB, 0x14, 0x81,
            /* 07C0 */  0x1C, 0x9D, 0x9F, 0xA8, 0xC0, 0x87, 0xFF, 0x3C,
            /* 07C8 */  0xE0, 0x21, 0x3C, 0x51, 0xC1, 0x3D, 0x13, 0xBC,
            /* 07D0 */  0xF5, 0xF8, 0x44, 0x05, 0xFB, 0x90, 0x4B, 0x4E,
            /* 07D8 */  0x54, 0x40, 0xE3, 0xFF, 0x7F, 0xA2, 0x02, 0x5F,
            /* 07E0 */  0xEC, 0x13, 0x15, 0xA0, 0xE7, 0x08, 0x82, 0x3B,
            /* 07E8 */  0xB9, 0x82, 0xF5, 0x98, 0x81, 0x51, 0x68, 0xD3,
            /* 07F0 */  0xA7, 0x46, 0xA3, 0x56, 0x0D, 0xCA, 0xD4, 0x28,
            /* 07F8 */  0xD3, 0xA0, 0x56, 0x9F, 0x4A, 0x8D, 0x19, 0xBB,
            /* 0800 */  0x0F, 0x58, 0xE2, 0x3B, 0x41, 0xC3, 0x75, 0x40,
            /* 0808 */  0x10, 0x1A, 0x89, 0x42, 0x20, 0x8E, 0xF2, 0xA7,
            /* 0810 */  0x10, 0x88, 0x85, 0x78, 0x00, 0x61, 0x42, 0x57,
            /* 0818 */  0x24, 0x10, 0x8B, 0x5B, 0x9B, 0x40, 0x1C, 0x0D,
            /* 0820 */  0x84, 0x46, 0x5F, 0x9D, 0x40, 0x1C, 0xD8, 0x07,
            /* 0828 */  0x08, 0x93, 0xFB, 0x26, 0x10, 0x88, 0xE3, 0x18,
            /* 0830 */  0x01, 0x61, 0x11, 0x5E, 0x54, 0x3A, 0x06, 0x10,
            /* 0838 */  0x2B, 0x20, 0x4C, 0xA0, 0x16, 0x10, 0x26, 0xCB,
            /* 0840 */  0x0C, 0x08, 0x0B, 0x05, 0x42, 0x43, 0x7F, 0x39,
            /* 0848 */  0x04, 0xE2, 0xA0, 0x76, 0x40, 0x98, 0x4C, 0x3D,
            /* 0850 */  0x20, 0x2C, 0x86, 0x1F, 0x10, 0x26, 0x5E, 0xD1,
            /* 0858 */  0x60, 0x28, 0x08, 0x95, 0xF6, 0xE6, 0xD2, 0x61,
            /* 0860 */  0x82, 0x78, 0x02, 0x61, 0x61, 0x40, 0xE8, 0xFF,
            /* 0868 */  0x3F, 0xAC, 0x28, 0x10, 0x16, 0xD1, 0xD5, 0x60,
            /* 0870 */  0xE8, 0xDB, 0x40, 0x20, 0x0E, 0xF0, 0x4C, 0x0A,
            /* 0878 */  0x42, 0x44, 0x3F, 0x25, 0x04, 0xE2, 0xC8, 0x20,
            /* 0880 */  0x54, 0xD2, 0x1F, 0x42, 0x43, 0x25, 0x7F, 0xA5,
            /* 0888 */  0x83, 0x61, 0x20, 0x34, 0xE6, 0x83, 0xE9, 0x50,
            /* 0890 */  0xD9, 0x5F, 0x4B, 0x20, 0x16, 0xA6, 0x0E, 0x84,
            /* 0898 */  0x09, 0x77, 0x37, 0x54, 0xFA, 0x19, 0xD1, 0x60,
            /* 08A0 */  0x08, 0x08, 0x15, 0xF3, 0xA8, 0xD0, 0x50, 0xC9,
            /* 08A8 */  0x83, 0x22, 0x08, 0x91, 0x0F, 0x42, 0xE3, 0xBD,
            /* 08B0 */  0x04, 0x34, 0x54, 0xF2, 0x21, 0xD0, 0x60, 0xC8,
            /* 08B8 */  0x1B, 0x47, 0x20, 0x96, 0xFC, 0x4A, 0xD3, 0x50,
            /* 08C0 */  0xC9, 0x43, 0x41, 0x20, 0x0E, 0x09, 0x42, 0x45,
            /* 08C8 */  0xBC, 0x72, 0x82, 0x90, 0xF0, 0xCF, 0x8B, 0x20,
            /* 08D0 */  0x44, 0xBA, 0xD1, 0x41, 0xD0, 0xE7, 0xC5, 0x83,
            /* 08D8 */  0x01, 0xB3, 0x0A, 0xC2, 0x04, 0x69, 0x1D, 0x36,
            /* 08E0 */  0x7D, 0x28, 0x14, 0xF0, 0x15, 0xD0, 0xE1, 0x20,
            /* 08E8 */  0x88, 0x80, 0x2C, 0xD2, 0xED, 0x80, 0x29, 0x08,
            /* 08F0 */  0x15, 0x63, 0x17, 0x90, 0x49, 0x03, 0x11, 0x90,
            /* 08F8 */  0xE3, 0x0A, 0x06, 0x61, 0x62, 0x5F, 0x14, 0x41,
            /* 0900 */  0x48, 0xAE, 0xE7, 0x51, 0x40, 0x12, 0x12, 0x44,
            /* 0908 */  0xC7, 0x03, 0xF2, 0x84, 0x13, 0x90, 0xC3, 0x81,
            /* 0910 */  0x08, 0xC8, 0xFF, 0x7F                         
        })
    }

    Scope (WMI0)
    {
        Name (WMIP, Zero)
        Method (INIT, 1, NotSerialized)
        {
            Store (One, WMIP)
            WINI (Arg0)
            Return (Zero)
        }

        Name (PCDV, Zero)
        Method (WDOG, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (\_SB.PTIM, PCDV)
                Return (0x3C)
            }

            If (LEqual (Arg0, One))
            {
                If (\_SB.LID._LID ())
                {
                    Store (\_SB.PTIM, PCDV)
                    Return (One)
                }

                If (LLess (\_TZ.RLTM (), \_SB.PTMP))
                {
                    Store (\_SB.PTIM, PCDV)
                    Return (One)
                }

                Decrement (PCDV)
                If (LEqual (PCDV, Zero))
                {
                    Store (\_SB.PTIM, PCDV)
                    NTFY (0x6D)
                }

                Return (One)
            }

            Return (Zero)
        }

        Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
        {
            Return (Arg0)
        }

        Method (WMIG, 3, Serialized)
        {
            \_SB.ATKD.AGFN (Arg0)
            Store (CWMI (Arg0), Local0)
            If (LEqual (Local0, Zero))
            {
                Return (Zero)
            }

            Store (And (ShiftRight (Local0, 0x10), 0xFFFF), Local1)
            And (Local0, 0xFFFF, Local0)
            If (CWAC (Arg0))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, 0x15), LEqual (Local1, 0x05)))
            {
                WSMI (Arg2)
                Return (Zero)
            }

            If (Or (LEqual (Local0, 0x64), LEqual (Local0, 0x67)))
            {
                WSMI (Arg2)
                Return (Zero)
            }

            Store (\_SB.ATKD.GLEN (Arg0), Local2)
            WGLN (Arg0, Arg1, Local0, Local1, Arg2)
            OperationRegion (\WMIF, SystemMemory, Arg0, 0x0100)
            Field (WMIF, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                STAS,   8, 
                REST,   8
            }

            If (LNotEqual (STAS, One))
            {
                Return (Zero)
            }

            Store (0x82, STAS)
            Store (One, REST)
            Return (Zero)
        }

        Method (CWMI, 1, NotSerialized)
        {
            OperationRegion (\WMID, SystemMemory, Arg0, 0x0100)
            Field (WMID, DWordAcc, NoLock, Preserve)
            {
                FUNC,   32, 
                LEN,    16, 
                STAS,   8, 
                REST,   8
            }

            If (LEqual (And (REST, One), Zero))
            {
                Return (Zero)
            }

            Store (One, STAS)
            Store (Zero, REST)
            Return (FUNC)
        }

        Method (CWAC, 1, NotSerialized)
        {
            OperationRegion (\WMIC, SystemMemory, Arg0, 0x0100)
            Field (WMIC, DWordAcc, NoLock, Preserve)
            {
                Offset (0x07), 
                REST,   8
            }

            ISMI (0xE4)
            Return (REST)
        }
    }

    Scope (WMI0)
    {
        Method (QNTY, 1, NotSerialized)
        {
            If (LGreaterEqual (OSFG, OSW8)) {}
            Return (One)
        }
    }

    Scope (WMI0)
    {
        Method (WGLN, 5, NotSerialized)
        {
            \_SB.ATKD.GVBD (Arg0, Arg1, Arg2, Arg3, Arg4)
            \_SB.ATKD.MF6A (Arg0, Arg1, Arg2, Arg3, Arg4)
            \_SB.ATKD.WFLH (Arg0, Arg1, Arg2, Arg3, Arg4)
        }
    }

    Scope (WMI0)
    {
        Method (WINI, 1, NotSerialized)
        {
        }
    }

    Scope (_SB)
    {
        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x10, 
                0x05
            })
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                Store (Arg0, LDST)
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Store (One, Local0)
                Store (^^PCI0.LPCB.HEC.RPIN (0x04, 0x06), Local0)
                If (LEqual (Local0, Ones))
                {
                    Store (One, Local0)
                }

                Return (Local0)
            }
        }
    }

    Scope (_SB.PCI0.LPCB.HEC)
    {
        Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (LID, 0x80)
            If (And (VGAF, One))
            {
                Store (GLID (), Local0)
                If (Local0)
                {
                    Store (0x03, ^^^GFX0.CLID)
                }
                Else
                {
                    Store (Zero, ^^^GFX0.CLID)
                }
            }
        }
    }

    Scope (_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x0B, 
                    0x04
                })
            }
        }
    }

    Scope (_SB.ATKD)
    {
        Method (GVBD, 5, NotSerialized)
        {
            If (LEqual (Arg2, 0x69))
            {
                If (LEqual (Arg3, One))
                {
                    \WMI0.WSMI (Arg4)
                    Return (Zero)
                }

                If (LEqual (Arg3, 0x02))
                {
                    \WMI0.WSMI (Arg4)
                    Return (Zero)
                }
            }

            Return (Zero)
        }
    }

    Name (OPVK, Buffer (0xE2)
    {
        /* 0000 */  0x52, 0xAA, 0x89, 0xC5, 0x44, 0xCE, 0xC3, 0x3A,
        /* 0008 */  0x4B, 0x56, 0xE2, 0x00, 0x00, 0x00, 0x01, 0x00,
        /* 0010 */  0x32, 0x37, 0x34, 0x35, 0x39, 0x31, 0x32, 0x35,
        /* 0018 */  0x33, 0x36, 0x38, 0x37, 0x47, 0x65, 0x6E, 0x75,
        /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
        /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
        /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
        /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
        /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
        /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
        /* 0050 */  0x6F, 0x72, 0x20, 0x63, 0x6F, 0x6F, 0x6B, 0x69,
        /* 0058 */  0x65, 0x20, 0x66, 0x6F, 0x72, 0x20, 0x75, 0x6C,
        /* 0060 */  0x35, 0x30, 0x20, 0x75, 0x73, 0x69, 0x6E, 0x20,
        /* 0068 */  0x2D, 0x20, 0x5E, 0x57, 0x3C, 0x4A, 0x3D, 0x41,
        /* 0070 */  0x24, 0x4C, 0x3A, 0x4B, 0x38, 0x32, 0x26, 0x51,
        /* 0078 */  0x48, 0x35, 0x4C, 0x3E, 0x2B, 0x33, 0x52, 0x2B,
        /* 0080 */  0x54, 0x35, 0x2A, 0x52, 0x29, 0x3A, 0x5B, 0x4C,
        /* 0088 */  0x4A, 0x3E, 0x36, 0x48, 0x22, 0x48, 0x41, 0x50,
        /* 0090 */  0x47, 0x39, 0x5A, 0x39, 0x5E, 0x3E, 0x44, 0x53,
        /* 0098 */  0x54, 0x3C, 0x20, 0x2D, 0x20, 0x43, 0x6F, 0x70,
        /* 00A0 */  0x79, 0x72, 0x69, 0x67, 0x68, 0x74, 0x20, 0x32,
        /* 00A8 */  0x30, 0x30, 0x39, 0x20, 0x4E, 0x56, 0x49, 0x44,
        /* 00B0 */  0x49, 0x41, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F,
        /* 00B8 */  0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41,
        /* 00C0 */  0x6C, 0x6C, 0x20, 0x52, 0x69, 0x67, 0x68, 0x74,
        /* 00C8 */  0x73, 0x20, 0x52, 0x65, 0x73, 0x65, 0x72, 0x76,
        /* 00D0 */  0x65, 0x64, 0x2D, 0x32, 0x37, 0x34, 0x35, 0x39,
        /* 00D8 */  0x31, 0x32, 0x35, 0x33, 0x36, 0x38, 0x37, 0x28,
        /* 00E0 */  0x52, 0x29                                     
    })
    Scope (_SB.PCI0)
    {
        Method (NWM1, 1, NotSerialized)
        {
            Notify (WMI1, Arg0)
        }

        Device (WMI1)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, "MXM2")  // _UID: Unique ID
            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,
                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,
                /* 0010 */  0x4D, 0x58, 0x01, 0x02, 0x40, 0x2F, 0x1A, 0x92,
                /* 0018 */  0xC4, 0x0D, 0x2D, 0x40, 0xAC, 0x18, 0xB4, 0x84,
                /* 0020 */  0x44, 0xEF, 0x9E, 0xD2, 0xD0, 0x00, 0x01, 0x08,
                /* 0028 */  0x61, 0xD3, 0x2A, 0xC1, 0xA9, 0x9F, 0x74, 0x4C,
                /* 0030 */  0x90, 0x1F, 0x95, 0xCB, 0x09, 0x45, 0xCF, 0x3E,
                /* 0038 */  0xD9, 0x00, 0x01, 0x08, 0x06, 0x80, 0x84, 0x42,
                /* 0040 */  0x86, 0x88, 0x0E, 0x49, 0x8C, 0x72, 0x2B, 0xDC,
                /* 0048 */  0xA9, 0x3A, 0x8A, 0x09, 0xDB, 0x00, 0x01, 0x08,
                /* 0050 */  0x62, 0xDE, 0x6B, 0xE0, 0x75, 0xEE, 0xF4, 0x48,
                /* 0058 */  0xA5, 0x83, 0xB2, 0x3E, 0x69, 0xAB, 0xFB, 0x91,
                /* 0060 */  0x80, 0x00, 0x01, 0x08, 0x0F, 0xBD, 0xDE, 0x3A,
                /* 0068 */  0x5F, 0x0C, 0xED, 0x46, 0xAB, 0x2E, 0x04, 0x96,
                /* 0070 */  0x2B, 0x4F, 0xDC, 0xBC, 0x81, 0x00, 0x01, 0x08,
                /* 0078 */  0x11, 0x93, 0x51, 0x1E, 0x75, 0x3E, 0x08, 0x42,
                /* 0080 */  0xB0, 0x5E, 0xEB, 0xE1, 0x7E, 0x3F, 0xF4, 0x1F,
                /* 0088 */  0x86, 0x00, 0x01, 0x08, 0x41, 0x53, 0xF8, 0x37,
                /* 0090 */  0x18, 0x44, 0x24, 0x4F, 0x85, 0x33, 0x38, 0xFF,
                /* 0098 */  0xC7, 0x29, 0x55, 0x42, 0x87, 0x00, 0x01, 0x08,
                /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 00B0 */  0x58, 0x4D, 0x01, 0x00                         
            })
            Method (WMMX, 3, NotSerialized)
            {
                If (LGreaterEqual (SizeOf (Arg2), 0x04))
                {
                    CreateDWordField (Arg2, Zero, FUNC)
                    CreateDWordField (Arg2, 0x04, ARGS)
                    CreateDWordField (Arg2, 0x08, XARG)
                    If (LEqual (FUNC, 0x444F445F))
                    {
                        If (LEqual (Arg1, 0x10))
                        {
                            Return (^^GFX0._DOD ())
                        }
                        Else
                        {
                            Return (^^P0P2.VGA._DOD ())
                        }
                    }
                    ElseIf (LEqual (FUNC, 0x5343445F))
                    {
                        If (LGreaterEqual (SizeOf (Arg2), 0x08))
                        {
                            If (LEqual (ARGS, 0x0100))
                            {
                                If (LEqual (Arg1, 0x10))
                                {
                                    Return (^^GFX0.CRTD._DCS ())
                                }
                                Else
                                {
                                    Return (^^P0P2.VGA.CRTD._DCS ())
                                }
                            }
                            ElseIf (LEqual (ARGS, 0x0110))
                            {
                                If (LEqual (Arg1, 0x10))
                                {
                                    Return (^^GFX0.LCDD._DCS ())
                                }
                                Else
                                {
                                    Return (^^P0P2.VGA.LCDD._DCS ())
                                }
                            }
                            ElseIf (LEqual (ARGS, 0x7330))
                            {
                                If (LNotEqual (Arg1, 0x10))
                                {
                                    Return (^^GFX0.DPBD._DCS ())
                                    Return (^^GFX0.DPCD._DCS ())
                                    Return (^^GFX0.DPDD._DCS ())
                                }
                                Else
                                {
                                    Return (^^P0P2.VGA.DO1D._DCS ())
                                    Return (^^P0P2.VGA.DO2D._DCS ())
                                }
                            }
                        }
                    }
                    ElseIf (LEqual (FUNC, 0x534F525F))
                    {
                        If (LGreaterEqual (SizeOf (Arg2), 0x08))
                        {
                            If (LNotEqual (Arg1, 0x10))
                            {
                                Return (^^P0P2.VGA._ROM (ARGS, XARG))
                            }
                        }
                    }
                    ElseIf (LEqual (FUNC, 0x4D53445F))
                    {
                        If (LGreaterEqual (SizeOf (Arg2), 0x18))
                        {
                            CreateField (Arg2, 0x20, 0x80, MUID)
                            CreateDWordField (Arg2, 0x14, REVI)
                            CreateDWordField (Arg2, 0x18, SFNC)
                            CreateField (Arg2, 0xE0, 0x20, SARG)
                            If (LNotEqual (Arg1, 0x10))
                            {
                                Return (^^GFX0._DSM (MUID, REVI, SFNC, SARG))
                            }
                        }
                        ElseIf (LEqual (FUNC, 0x47504F4E))
                        {
                            Store (One, ^^P0P2.VGA.DGPS)
                            ^^P0P2.VGA._PS0 ()
                        }
                    }
                }

                Return (Zero)
            }

            Name (WQXM, Buffer (0x029C)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x8B, 0x02, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x18, 0xD2, 0x83, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0xE6, 0x80, 0x42, 0x04,
                /* 0028 */  0x92, 0x43, 0xA4, 0x30, 0x30, 0x28, 0x0B, 0x20,
                /* 0030 */  0x86, 0x90, 0x0B, 0x26, 0x26, 0x40, 0x04, 0x84,
                /* 0038 */  0xBC, 0x0A, 0xB0, 0x29, 0xC0, 0x24, 0x88, 0xFA,
                /* 0040 */  0xF7, 0x87, 0x28, 0x09, 0x0E, 0x25, 0x04, 0x42,
                /* 0048 */  0x12, 0x05, 0x98, 0x17, 0xA0, 0x5B, 0x80, 0x61,
                /* 0050 */  0x01, 0xB6, 0x05, 0x98, 0x16, 0xE0, 0x18, 0x92,
                /* 0058 */  0x4A, 0x03, 0xA7, 0x04, 0x96, 0x02, 0x21, 0xA1,
                /* 0060 */  0x02, 0x94, 0x0B, 0xF0, 0x2D, 0x40, 0x3B, 0xA2,
                /* 0068 */  0x24, 0x0B, 0xB0, 0x0C, 0x23, 0x02, 0x8F, 0x82,
                /* 0070 */  0xA1, 0x71, 0x68, 0xEC, 0x30, 0x2C, 0x13, 0x4C,
                /* 0078 */  0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45, 0x60, 0xDC,
                /* 0080 */  0x4E, 0x05, 0xC8, 0x15, 0x20, 0x4C, 0x80, 0x78,
                /* 0088 */  0x54, 0x61, 0x34, 0x07, 0x45, 0xE0, 0x42, 0x63,
                /* 0090 */  0x64, 0x40, 0xC8, 0xA3, 0x00, 0xAB, 0xA3, 0xD0,
                /* 0098 */  0xA4, 0x12, 0xD8, 0xBD, 0x00, 0x8D, 0x02, 0xB4,
                /* 00A0 */  0x09, 0x70, 0x28, 0x40, 0xA1, 0x00, 0x6B, 0x18,
                /* 00A8 */  0x72, 0x06, 0x21, 0x5B, 0xD8, 0xC2, 0x68, 0x50,
                /* 00B0 */  0x80, 0x45, 0x14, 0x8D, 0xE0, 0x2C, 0x2A, 0x9E,
                /* 00B8 */  0x93, 0x50, 0x02, 0xDA, 0x1B, 0x82, 0xF0, 0x8C,
                /* 00C0 */  0xD9, 0x18, 0x9E, 0x10, 0x83, 0x54, 0x86, 0x21,
                /* 00C8 */  0x88, 0xB8, 0x11, 0x8E, 0xA5, 0xFD, 0x41, 0x10,
                /* 00D0 */  0xF9, 0xAB, 0xD7, 0xB8, 0x1D, 0x69, 0x34, 0xA8,
                /* 00D8 */  0xB1, 0x26, 0x38, 0x76, 0x8F, 0xE6, 0x84, 0x3B,
                /* 00E0 */  0x17, 0x20, 0x7D, 0x6E, 0x02, 0x39, 0xBA, 0xD3,
                /* 00E8 */  0xA8, 0x73, 0xD0, 0x64, 0x78, 0x0C, 0x2B, 0xC1,
                /* 00F0 */  0x7F, 0x80, 0x4F, 0x01, 0x78, 0xD7, 0x80, 0x9A,
                /* 00F8 */  0xFE, 0xC1, 0x33, 0x41, 0x70, 0xA8, 0x21, 0x7A,
                /* 0100 */  0xD4, 0xE1, 0x4E, 0xE0, 0xBC, 0x8E, 0x84, 0x41,
                /* 0108 */  0x1C, 0xD1, 0x71, 0x63, 0x67, 0x75, 0x32, 0x07,
                /* 0110 */  0x5D, 0xAA, 0x00, 0xB3, 0x07, 0x00, 0x0D, 0x2E,
                /* 0118 */  0xC1, 0x69, 0x9F, 0x49, 0xE8, 0xF7, 0x80, 0xF3,
                /* 0120 */  0xE9, 0x79, 0x6C, 0x6C, 0x10, 0xA8, 0x91, 0xF9,
                /* 0128 */  0xFF, 0x0F, 0xED, 0x41, 0x9E, 0x56, 0xCC, 0x90,
                /* 0130 */  0xCF, 0x02, 0x87, 0xC5, 0xC4, 0x1E, 0x19, 0xE8,
                /* 0138 */  0x78, 0xC0, 0x7F, 0x00, 0x78, 0x34, 0x88, 0xF0,
                /* 0140 */  0x66, 0xE0, 0xF9, 0x9A, 0x60, 0x50, 0x08, 0x39,
                /* 0148 */  0x19, 0x0F, 0x4A, 0xCC, 0xF9, 0x80, 0xCC, 0x25,
                /* 0150 */  0xC4, 0x43, 0xC0, 0x31, 0xC4, 0x08, 0x7A, 0x46,
                /* 0158 */  0x45, 0x23, 0x6B, 0x22, 0x3E, 0x03, 0x78, 0xDC,
                /* 0160 */  0x96, 0x05, 0x42, 0x09, 0x0C, 0xEC, 0x73, 0xC3,
                /* 0168 */  0x3B, 0x84, 0x61, 0x71, 0xA3, 0x09, 0xEC, 0xF3,
                /* 0170 */  0x85, 0x05, 0x0E, 0x0A, 0x05, 0xEB, 0xBB, 0x42,
                /* 0178 */  0xCC, 0xE7, 0x81, 0xE3, 0x3C, 0x60, 0x0B, 0x9F,
                /* 0180 */  0x28, 0x01, 0x3E, 0x24, 0x8F, 0x06, 0xDE, 0x20,
                /* 0188 */  0xE1, 0x5B, 0x3F, 0x02, 0x10, 0xE0, 0x27, 0x06,
                /* 0190 */  0x13, 0x58, 0x1E, 0x30, 0x7A, 0x94, 0xF6, 0x2B,
                /* 0198 */  0x00, 0x21, 0xF8, 0x8B, 0xC5, 0x53, 0xC0, 0xEB,
                /* 01A0 */  0x40, 0x84, 0x63, 0x81, 0x29, 0x72, 0x6C, 0x68,
                /* 01A8 */  0x78, 0x7E, 0x70, 0x88, 0x1E, 0xF5, 0x5C, 0xC2,
                /* 01B0 */  0x1F, 0x4D, 0x94, 0x53, 0x38, 0x1C, 0x1F, 0x39,
                /* 01B8 */  0x8C, 0x10, 0xFE, 0x49, 0xE3, 0xC9, 0xC3, 0x9A,
                /* 01C0 */  0xEF, 0x00, 0x9A, 0xD2, 0x5B, 0xC0, 0xFB, 0x83,
                /* 01C8 */  0x47, 0x80, 0x11, 0x20, 0xE1, 0x68, 0x82, 0x89,
                /* 01D0 */  0x7C, 0x3A, 0x01, 0xD5, 0xFF, 0xFF, 0x74, 0x02,
                /* 01D8 */  0xB8, 0xBA, 0x01, 0x14, 0x37, 0x6A, 0x9D, 0x49,
                /* 01E0 */  0x7C, 0x2C, 0xF1, 0xAD, 0xE4, 0xBC, 0x43, 0xC5,
                /* 01E8 */  0x7F, 0x93, 0x78, 0x3A, 0xF1, 0x34, 0x1E, 0x4C,
                /* 01F0 */  0x42, 0x44, 0x89, 0x18, 0x21, 0xA2, 0xEF, 0x27,
                /* 01F8 */  0x46, 0x08, 0x15, 0x31, 0x6C, 0xA4, 0x37, 0x80,
                /* 0200 */  0xE7, 0x13, 0xE3, 0x84, 0x08, 0xF4, 0x74, 0xC2,
                /* 0208 */  0x42, 0x3E, 0x34, 0xA4, 0xE1, 0x74, 0x02, 0x50,
                /* 0210 */  0xE0, 0xFF, 0x7F, 0x3A, 0x81, 0x1F, 0xF5, 0x74,
                /* 0218 */  0x82, 0x1E, 0xAE, 0x4F, 0x19, 0x18, 0xE4, 0x03,
                /* 0220 */  0xF2, 0xA9, 0xC3, 0xF7, 0x1F, 0x13, 0xF8, 0x78,
                /* 0228 */  0xC2, 0x45, 0x1D, 0x4F, 0x50, 0xA7, 0x07, 0x1F,
                /* 0230 */  0x4F, 0xD8, 0x19, 0xE1, 0x2C, 0x1E, 0x03, 0x7C,
                /* 0238 */  0x3A, 0xC1, 0xDC, 0x13, 0x7C, 0x3A, 0x01, 0xDB,
                /* 0240 */  0x68, 0x60, 0x1C, 0x4F, 0xC0, 0x77, 0x74, 0xC1,
                /* 0248 */  0x1D, 0x4F, 0xC0, 0x30, 0x18, 0x18, 0xE7, 0x13,
                /* 0250 */  0xE0, 0x31, 0x5E, 0xDC, 0x31, 0xC0, 0x43, 0xE0,
                /* 0258 */  0x03, 0x78, 0xDC, 0x38, 0x3D, 0x2B, 0x9D, 0x14,
                /* 0260 */  0xF2, 0x24, 0xC2, 0x07, 0x85, 0x39, 0xB0, 0xE0,
                /* 0268 */  0x14, 0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83,
                /* 0270 */  0x32, 0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52,
                /* 0278 */  0x63, 0xC6, 0xCE, 0x19, 0x0E, 0xF8, 0x10, 0xD0,
                /* 0280 */  0x89, 0xC0, 0xF2, 0x9E, 0x0D, 0x02, 0xB1, 0x0C,
                /* 0288 */  0x0A, 0x81, 0x58, 0xFA, 0xAB, 0x45, 0x20, 0x0E,
                /* 0290 */  0x0E, 0xA2, 0xFF, 0x3F, 0x88, 0x23, 0xD2, 0x0A,
                /* 0298 */  0xC4, 0xFF, 0x7F, 0x7F                         
            })
        }
    }

    Name (GPSP, Buffer (0x24) {})
    CreateDWordField (GPSP, Zero, RETN)
    CreateDWordField (GPSP, 0x04, VRV1)
    CreateDWordField (GPSP, 0x08, TGPU)
    CreateDWordField (GPSP, 0x0C, PDSS)
    CreateDWordField (GPSP, 0x10, SFAN)
    CreateDWordField (GPSP, 0x14, SKNT)
    CreateDWordField (GPSP, 0x18, CPUE)
    CreateDWordField (GPSP, 0x1C, TMP1)
    CreateDWordField (GPSP, 0x20, TMP2)
    Scope (_SB.PCI0.P0P2.VGA)
    {
        Name (DGPS, Zero)
        Name (P3MO, Zero)
        Name (_PSC, Zero)  // _PSC: Power State Current
        Name (SETF, Zero)
        Name (GPRF, Zero)
        Name (TGPC, Buffer (0x04)
        {
             0x00                                           
        })
        Method (GC6I, 0, Serialized)
        {
            CreateField (TGPC, 0x06, 0x02, ECOC)
            CreateField (TGPC, 0x0A, 0x02, PRGE)
            ISMI (0xB3)
            If (LOr (LEqual (ToInteger (PRGE), 0x03), LEqual (ToInteger (PRGE), One)))
            {
                Store (One, LNKD)
            }

            While (LNotEqual (LNKS, Zero))
            {
                Sleep (One)
            }

            ^^^LPCB.HEC.ECNV (Zero)
        }

        Method (GC6O, 0, Serialized)
        {
            CreateField (TGPC, 0x06, 0x02, ECOC)
            CreateField (TGPC, 0x08, 0x02, PRGX)
            ISMI (0xB4)
            If (LEqual (ToInteger (PRGX), Zero))
            {
                Store (Zero, LNKD)
            }

            SGPL (0x32, One, Zero)
            SGPL (0x36, One, One)
            While (LNotEqual (RGPL (0x11, One), One))
            {
                Store (Zero, Local0)
                While (LLess (Local0, 0x1E))
                {
                    Add (Local0, One, Local0)
                    Stall (0x32)
                }
            }

            Store (Zero, Local0)
            While (LLess (Local0, 0x1E))
            {
                Add (Local0, One, Local0)
                Stall (0x32)
            }

            SGPL (0x32, One, One)
            CLER ()
            If (LEqual (ToInteger (PRGX), 0x03))
            {
                Store (Zero, LNKD)
            }

            While (LLess (LNKS, 0x07))
            {
                Store (0x20, Local0)
                While (Local0)
                {
                    If (LLess (LNKS, 0x07))
                    {
                        Stall (0x64)
                        Decrement (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                If (LEqual (Local0, Zero))
                {
                    Store (One, RTLK)
                    Stall (0x64)
                }
            }

            ^^^LPCB.HEC.ECNV (One)
        }

        Method (GETS, 0, Serialized)
        {
            If (LEqual (RGPL (0x36, One), One))
            {
                Return (One)
            }
            ElseIf (LEqual (^^^LPCB.HEC.RPIN (0x09, 0x04), One))
            {
                Return (0x03)
            }
            Else
            {
                Return (0x02)
            }
        }

        Method (GOBT, 1, NotSerialized)
        {
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                Return (Zero)
            }

            Return (Zero)
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (NVOB, Local0)
            Add (Arg0, Local0, Local0)
            Store (Arg1, Local1)
            Name (VBUF, Buffer (Arg1) {})
            OperationRegion (VROM, SystemMemory, Local0, 0x1000)
            Field (VROM, ByteAcc, NoLock, Preserve)
            {
                ROMI,   32768
            }

            Store (ROMI, VBUF)
            Return (VBUF)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                Store (Zero, Local0)
                Store (ShiftLeft (DerefOf (Index (Arg3, 0x03)), 0x18), Local0)
                Add (ShiftLeft (DerefOf (Index (Arg3, 0x02)), 0x10), Local0, Local0)
                Add (ShiftLeft (DerefOf (Index (Arg3, One)), 0x08), Local0, Local0)
                Add (ShiftLeft (DerefOf (Index (Arg3, Zero)), Zero), Local0, Local0)
                If (LNotEqual (Arg1, 0x0100))
                {
                    Return (Buffer (0x04)
                    {
                         0x02, 0x00, 0x00, 0x80                         
                    })
                }

                Name (SUBF, Zero)
                Store (Arg2, SUBF)
                If (LEqual (SUBF, Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x01, 0x04                         
                    })
                }

                If (LEqual (SUBF, 0x06))
                {
                    Return (Package (0x0F)
                    {
                        0x0110, 
                        0x2C, 
                        0x80000100, 
                        0x2C, 
                        0x0110, 
                        0x80000100, 
                        0x2C, 
                        0x80087330, 
                        0x2C, 
                        0x0110, 
                        0x80087330, 
                        0x2C, 
                        0x80000100, 
                        0x80087330, 
                        0x2C
                    })
                }

                If (LEqual (SUBF, 0x10))
                {
                    ShiftRight (Local0, 0x10, Local2)
                    If (LEqual (Local2, 0x564B))
                    {
                        Return (OPVK)
                    }

                    Return (Zero)
                }

                If (LEqual (SUBF, 0x1A))
                {
                    CreateField (Arg3, One, One, DVSR)
                    CreateField (Arg3, 0x02, One, DVSC)
                    ShiftRight (Local0, 0x18, Local2)
                    If (LEqual (Local2, 0x03))
                    {
                        Store (One, P3MO)
                    }
                    Else
                    {
                        Store (Zero, P3MO)
                    }

                    Name (RBUF, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateField (RBUF, Zero, One, OPEN)
                    CreateField (RBUF, 0x03, 0x02, CGCS)
                    CreateField (RBUF, 0x06, One, SHPC)
                    CreateField (RBUF, 0x08, One, SNSR)
                    CreateField (RBUF, 0x18, 0x03, DGPC)
                    Store (One, OPEN)
                    Store (One, SHPC)
                    Store (One, DGPC)
                    If (ToInteger (DVSC))
                    {
                        If (ToInteger (DVSR))
                        {
                            Store (One, GPRF)
                        }
                        Else
                        {
                            Store (Zero, GPRF)
                        }
                    }

                    Store (GPRF, SNSR)
                    If (DGPS)
                    {
                        Store (Zero, CGCS)
                    }
                    Else
                    {
                        Store (0x03, CGCS)
                    }

                    Return (RBUF)
                }
            }
            ElseIf (LEqual (Arg0, ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
            {
                Store (Zero, Local0)
                Store (ShiftLeft (DerefOf (Index (Arg3, 0x03)), 0x18), Local0)
                Add (ShiftLeft (DerefOf (Index (Arg3, 0x02)), 0x10), Local0, Local0)
                Add (ShiftLeft (DerefOf (Index (Arg3, One)), 0x08), Local0, Local0)
                Add (ShiftLeft (DerefOf (Index (Arg3, Zero)), Zero), Local0, Local0)
                If (LNotEqual (Arg1, 0x0100))
                {
                    Return (Buffer (0x04)
                    {
                         0x02, 0x00, 0x00, 0x80                         
                    })
                }

                Name (SBF1, Zero)
                Store (Arg2, SBF1)
                Name (PSCP, Zero)
                Name (PSTS, Zero)
                If (LEqual (SBF1, Zero))
                {
                    Return (Buffer (0x08)
                    {
                         0x01, 0x00, 0x00, 0x00, 0x0F, 0x04, 0x00, 0x00 
                    })
                }

                If (LEqual (SBF1, 0x20))
                {
                    ShiftRight (Local0, 0x19, Local2)
                    If (LAnd (Local2, One))
                    {
                        Or (PSTS, 0x02000000, PSTS)
                        ShiftRight (Local0, 0x18, Local2)
                        If (LAnd (Local2, One))
                        {
                            Or (PSTS, 0x01000000, PSTS)
                        }
                    }

                    ShiftRight (Local0, 0x1D, Local2)
                    If (LAnd (Local2, One))
                    {
                        Or (PSTS, 0x20000000, PSTS)
                        ShiftRight (Local0, 0x1A, Local2)
                        If (LAnd (Local2, One))
                        {
                            Or (PSTS, 0x04000000, PSTS)
                        }
                    }

                    Or (PSTS, 0x40000000, PSTS)
                    And (PSTS, 0x41000000, PSTS)
                    Return (PSTS)
                }

                If (LEqual (SBF1, 0x21))
                {
                    Return (\_PR.CPU0._PSS)
                }

                If (LEqual (SBF1, 0x22))
                {
                    CreateDWordField (Arg3, Zero, PCAP)
                    Store (PCAP, PSCP)
                    Store (PCAP, \_PR.CPU0.MPPC)
                    PNOT ()
                    Return (PCAP)
                }

                If (LEqual (SBF1, 0x23))
                {
                    Return (PSCP)
                }

                If (LEqual (SBF1, 0x2A))
                {
                    CreateByteField (Arg3, Zero, PSH0)
                    CreateByteField (Arg3, One, PSH1)
                    CreateBitField (Arg3, 0x08, GPUT)
                    CreateBitField (Arg3, 0x09, CPUT)
                    CreateBitField (Arg3, 0x0A, FANS)
                    CreateBitField (Arg3, 0x0B, SKIN)
                    CreateBitField (Arg3, 0x0C, ENGR)
                    CreateBitField (Arg3, 0x0D, SEN1)
                    CreateBitField (Arg3, 0x0E, SEN2)
                    While (One)
                    {
                        Store (PSH0, _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            If (CPUT)
                            {
                                Store (0x0200, RETN)
                                Or (RETN, PSH0, RETN)
                                Store (\_TZ.RTMP (), PDSS)
                            }

                            Return (GPSP)
                        }
                        ElseIf (LEqual (_T_0, One))
                        {
                            Store (0x0300, RETN)
                            Or (RETN, PSH0, RETN)
                            Store (0x03E8, PDSS)
                            Return (GPSP)
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            Store (0x0102, RETN)
                            Or (RETN, PSH0, RETN)
                            Store (Zero, VRV1)
                            Store (GPST (), TGPU)
                            Store (Zero, PDSS)
                            Store (Zero, SFAN)
                            Store (Zero, CPUE)
                            Store (Zero, SKNT)
                            Store (Zero, TMP1)
                            Store (Zero, TMP2)
                            Return (GPSP)
                        }

                        Break
                    }
                }
            }
            ElseIf (LEqual (Arg0, ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34")))
            {
                If (LEqual (GC6E, Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x02, 0x00, 0x00, 0x80                         
                    })
                }

                Name (SBF2, Zero)
                If (LLess (ToInteger (Arg1), 0x0100))
                {
                    Return (0x80000001)
                }

                While (One)
                {
                    Store (ToInteger (Arg2), SBF2)
                    If (LEqual (SBF2, Zero))
                    {
                        Return (Buffer (0x04)
                        {
                             0x1B, 0x00, 0x00, 0x00                         
                        })
                    }
                    ElseIf (LEqual (SBF2, One))
                    {
                        Name (JTB1, Buffer (0x04)
                        {
                             0x00                                           
                        })
                        CreateField (JTB1, Zero, One, JTEN)
                        CreateField (JTB1, One, 0x02, SREN)
                        CreateField (JTB1, 0x03, 0x03, PLPR)
                        CreateField (JTB1, 0x06, 0x02, FBPR)
                        CreateField (JTB1, 0x08, 0x02, GUPR)
                        CreateField (JTB1, 0x0A, One, GC6R)
                        CreateField (JTB1, 0x0B, One, PTRH)
                        CreateField (JTB1, 0x14, 0x0C, JTRV)
                        Store (One, JTEN)
                        Store (One, GC6R)
                        Store (0x0103, JTRV)
                        Return (JTB1)
                    }
                    ElseIf (LEqual (SBF2, 0x02))
                    {
                        Return (0x80000002)
                    }
                    ElseIf (LEqual (SBF2, 0x03))
                    {
                        CreateField (Arg3, Zero, 0x03, GUPC)
                        CreateField (Arg3, 0x04, One, PLPC)
                        Name (JTB3, Buffer (0x04)
                        {
                             0x00                                           
                        })
                        CreateField (JTB3, Zero, 0x03, GUPS)
                        CreateField (JTB3, 0x03, One, GPGS)
                        CreateField (JTB3, 0x07, One, PLST)
                        If (LEqual (ToInteger (GUPC), One))
                        {
                            Store (Arg3, TGPC)
                            GC6I ()
                            Store (One, PLST)
                        }
                        ElseIf (LEqual (ToInteger (GUPC), 0x02))
                        {
                            Store (Arg3, TGPC)
                            GC6I ()
                            If (LEqual (ToInteger (PLPC), Zero))
                            {
                                Store (Zero, PLST)
                            }
                        }
                        ElseIf (LEqual (ToInteger (GUPC), 0x03))
                        {
                            Store (Arg3, TGPC)
                            GC6O ()
                            If (LNotEqual (ToInteger (PLPC), Zero))
                            {
                                Store (Zero, PLST)
                            }
                        }
                        ElseIf (LEqual (ToInteger (GUPC), 0x04))
                        {
                            Store (Arg3, TGPC)
                            GC6O ()
                            If (LNotEqual (ToInteger (PLPC), Zero))
                            {
                                Store (Zero, PLST)
                            }
                        }
                        ElseIf (LEqual (ToInteger (GUPC), Zero))
                        {
                            Store (GETS (), GUPS)
                            If (LEqual (ToInteger (GUPS), One))
                            {
                                Store (One, GPGS)
                            }
                            Else
                            {
                                Store (Zero, GPGS)
                            }
                        }
                        ElseIf (LEqual (ToInteger (GUPC), 0x06))
                        {
                            ^^^LPCB.HEC.SPIN (0x09, 0x04, Zero)
                        }

                        Return (JTB3)
                    }
                    ElseIf (LEqual (SBF2, 0x04))
                    {
                        Return (0x80000002)
                    }

                    Break
                }

                Return (0x80000002)
            }
            Else
            {
                Return (Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                         
                })
            }

            Return (Zero)
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            Store (Zero, _PSC)
            If (DGPS)
            {
                _ON ()
                Store (Zero, DGPS)
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (P3MO, One))
            {
                _OFF ()
            }

            Store (Zero, P3MO)
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (OPTW, 1, NotSerialized)
        {
            ^^^LPCB.HEC.SPIN (0x09, 0x04, Zero)
            If (LEqual (Arg0, 0x04))
            {
                If (LEqual (RGPL (0x36, One), One)) {}
            }
        }

        Method (OPTS, 1, NotSerialized)
        {
        }
    }

    Scope (_SB.PCI0.GFX0)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Return (^^P0P2.VGA._DSM (Arg0, Arg1, Arg2, Arg3))
        }
    }

    Scope (_SB.PCI0.P0P2)
    {
        OperationRegion (RPCI, PCI_Config, Zero, 0xF0)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            Offset (0xAC), 
                ,   4, 
            CMLW,   6
        }

        OperationRegion (PEGM, SystemMemory, 0xF8008000, 0x0FF0)
        Field (PEGM, ByteAcc, NoLock, Preserve)
        {
            REG0,   32, 
            REG1,   32, 
            REG2,   32, 
            Offset (0x19), 
            RE19,   8, 
            RE1A,   8, 
            Offset (0x3E), 
            RE3E,   8, 
            Offset (0x84), 
            PWST,   2, 
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            RTLK,   1, 
            Offset (0xB3), 
                ,   3, 
            LTST,   1, 
            RSCC,   1, 
            Offset (0xB4), 
                ,   6, 
            HPCP,   1, 
            SPLV,   8, 
            SPLS,   2, 
                ,   2, 
            PHSN,   13, 
            HPD,    8, 
            Offset (0x114), 
            T0V0,   1, 
            TV0M,   7, 
            Offset (0x11A), 
                ,   1, 
            VCNP,   1, 
            Offset (0x214), 
            Offset (0x216), 
            LNKS,   4, 
            Offset (0x504), 
            Offset (0x506), 
            PCFG,   2, 
            Offset (0x508), 
            TREN,   1, 
            Offset (0xC20), 
                ,   4, 
            AFES,   2, 
            Offset (0xD0C), 
                ,   20, 
            LREV,   1
        }

        Method (RBP0, 1, NotSerialized)
        {
            Store (Add (0xF8008000, Arg0), Local7)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Return (TEMP)
        }

        Method (WBP0, 2, NotSerialized)
        {
            Store (Add (0xF8008000, Arg0), Local7)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Store (Arg1, TEMP)
            Return (TEMP)
        }

        Method (BSPR, 2, NotSerialized)
        {
            Store (Add (0xF800891C, Multiply (Arg0, 0x20)), Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, DWordAcc, NoLock, Preserve)
            {
                    ,   31, 
                TEMP,   1
            }

            Store (Arg1, TEMP)
        }

        Method (C7OK, 1, NotSerialized)
        {
            OperationRegion (MWHB, SystemMemory, 0xF8000000, 0x1000)
            Field (MWHB, DWordAcc, NoLock, Preserve)
            {
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17
            }

            OperationRegion (MBAR, SystemMemory, Add (ShiftLeft (MHBR, 0x0F), 0x5000), 0x1000)
            Field (MBAR, ByteAcc, NoLock, Preserve)
            {
                Offset (0xDA8), 
                    ,   2, 
                C7AD,   1
            }

            Store (Arg0, C7AD)
        }
    }

    Scope (_SB.PCI0.P0P2.VGA)
    {
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        Name (FBDL, Zero)
        Name (MBDL, Zero)
        Name (CBDL, Zero)
        Name (HSTR, Zero)
        Name (UULN, Zero)
        Name (INDX, Zero)
        Name (POFF, Zero)
        Name (PLEN, Zero)
        Name (PDAT, Zero)
        Name (WLSB, Zero)
        Name (WMSB, Zero)
        Name (DMLW, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        Name (CTXT, Zero)
        Name (DAT0, Buffer (0x04EC)
        {
            /* 0000 */  0xD8, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x09,
            /* 0010 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x08, 0x09, 0x04,
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x0C, 0x09, 0x04, 0x00,
            /* 0020 */  0x00, 0x00, 0x00, 0x10, 0x09, 0x04, 0x00, 0x00,
            /* 0028 */  0x00, 0x00, 0x0C, 0x08, 0x04, 0x00, 0x00, 0x00,
            /* 0030 */  0x00, 0x20, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0038 */  0x24, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x28,
            /* 0040 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x09,
            /* 0048 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x30, 0x09, 0x04,
            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x2C, 0x08, 0x04, 0x00,
            /* 0058 */  0x00, 0x00, 0x00, 0x40, 0x09, 0x04, 0x00, 0x00,
            /* 0060 */  0x00, 0x00, 0x44, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 0068 */  0x00, 0x48, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0070 */  0x4C, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x50,
            /* 0078 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x08,
            /* 0080 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x09, 0x04,
            /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x64, 0x09, 0x04, 0x00,
            /* 0090 */  0x00, 0x00, 0x00, 0x68, 0x09, 0x04, 0x00, 0x00,
            /* 0098 */  0x00, 0x00, 0x6C, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 00A0 */  0x00, 0x70, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 00A8 */  0x6C, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x80,
            /* 00B0 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x84, 0x09,
            /* 00B8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x88, 0x09, 0x04,
            /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x8C, 0x09, 0x04, 0x00,
            /* 00C8 */  0x00, 0x00, 0x00, 0x90, 0x09, 0x04, 0x00, 0x00,
            /* 00D0 */  0x00, 0x00, 0x8C, 0x08, 0x04, 0x00, 0x00, 0x00,
            /* 00D8 */  0x00, 0xA0, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 00E0 */  0xA4, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xA8,
            /* 00E8 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x09,
            /* 00F0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x09, 0x04,
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0xAC, 0x08, 0x04, 0x00,
            /* 0100 */  0x00, 0x00, 0x00, 0xC0, 0x09, 0x04, 0x00, 0x00,
            /* 0108 */  0x00, 0x00, 0xC4, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 0110 */  0x00, 0xC8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0118 */  0xCC, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0,
            /* 0120 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x08,
            /* 0128 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x09, 0x04,
            /* 0130 */  0x00, 0x00, 0x00, 0x00, 0xE4, 0x09, 0x04, 0x00,
            /* 0138 */  0x00, 0x00, 0x00, 0xE8, 0x09, 0x04, 0x00, 0x00,
            /* 0140 */  0x00, 0x00, 0xEC, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 0148 */  0x00, 0xF0, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0150 */  0xEC, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x30,
            /* 0158 */  0x0C, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
            /* 0160 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x0A, 0x04,
            /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x08, 0x0A, 0x04, 0x00,
            /* 0170 */  0x00, 0x00, 0x00, 0x0C, 0x0A, 0x04, 0x00, 0x00,
            /* 0178 */  0x00, 0x00, 0xA0, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0180 */  0x00, 0xA4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0188 */  0xA8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC,
            /* 0190 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x0A,
            /* 0198 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x0A, 0x04,
            /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0xB8, 0x0A, 0x04, 0x00,
            /* 01A8 */  0x00, 0x00, 0x00, 0xBC, 0x0A, 0x04, 0x00, 0x00,
            /* 01B0 */  0x00, 0x00, 0xC0, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 01B8 */  0x00, 0xC4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 01C0 */  0xC8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC,
            /* 01C8 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x0A,
            /* 01D0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xD4, 0x0A, 0x04,
            /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0xD8, 0x0A, 0x04, 0x00,
            /* 01E0 */  0x00, 0x00, 0x00, 0xDC, 0x0A, 0x04, 0x00, 0x00,
            /* 01E8 */  0x00, 0x00, 0xE0, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 01F0 */  0x00, 0xE4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 01F8 */  0xE8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xEC,
            /* 0200 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x0A,
            /* 0208 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xF4, 0x0A, 0x04,
            /* 0210 */  0x00, 0x00, 0x00, 0x00, 0xF8, 0x0A, 0x04, 0x00,
            /* 0218 */  0x00, 0x00, 0x00, 0xFC, 0x0A, 0x04, 0x00, 0x00,
            /* 0220 */  0x00, 0x00, 0x10, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0228 */  0x00, 0x14, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0230 */  0x18, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x1C,
            /* 0238 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x20, 0x0A,
            /* 0240 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x24, 0x0A, 0x04,
            /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x28, 0x0A, 0x04, 0x00,
            /* 0250 */  0x00, 0x00, 0x00, 0x2C, 0x0A, 0x04, 0x00, 0x00,
            /* 0258 */  0x00, 0x00, 0x30, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0260 */  0x00, 0x34, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0268 */  0x38, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x3C,
            /* 0270 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x40, 0x0A,
            /* 0278 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x44, 0x0A, 0x04,
            /* 0280 */  0x00, 0x00, 0x00, 0x00, 0x48, 0x0A, 0x04, 0x00,
            /* 0288 */  0x00, 0x00, 0x00, 0x4C, 0x0A, 0x04, 0x00, 0x00,
            /* 0290 */  0x00, 0x00, 0x50, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0298 */  0x00, 0x54, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 02A0 */  0x58, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x5C,
            /* 02A8 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x0A,
            /* 02B0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x64, 0x0A, 0x04,
            /* 02B8 */  0x00, 0x00, 0x00, 0x00, 0x68, 0x0A, 0x04, 0x00,
            /* 02C0 */  0x00, 0x00, 0x00, 0x6C, 0x0A, 0x04, 0x00, 0x00,
            /* 02C8 */  0x00, 0x00, 0x70, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 02D0 */  0x00, 0x74, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 02D8 */  0x78, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x7C,
            /* 02E0 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0A,
            /* 02E8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x84, 0x0A, 0x04,
            /* 02F0 */  0x00, 0x00, 0x00, 0x00, 0x88, 0x0A, 0x04, 0x00,
            /* 02F8 */  0x00, 0x00, 0x00, 0x8C, 0x0A, 0x04, 0x00, 0x00,
            /* 0300 */  0x00, 0x00, 0x90, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0308 */  0x00, 0x94, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0310 */  0x98, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x9C,
            /* 0318 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x18, 0x09,
            /* 0320 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x38, 0x09, 0x04,
            /* 0328 */  0x00, 0x00, 0x00, 0x00, 0x58, 0x09, 0x04, 0x00,
            /* 0330 */  0x00, 0x00, 0x00, 0x78, 0x09, 0x04, 0x00, 0x00,
            /* 0338 */  0x00, 0x00, 0x98, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 0340 */  0x00, 0xB8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0348 */  0xD8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF8,
            /* 0350 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x24, 0x02,
            /* 0358 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xF8, 0x01, 0x04,
            /* 0360 */  0x00, 0x00, 0x00, 0x00, 0x60, 0x02, 0x04, 0x00,
            /* 0368 */  0x00, 0x00, 0x00, 0x28, 0x0C, 0x04, 0x00, 0x00,
            /* 0370 */  0x00, 0x00, 0x38, 0x0C, 0x04, 0x00, 0x00, 0x00,
            /* 0378 */  0x00, 0x14, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0380 */  0x04, 0x00, 0x02, 0x00, 0x00, 0x0C, 0x00, 0x01,
            /* 0388 */  0x00, 0x19, 0x00, 0x01, 0x00, 0x1A, 0x00, 0x01,
            /* 0390 */  0x00, 0x1C, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x01,
            /* 0398 */  0x00, 0x20, 0x00, 0x02, 0x00, 0x00, 0x22, 0x00,
            /* 03A0 */  0x02, 0x00, 0x00, 0x24, 0x00, 0x02, 0x00, 0x00,
            /* 03A8 */  0x26, 0x00, 0x02, 0x00, 0x00, 0x28, 0x00, 0x04,
            /* 03B0 */  0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x04, 0x00,
            /* 03B8 */  0x00, 0x00, 0x00, 0x3C, 0x00, 0x01, 0x00, 0x3D,
            /* 03C0 */  0x00, 0x01, 0x00, 0x3E, 0x00, 0x02, 0x00, 0x00,
            /* 03C8 */  0x84, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x8C,
            /* 03D0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x92, 0x00,
            /* 03D8 */  0x02, 0x00, 0x00, 0x94, 0x00, 0x04, 0x00, 0x00,
            /* 03E0 */  0x00, 0x00, 0x98, 0x00, 0x02, 0x00, 0x00, 0xA2,
            /* 03E8 */  0x00, 0x02, 0x00, 0x00, 0xA8, 0x00, 0x02, 0x00,
            /* 03F0 */  0x00, 0xAC, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 03F8 */  0xB0, 0x00, 0x02, 0x00, 0x00, 0xB4, 0x00, 0x04,
            /* 0400 */  0x00, 0x00, 0x00, 0x00, 0xBC, 0x00, 0x02, 0x00,
            /* 0408 */  0x00, 0xC8, 0x00, 0x02, 0x00, 0x00, 0xD0, 0x00,
            /* 0410 */  0x02, 0x00, 0x00, 0xEC, 0x00, 0x04, 0x00, 0x00,
            /* 0418 */  0x00, 0x00, 0x14, 0x01, 0x04, 0x00, 0x00, 0x00,
            /* 0420 */  0x00, 0x44, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0428 */  0x50, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x58,
            /* 0430 */  0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x01,
            /* 0438 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x01, 0x04,
            /* 0440 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x00,
            /* 0448 */  0x00, 0x00, 0x00, 0x04, 0x02, 0x04, 0x00, 0x00,
            /* 0450 */  0x00, 0x00, 0x08, 0x02, 0x04, 0x00, 0x00, 0x00,
            /* 0458 */  0x00, 0x28, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0460 */  0x2C, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x38,
            /* 0468 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x40, 0x02,
            /* 0470 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x44, 0x02, 0x04,
            /* 0478 */  0x00, 0x00, 0x00, 0x00, 0x50, 0x02, 0x04, 0x00,
            /* 0480 */  0x00, 0x00, 0x00, 0x58, 0x02, 0x04, 0x00, 0x00,
            /* 0488 */  0x00, 0x00, 0x5C, 0x02, 0x04, 0x00, 0x00, 0x00,
            /* 0490 */  0x00, 0xD0, 0x0C, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0498 */  0x34, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF4,
            /* 04A0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x0D,
            /* 04A8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xA4, 0x0D, 0x04,
            /* 04B0 */  0x00, 0x00, 0x00, 0x00, 0xA8, 0x0D, 0x04, 0x00,
            /* 04B8 */  0x00, 0x00, 0x00, 0xAC, 0x0D, 0x04, 0x00, 0x00,
            /* 04C0 */  0x00, 0x00, 0xB0, 0x0D, 0x04, 0x00, 0x00, 0x00,
            /* 04C8 */  0x00, 0xB4, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 04D0 */  0xB8, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xBC,
            /* 04D8 */  0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x01,
            /* 04E0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x04,
            /* 04E8 */  0xFF, 0xFF, 0xFF, 0xFF                         
        })
        Name (DAT1, Buffer (0x43)
        {
            /* 0000 */  0x06, 0x00, 0x02, 0xFF, 0xFF, 0x1E, 0x00, 0x02,
            /* 0008 */  0xFF, 0xFF, 0xAA, 0x00, 0x02, 0xFF, 0xFF, 0xC0,
            /* 0010 */  0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xD2, 0x00,
            /* 0018 */  0x02, 0xFF, 0xFF, 0xC4, 0x01, 0x04, 0xFF, 0xFF,
            /* 0020 */  0xFF, 0xFF, 0xD0, 0x01, 0x04, 0xFF, 0xFF, 0xFF,
            /* 0028 */  0xFF, 0xF0, 0x01, 0x04, 0xFF, 0xFF, 0xFF, 0xFF,
            /* 0030 */  0x9C, 0x0D, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xB2,
            /* 0038 */  0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x04, 0xFF,
            /* 0040 */  0xFF, 0xFF, 0xFF                               
        })
        OperationRegion (PCAP, PCI_Config, EECP, 0x14)
        Field (PCAP, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
                ,   4, 
            EMLW,   6, 
            Offset (0x10), 
            LCTL,   16
        }

        OperationRegion (PEGR, SystemMemory, 0xF8008000, 0x0100)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            PREG,   2048
        }

        Name (RST0, Buffer (0x0100)
        {
             0x00                                           
        })
        OperationRegion (PCI2, SystemMemory, NPXB, 0x0100)
        Field (PCI2, DWordAcc, Lock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            VGAR,   2000
        }

        Name (VGAB, Buffer (0xFA)
        {
             0x00                                           
        })
        Method (RSTP, 0, NotSerialized)
        {
            If (LEqual (SETF, One))
            {
                Store (RST0, PREG)
            }
        }

        Method (RSTV, 0, NotSerialized)
        {
            If (LEqual (SETF, One))
            {
                If (LNotEqual (GPRF, One))
                {
                    Store (Zero, CMDR)
                    Store (VGAB, VGAR)
                    Store (0x06, CMDR)
                }
            }
        }

        Method (SAVO, 0, NotSerialized)
        {
            If (LEqual (CTXT, Zero))
            {
                Store (PREG, RST0)
                If (LNotEqual (GPRF, One))
                {
                    Store (VGAR, VGAB)
                }

                Store (One, CTXT)
            }
        }

        OperationRegion (PCIS, PCI_Config, Zero, 0xF0)
        Field (PCIS, DWordAcc, Lock, Preserve)
        {
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16, 
            Offset (0x4C), 
            WVID,   16, 
            WDID,   16
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
        }

        Method (GMXB, 0, NotSerialized)
        {
            Store (PCFG, HSTR)
            If (LEqual (HSTR, 0x03))
            {
                Store (0x08, Local0)
            }
            Else
            {
                Store (0x04, Local0)
            }

            Return (Local0)
        }

        Method (PUAB, 0, NotSerialized)
        {
            Store (Zero, FBDL)
            Store (Zero, CBDL)
            Store (PCFG, HSTR)
            If (LEqual (HSTR, 0x03))
            {
                Store (Zero, FBDL)
                Store (0x08, CBDL)
            }
            ElseIf (LEqual (LREV, Zero))
            {
                Store (Zero, FBDL)
                Store (0x04, CBDL)
            }
            Else
            {
                Store (0x04, FBDL)
                Store (0x04, CBDL)
            }

            Store (One, INDX)
            If (LNotEqual (CBDL, Zero))
            {
                While (LLessEqual (INDX, CBDL))
                {
                    BSPR (FBDL, Zero)
                    Increment (FBDL)
                    Increment (INDX)
                }
            }
        }

        Method (PDUB, 1, NotSerialized)
        {
            Store (Zero, FBDL)
            Store (Arg0, CBDL)
            If (LEqual (CBDL, Zero))
            {
                Return (Zero)
            }

            If (LEqual (HSTR, 0x03))
            {
                If (LEqual (LREV, Zero))
                {
                    Store (Subtract (0x08, CBDL), FBDL)
                }
                Else
                {
                    Store (Zero, FBDL)
                }
            }
            ElseIf (LEqual (LREV, Zero))
            {
                Store (Subtract (0x04, CBDL), FBDL)
            }
            Else
            {
                Store (0x04, FBDL)
            }

            Store (One, INDX)
            While (LLessEqual (INDX, CBDL))
            {
                BSPR (FBDL, One)
                Increment (FBDL)
                Increment (INDX)
            }
        }

        Method (SPP0, 0, NotSerialized)
        {
            Store (Zero, INDX)
            While (One)
            {
                Store (DerefOf (Index (DAT0, INDX)), WLSB)
                Increment (INDX)
                Store (DerefOf (Index (DAT0, INDX)), WMSB)
                Increment (INDX)
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF)
                Store (DerefOf (Index (DAT0, INDX)), PLEN)
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    Store (RBP0 (POFF), Index (DAT0, INDX))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (RPP0, 0, NotSerialized)
        {
            Store (Zero, INDX)
            While (One)
            {
                Store (DerefOf (Index (DAT0, INDX)), WLSB)
                Increment (INDX)
                Store (DerefOf (Index (DAT0, INDX)), WMSB)
                Increment (INDX)
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF)
                Store (DerefOf (Index (DAT0, INDX)), PLEN)
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    WBP0 (POFF, DerefOf (Index (DAT0, INDX)))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (CLER, 0, NotSerialized)
        {
            Store (Zero, INDX)
            While (One)
            {
                Store (DerefOf (Index (DAT1, INDX)), WLSB)
                Increment (INDX)
                Store (DerefOf (Index (DAT1, INDX)), WMSB)
                Increment (INDX)
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF)
                Store (DerefOf (Index (DAT1, INDX)), PLEN)
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    WBP0 (POFF, DerefOf (Index (DAT1, INDX)))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (_ON, 0, NotSerialized)  // _ON_: Power On
        {
            If (LEqual (RGPL (0x36, One), Zero))
            {
                ^^^LPCB.HEC.SPIN (0x09, 0x04, Zero)
                RSTP ()
                SGPL (0x32, One, Zero)
                Sleep (0x64)
                SGPL (0x36, One, One)
                Sleep (0x64)
                SGPL (0x32, One, One)
                Sleep (0xC8)
                If (LGreaterEqual (PCSL, 0x04))
                {
                    If (LEqual (SC7A, One))
                    {
                        C7OK (Zero)
                    }
                }

                If (LEqual (SETF, One))
                {
                    RPP0 ()
                    CLER ()
                }

                Store (Zero, AFES)
                If (LGreaterEqual (And (PNHM, 0x0F), 0x03))
                {
                    If (LNotEqual (P0UB, Zero))
                    {
                        PUAB ()
                        If (LEqual (P0UB, 0xFF))
                        {
                            If (LGreater (CMLW, DMLW))
                            {
                                Subtract (CMLW, DMLW, UULN)
                            }
                            Else
                            {
                                Store (Zero, UULN)
                            }

                            Store (Divide (UULN, 0x02, ), CBDL)
                        }
                        ElseIf (LNotEqual (P0UB, Zero))
                        {
                            Store (P0UB, CBDL)
                        }

                        Store (GMXB (), MBDL)
                        If (LGreater (CBDL, MBDL))
                        {
                            Store (MBDL, CBDL)
                        }

                        PDUB (CBDL)
                    }
                }

                Store (One, TREN)
                Store (Zero, LNKD)
                While (LLess (LNKS, 0x07))
                {
                    Store (0x20, Local0)
                    While (Local0)
                    {
                        If (LLess (LNKS, 0x07))
                        {
                            Stall (0x64)
                            Decrement (Local0)
                        }
                        Else
                        {
                            Break
                        }
                    }

                    If (LEqual (Local0, Zero))
                    {
                        Store (One, RTLK)
                        Stall (0x64)
                    }
                }

                If (LEqual (SETF, One))
                {
                    If (LNotEqual (GPRF, One))
                    {
                        Store (HVID, WVID)
                        Store (HDID, WDID)
                    }
                }

                Or (And (ELCT, 0x43), And (LCTL, 0xFFBC), LCTL)
                ISMI (0xB4)
                RSTV ()
            }
        }

        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            ^^^LPCB.HEC.SPIN (0x09, 0x04, Zero)
            SAVO ()
            Store (LCTL, ELCT)
            If (LNotEqual (GPRF, One))
            {
                Store (SVID, HVID)
                Store (SDID, HDID)
            }

            Store (EMLW, DMLW)
            SPP0 ()
            Store (One, LNKD)
            While (LNotEqual (LNKS, Zero))
            {
                Sleep (One)
            }

            Store (0x02, AFES)
            If (LGreaterEqual (And (PNHM, 0x0F), 0x03))
            {
                If (LNotEqual (P0UB, Zero))
                {
                    Store (GMXB (), MBDL)
                    PDUB (MBDL)
                }
            }

            If (LGreaterEqual (PCSL, 0x04))
            {
                If (LEqual (SC7A, One))
                {
                    C7OK (One)
                }
            }

            Sleep (0x64)
            SGPL (0x32, One, Zero)
            Sleep (0xC8)
            SGPL (0x36, One, Zero)
            Sleep (0x64)
            Store (One, SETF)
            Store (0x03, _PSC)
            Store (One, DGPS)
            ISMI (0xB3)
        }
    }

    Scope (_SB.PCI0.P0P2.VGA)
    {
        Method (GPST, 0, NotSerialized)
        {
            Return (0x50)
        }
    }

    Scope (_SB.PCI0.LPCB.HEC)
    {
        Method (_QCA, 0, NotSerialized)  // _Qxx: EC Query
        {
            CreateField (^^^P0P2.VGA.TGPC, 0x0A, 0x02, PRGE)
            If (LEqual (ToInteger (PRGE), Zero))
            {
                Store (One, ^^^P0P2.LNKD)
            }

            SGPL (0x32, One, Zero)
            SGPL (0x36, One, Zero)
            If (LEqual (ToInteger (PRGE), 0x02))
            {
                Store (One, ^^^P0P2.LNKD)
            }
        }

        Method (_QCB, 0, NotSerialized)  // _Qxx: EC Query
        {
        }

        Mutex (GC6M, 0x00)
        Method (ECNV, 1, NotSerialized)
        {
            Acquire (GC6M, 0xFFFF)
            If (LEqual (Arg0, Zero))
            {
                WRAM (0x0C0E, One)
            }

            If (LEqual (Arg0, One))
            {
                WRAM (0x0C0E, 0x02)
            }

            Release (GC6M)
        }
    }

    Scope (_SB.ATKD)
    {
        Method (MF1F, 4, NotSerialized)
        {
            If (LEqual (Arg1, 0x1F))
            {
                OperationRegion (F01F, SystemMemory, Arg0, 0x08)
                Field (F01F, DWordAcc, NoLock, Preserve)
                {
                    MFUN,   16, 
                    SFUN,   16, 
                    LEN,    16, 
                    STAS,   8, 
                    EROR,   8
                }

                BSMI (Arg0)
                And (STAS, 0xFE, STAS)
            }
        }

        Method (MF6A, 5, NotSerialized)
        {
            If (LEqual (Arg2, 0x6A))
            {
                \WMI0.WSMI (Arg4)
            }
        }
    }

    Scope (_SB.ATKD)
    {
        Method (FSMI, 1, NotSerialized)
        {
            Store (Arg0, FSFN)
            Or (Arg0, 0xA0, Local0)
            ISMI (0x90)
            Return (FSTA)
        }

        Method (FLSH, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            FSMI (Zero)
        }

        Method (FINI, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Return (FSMI (One))
        }

        Method (FERS, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            Return (FSMI (0x02))
        }

        Method (FWRI, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Store (0x1000, FSIZ)
            Return (Subtract (0x1000, FSMI (0x03)))
        }

        Method (FWRP, 0, NotSerialized)
        {
            Store (Zero, FSIZ)
            Return (Subtract (0x1000, FSMI (0x03)))
        }

        Method (FEBW, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Return (FSMI (0x04))
        }

        Method (FEBR, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Return (FSMI (0x05))
        }

        Method (FEDW, 0, NotSerialized)
        {
            Return (FSMI (0x06))
        }

        Method (ECSR, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            Return (FSMI (0x07))
        }

        Method (FLSC, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            Return (FSMI (0x08))
        }

        Method (FIME, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            Return (FSMI (0x09))
        }

        Method (FREC, 1, NotSerialized)
        {
            Store (Arg0, FSTA)
            Return (FSMI (0x0A))
        }

        Method (FCPW, 1, NotSerialized)
        {
            Store (Arg0, FADR)
            Store (0x1000, FSIZ)
            Return (FSMI (0x0D))
        }

        Method (FCPP, 0, NotSerialized)
        {
            Store (Zero, FSIZ)
            Return (FSMI (0x0D))
        }

        Method (WFLH, 5, Serialized)
        {
            If (LEqual (Arg2, 0x66))
            {
                If (LEqual (Arg3, One))
                {
                    OperationRegion (WFLS, SystemMemory, Arg0, 0x0100)
                    Field (WFLS, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x06), 
                        STAS,   8, 
                        REST,   8, 
                        FSFN,   8, 
                        FSTA,   16, 
                        FADR,   32, 
                        FSIZ,   16
                    }

                    Store (0x90, TRTY)
                    Store (FSFN, ^^FSFN)
                    Store (FSTA, ^^FSTA)
                    Store (FADR, ^^FADR)
                    Store (FSIZ, ^^FSIZ)
                    If (LEqual (FSFN, One))
                    {
                        Store (Arg1, ^^FADR)
                    }
                    ElseIf (LEqual (FSFN, 0x80))
                    {
                        Store (Arg1, ^^FADR)
                    }
                    ElseIf (LEqual (FSFN, 0x81))
                    {
                        Store (Arg1, ^^FADR)
                    }

                    ISMI (0x90)
                    Store (0x012C, Local0)
                    While (LAnd (Local0, TRTY))
                    {
                        Sleep (One)
                        Decrement (Local0)
                    }

                    Store (^^FSFN, FSFN)
                    Store (^^FSTA, FSTA)
                    Store (^^FADR, FADR)
                    Store (^^FSIZ, FSIZ)
                    And (STAS, 0xFE, STAS)
                    Or (STAS, 0x80, STAS)
                    Return (Zero)
                }
                Else
                {
                    \WMI0.WSMI (Arg4)
                    Return (Zero)
                }

                Return (Zero)
            }

            Return (Zero)
        }

        Method (FIN2, 1, NotSerialized)
        {
            Store (Zero, FSTA)
            Return (FSMI (0x80))
        }
    }

    Scope (_SB.ATKD)
    {
        Method (DS3S, 1, NotSerialized)
        {
            Store (^^PCI0.LPCB.HEC.RRAM (0x02FA), Local0)
            If (LEqual (Arg0, 0x03))
            {
                If (DS3F)
                {
                    And (0xFE, Local0, Local0)
                }
                ElseIf (ACPF)
                {
                    And (0xFE, Local0, Local0)
                }
                Else
                {
                    Or (One, Local0, Local0)
                }
            }
            Else
            {
                And (0xFE, Local0, Local0)
            }

            ^^PCI0.LPCB.HEC.WRAM (0x02FA, Local0)
        }

        Method (DS3W, 1, NotSerialized)
        {
            If (LNot (DS3F))
            {
                Notify (SLPB, 0x02)
            }
        }

        Method (DESP, 1, Serialized)
        {
            If (Arg0)
            {
                Store (Zero, DS3F)
            }
            Else
            {
                Store (One, DS3F)
            }

            Return (One)
        }

        Method (GDS3, 1, Serialized)
        {
            If (DS3F)
            {
                Return (0x00010000)
            }
            Else
            {
                Return (0x00010001)
            }
        }

        Method (NS3P, 0, NotSerialized)
        {
            Store (^^PCI0.LPCB.HEC.RRAM (0x0C4A), Local0)
            Store (^^PCI0.LPCB.HEC.RRAM (0x0C4B), Local1)
            ShiftLeft (Local0, 0x08, Local0)
            Add (Local0, Local1, Local0)
            If (LEqual (Local0, Zero))
            {
                Store (MEMS, Local1)
                If (LEqual (Local1, 0x02))
                {
                    Subtract (0xFFFF, 0x14, Local1)
                    Or (Local1, 0x00080000, Local1)
                    Return (Local1)
                }

                If (LEqual (Local1, 0x04))
                {
                    Subtract (0xFFFF, 0x14, Local1)
                    Or (Local1, 0x00080000, Local1)
                    Return (Local1)
                }

                If (LEqual (Local1, 0x06))
                {
                    Subtract (0xFFFF, 0x14, Local1)
                    Or (Local1, 0x00080000, Local1)
                    Return (Local1)
                }

                If (LEqual (Local1, 0x08))
                {
                    Subtract (0xFFFF, 0x14, Local1)
                    Or (Local1, 0x00080000, Local1)
                    Return (Local1)
                }

                Subtract (0xFFFF, 0x14, Local1)
                Or (Local1, 0x00080000, Local1)
                Return (Local1)
            }

            Return (Local0)
        }

        Method (DS3P, 0, NotSerialized)
        {
            Store (^^PCI0.LPCB.HEC.RRAM (0x0C4A), Local0)
            Store (^^PCI0.LPCB.HEC.RRAM (0x0C4B), Local1)
            ShiftLeft (Local0, 0x08, Local0)
            Add (Local0, Local1, Local0)
            If (LEqual (Local0, Zero))
            {
                Store (MEMS, Local1)
                If (LEqual (Local1, 0x02))
                {
                    Subtract (0xFFFF, 0x08, Local1)
                    Or (Local1, 0x00080000, Local1)
                    Return (Local1)
                }

                If (LEqual (Local1, 0x04))
                {
                    Subtract (0xFFFF, 0x08, Local1)
                    Or (Local1, 0x00080000, Local1)
                    Return (Local1)
                }

                If (LEqual (Local1, 0x06))
                {
                    Subtract (0xFFFF, 0x08, Local1)
                    Or (Local1, 0x00080000, Local1)
                    Return (Local1)
                }

                If (LEqual (Local1, 0x08))
                {
                    Subtract (0xFFFF, 0x08, Local1)
                    Or (Local1, 0x00080000, Local1)
                    Return (Local1)
                }

                Subtract (0xFFFF, 0x08, Local1)
                Or (Local1, 0x00080000, Local1)
                Return (Local1)
            }

            Return (Local0)
        }

        Method (T2BF, 0, NotSerialized)
        {
            Store (^^PCI0.LPCB.HEC.SMBR (^^PCI0.LPCB.HEC.RDWD, 0x16, 0x13, Zero), Local0)
            If (LNotEqual (DerefOf (Index (Local0, Zero)), Zero))
            {
                Return (0xFFFF)
            }

            Store (DerefOf (Index (Local0, 0x02)), Local1)
            Return (Local1)
        }

        Method (N3MV, 0, NotSerialized)
        {
            Store (^^PCI0.LPCB.HEC.RRAM (0x0C48), Local0)
            Store (^^PCI0.LPCB.HEC.RRAM (0x0C49), Local1)
            ShiftLeft (Local0, 0x08, Local0)
            Add (Local0, Local1, Local0)
            If (LEqual (Local0, Zero))
            {
                Return (0x00083296)
            }

            Subtract (0xFFFF, Local0, Local0)
            Return (Local0)
        }

        Method (D3MV, 0, NotSerialized)
        {
            Store (^^PCI0.LPCB.HEC.RRAM (0x0C48), Local0)
            Store (^^PCI0.LPCB.HEC.RRAM (0x0C49), Local1)
            ShiftLeft (Local0, 0x08, Local0)
            Add (Local0, Local1, Local0)
            If (LEqual (Local0, Zero))
            {
                Return (0x000840BA)
            }

            Subtract (0xFFFF, Local0, Local0)
            Return (Local0)
        }

        Method (S4PC, 0, NotSerialized)
        {
            Return (0x18)
        }

        Method (IOMB, 1, Serialized)
        {
            Store (^^PCI0.LPCB.HEC.RRAM (0x02FA), Local0)
            If (Arg0)
            {
                Or (0x02, Local0, Local0)
            }
            Else
            {
                And (0xFD, Local0, Local0)
            }

            ^^PCI0.LPCB.HEC.WRAM (0x02FA, Local0)
            Return (One)
        }

        Method (IOMT, 1, Serialized)
        {
            Return (One)
        }
    }

    Scope (_SB.ATKD)
    {
        Method (MF42, 4, NotSerialized)
        {
            If (LEqual (Arg1, 0x42))
            {
                OperationRegion (F042, SystemMemory, Arg0, 0x08)
                Field (F042, DWordAcc, NoLock, Preserve)
                {
                    MFUN,   16, 
                    SFUN,   16, 
                    LEN,    16, 
                    STAS,   8, 
                    EROR,   8
                }

                Store (One, Local0)
                If (LEqual (Arg2, One))
                {
                    Store (SFB0 (Arg0, Arg3), Local0)
                }

                If (LEqual (Arg2, 0x02))
                {
                    Store (SAOC (Arg0, Arg3), Local0)
                }

                If (LEqual (Arg2, 0x03))
                {
                    Store (GBST (Arg0, Arg3), Local0)
                }

                If (Local0)
                {
                    Store (Local0, EROR)
                    Or (STAS, 0x02, STAS)
                }

                Or (STAS, 0x80, STAS)
                Return (Zero)
            }
        }

        Method (SFB0, 2, NotSerialized)
        {
            OperationRegion (F421, SystemMemory, Arg0, Arg1)
            Field (F421, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SOPT,   8
            }

            Return (Zero)
        }

        Method (SAOC, 2, NotSerialized)
        {
            OperationRegion (F422, SystemMemory, Arg0, Arg1)
            Field (F422, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                CNTF,   8
            }

            Return (Zero)
        }

        Method (GBST, 2, NotSerialized)
        {
            OperationRegion (F423, SystemMemory, Arg0, Arg1)
            Field (F423, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BOT1,   64, 
                BOT2,   64
            }

            Store (TBOT, BOT1)
            Store (TRTC, BOT2)
            Return (Zero)
        }
    }

    Scope (_SB.PCI0.LPCB.HEC)
    {
        Method (GBTT, 1, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (EB0T, Local0)
            }
            Else
            {
                Store (EB1T, Local0)
            }

            Return (Local0)
        }

        Method (RRAM, 1, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, Local0)
                And (Local0, 0xFF, Local1)
                ShiftRight (Local0, 0x08, Local0)
                And (Local0, 0xFF, Local0)
                Store (Local1, CDT2)
                Store (Local0, CDT1)
                Store (0x80, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (EDA1, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (WRAM, 2, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, Local0)
                And (Local0, 0xFF, Local1)
                ShiftRight (Local0, 0x08, Local0)
                And (Local0, 0xFF, Local0)
                Store (Local1, CDT2)
                Store (Local0, CDT1)
                Store (Arg1, CDT3)
                Store (0x81, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (One, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (STBR, 0, Serialized)
        {
            And (VGAF, One, Local0)
            ISMI (0x9A)
        }

        Method (SBRV, 1, Serialized)
        {
            WBOV (Zero, Arg0)
        }

        Name (DECF, Zero)
        Method (SFNV, 2, Serialized)
        {
            Store (RRAM (0x0521), Local1)
            Store (RRAM (0x0522), Local2)
            Store (RRAM (0x0523), Local3)
            Store (RRAM (0x0524), Local4)
            If (LEqual (Arg0, Zero))
            {
                Or (Local3, 0x80, Local3)
                Or (Local4, 0x80, Local4)
                If (And (Local1, 0x80))
                {
                    ShiftRight (Local1, 0x04, Local0)
                    And (Local0, 0x03, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        WRAM (0x0523, Local3)
                    }
                    ElseIf (LEqual (Local0, One))
                    {
                        WRAM (0x0524, Local4)
                    }
                    ElseIf (LEqual (Local0, 0x02))
                    {
                        WRAM (0x0523, Local3)
                        WRAM (0x0524, Local4)
                    }
                }

                If (And (Local2, 0x80))
                {
                    ShiftRight (Local2, 0x04, Local0)
                    And (Local0, 0x03, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        WRAM (0x0523, Local3)
                    }
                    ElseIf (LEqual (Local0, One))
                    {
                        WRAM (0x0524, Local4)
                    }
                    ElseIf (LEqual (Local0, 0x02))
                    {
                        WRAM (0x0523, Local3)
                        WRAM (0x0524, Local4)
                    }
                }

                Return (Zero)
            }

            And (Local3, 0x7F, Local3)
            And (Local4, 0x7F, Local4)
            WRAM (0x0523, Local3)
            WRAM (0x0524, Local4)
            WFOV (Decrement (Arg0), Arg1)
            Return (Zero)
        }

        Method (SPIN, 3, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, Local0)
                Store (Arg1, Local1)
                If (LGreaterEqual (Local0, 0x41))
                {
                    Subtract (Local0, 0x41, Local0)
                }

                ShiftLeft (Local0, 0x04, Local0)
                Or (Local0, Local1, Local0)
                Store (Local0, CDT2)
                If (LEqual (Arg2, One))
                {
                    Store (0x20, Local2)
                }
                Else
                {
                    Store (0x40, Local2)
                }

                Store (Local2, CDT1)
                Store (0x87, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (One, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (RPIN, 2, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, Local0)
                If (LGreaterEqual (Local0, 0x41))
                {
                    Subtract (Local0, 0x41, Local0)
                }

                ShiftLeft (Local0, 0x04, Local0)
                Or (Local0, Arg1, Local0)
                Store (Local0, CDT2)
                Store (Zero, CDT1)
                Store (0x87, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (EDA1, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Name (WRQK, 0x02)
        Name (RDQK, 0x03)
        Name (SDBT, 0x04)
        Name (RCBT, 0x05)
        Name (WRBT, 0x06)
        Name (RDBT, 0x07)
        Name (WRWD, 0x08)
        Name (RDWD, 0x09)
        Name (WRBL, 0x0A)
        Name (RDBL, 0x0B)
        Name (WBLP, 0x8A)
        Name (RBLP, 0x8B)
        Name (PCLL, 0x0C)
        Name (GOOD, Zero)
        Name (UKER, 0x07)
        Name (DAER, 0x10)
        Name (DERR, 0x11)
        Name (CMDN, 0x12)
        Name (UKE2, 0x13)
        Name (DADN, 0x17)
        Name (SBTO, 0x18)
        Name (USPT, 0x19)
        Name (SBBY, 0x1A)
        Method (SMBR, 4, Serialized)
        {
            Store (Package (0x03)
                {
                    0x07, 
                    Zero, 
                    Zero
                }, Local0)
            If (LNotEqual (Arg0, RDBL))
            {
                If (LNotEqual (Arg0, RDWD))
                {
                    If (LNotEqual (Arg0, RDBT))
                    {
                        If (LNotEqual (Arg0, RCBT))
                        {
                            If (LNotEqual (Arg0, RDQK))
                            {
                                If (LNotEqual (Arg0, RBLP))
                                {
                                    Return (Local0)
                                }
                            }
                        }
                    }
                }
            }

            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                If (LEqual (Arg3, Zero))
                {
                    Store (Zero, CDT1)
                }

                If (LEqual (Arg3, One))
                {
                    Store (One, CDT1)
                }

                Store (Arg0, CDT2)
                ShiftLeft (Arg1, One, Local1)
                Store (Local1, CDT3)
                Store (Arg2, CDT4)
                Store (Zero, CDT5)
                Store (0x9A, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local2)
                While (LAnd (Local2, CMD1))
                {
                    Sleep (One)
                    Decrement (Local2)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (GOOD, Index (Local0, Zero))
                    If (LEqual (Arg0, RDBL))
                    {
                        Store (BCNT, Index (Local0, One))
                        Store (BDAT, Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RBLP))
                    {
                        Store (BCNT, Index (Local0, One))
                        Store (BDAT, Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RDWD))
                    {
                        Store (0x02, Index (Local0, One))
                        Store (EDA1, Local1)
                        ShiftLeft (Local1, 0x08, Local1)
                        Or (Local1, EDA2, Local1)
                        Store (Local1, Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RDBT))
                    {
                        Store (One, Index (Local0, One))
                        Store (EDA1, Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RCBT))
                    {
                        Store (One, Index (Local0, One))
                        Store (EDA1, Index (Local0, 0x02))
                    }
                }

                Release (MUEC)
            }

            Return (Local0)
        }

        Method (SMBW, 6, Serialized)
        {
            Store (Package (0x03)
                {
                    0x07, 
                    Zero, 
                    Zero
                }, Local0)
            If (LNotEqual (Arg0, WRBL))
            {
                If (LNotEqual (Arg0, WRWD))
                {
                    If (LNotEqual (Arg0, WRBT))
                    {
                        If (LNotEqual (Arg0, SDBT))
                        {
                            If (LNotEqual (Arg0, WRQK))
                            {
                                If (LNotEqual (Arg0, WBLP))
                                {
                                    Return (Local0)
                                }
                            }
                        }
                    }
                }
            }

            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                If (LEqual (Arg3, Zero))
                {
                    Store (Zero, CDT1)
                }

                If (LEqual (Arg3, One))
                {
                    Store (One, CDT1)
                }

                Store (Arg0, CDT2)
                ShiftLeft (Arg1, One, Local1)
                Store (Local1, CDT3)
                Store (Arg2, CDT4)
                If (LEqual (Arg0, WRBL))
                {
                    Store (Arg4, CDT5)
                    Store (Arg5, BDAT)
                }

                If (LEqual (Arg0, WBLP))
                {
                    Store (Arg4, CDT5)
                    Store (Arg5, BDAT)
                }

                If (LEqual (Arg0, WRWD))
                {
                    Store (Zero, CDT5)
                    And (Arg5, 0xFF, Local3)
                    Store (Local3, CDT6)
                    And (Arg5, 0xFF00, Local3)
                    ShiftRight (Local3, 0x08, Local3)
                    Store (Local3, CDT7)
                }

                If (LEqual (Arg0, WRBT))
                {
                    Store (Zero, CDT5)
                    Store (Arg5, CDT6)
                }

                If (LEqual (Arg0, SDBT))
                {
                    Store (Zero, CDT5)
                    Store (Arg5, CDT6)
                }

                Store (0x9A, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local2)
                While (LAnd (Local2, CMD1))
                {
                    Sleep (One)
                    Decrement (Local2)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (Zero, Index (Local0, Zero))
                }
                Else
                {
                    Store (UKER, Index (Local0, Zero))
                }

                Release (MUEC)
            }

            Return (Local0)
        }

        Mutex (MUEP, 0x00)
        Method (RBEP, 1, NotSerialized)
        {
            Return (Zero)
        }

        Method (WBEP, 2, NotSerialized)
        {
            Return (Zero)
        }

        Method (SDAC, 2, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, CDT1)
                Store (Arg1, CDT2)
                Store (0x86, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (One, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (ECXT, 6, NotSerialized)
        {
            Store (Package (0x06)
                {
                    0x10, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, Local1)
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg1, CDT1)
                Store (Arg2, CDT2)
                Store (Arg3, CDT3)
                Store (Arg4, CDT4)
                Store (Arg5, CDT5)
                Store (Arg0, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (Zero, Index (Local1, Zero))
                    Store (EDA1, Index (Local1, One))
                    Store (EDA2, Index (Local1, 0x02))
                    Store (EDA3, Index (Local1, 0x03))
                    Store (EDA4, Index (Local1, 0x04))
                    Store (EDA5, Index (Local1, 0x05))
                }
                Else
                {
                    Store (0x10, Index (Local1, Zero))
                }

                Release (MUEC)
            }

            Return (Local1)
        }

        Method (ECXL, 1, NotSerialized)
        {
            Store (Package (0x0D)
                {
                    0x10, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, Local2)
            Store (Arg0, Local1)
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (DerefOf (Index (Local1, One)), CDT1)
                Store (DerefOf (Index (Local1, 0x02)), CDT2)
                Store (DerefOf (Index (Local1, 0x03)), CDT3)
                Store (DerefOf (Index (Local1, 0x04)), CDT4)
                Store (DerefOf (Index (Local1, 0x05)), CDT5)
                Store (DerefOf (Index (Local1, 0x06)), CDT6)
                Store (DerefOf (Index (Local1, 0x07)), CDT7)
                Store (DerefOf (Index (Local1, 0x08)), CDT8)
                Store (DerefOf (Index (Local1, 0x09)), CDT9)
                Store (DerefOf (Index (Local1, 0x0A)), CD10)
                Store (DerefOf (Index (Local1, 0x0B)), CD11)
                Store (DerefOf (Index (Local1, 0x0C)), CD12)
                Store (DerefOf (Index (Local1, Zero)), CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (Zero, Index (Local2, Zero))
                    Store (EDA1, Index (Local2, One))
                    Store (EDA2, Index (Local2, 0x02))
                    Store (EDA3, Index (Local2, 0x03))
                    Store (EDA4, Index (Local2, 0x04))
                    Store (EDA5, Index (Local2, 0x05))
                    Store (EDA6, Index (Local2, 0x06))
                    Store (EDA7, Index (Local2, 0x07))
                    Store (EDA8, Index (Local2, 0x08))
                    Store (EDA9, Index (Local2, 0x09))
                    Store (ED10, Index (Local2, 0x0A))
                    Store (ED11, Index (Local2, 0x0B))
                    Store (ED12, Index (Local2, 0x0C))
                }
                Else
                {
                    Store (0x10, Index (Local2, Zero))
                }

                Release (MUEC)
            }

            Return (Local2)
        }

        Method (ECSB, 6, NotSerialized)
        {
            Store (Package (0x05)
                {
                    0x11, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, Local1)
            If (LGreater (Arg0, One))
            {
                Return (Local1)
            }

            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, CDT1)
                Store (Arg1, CDT2)
                Store (Arg2, CDT3)
                Store (Arg3, CDT4)
                Store (Zero, CDT5)
                Store (Arg4, CDT6)
                Store (Arg5, CDT7)
                Store (0x9A, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local2)
                While (LAnd (Local2, CMD1))
                {
                    Sleep (One)
                    Decrement (Local2)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (Zero, Index (Local1, Zero))
                    Store (EDA1, Index (Local1, One))
                    Store (EDA2, Index (Local1, 0x02))
                    Store (EDA3, Index (Local1, 0x03))
                    Store (EDA4, Index (Local1, 0x04))
                }
                Else
                {
                    Store (0x10, Index (Local1, Zero))
                }

                Release (MUEC)
            }

            Return (Local1)
        }

        OperationRegion (KAID, SystemIO, 0x025C, One)
        Field (KAID, ByteAcc, NoLock, Preserve)
        {
            AEID,   8
        }

        OperationRegion (KAIC, SystemIO, 0x025D, One)
        Field (KAIC, ByteAcc, NoLock, Preserve)
        {
            AEIC,   8
        }

        Method (WEIE, 0, Serialized)
        {
            Store (0x4000, Local0)
            And (AEIC, 0x02, Local1)
            While (LAnd (LNotEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                And (AEIC, 0x02, Local1)
                Decrement (Local0)
            }
        }

        Method (WEOF, 0, Serialized)
        {
            Store (0x4000, Local0)
            And (AEIC, One, Local1)
            While (LAnd (LNotEqual (Local0, Zero), LEqual (Local1, Zero)))
            {
                And (AEIC, One, Local1)
                Decrement (Local0)
            }
        }

        Method (RFOV, 1, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, CDT1)
                Store (0x83, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (EDA1, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (WFOV, 2, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, CDT1)
                Store (Arg1, CDT2)
                Store (0x84, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (One, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (RBOV, 1, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, CDT1)
                Store (0x85, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (EDA1, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (WBOV, 2, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, CDT1)
                Store (Arg1, CDT2)
                Store (0x86, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (One, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (PKEN, 1, NotSerialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, CDT1)
                Store (0xB1, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (One, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (FNLK, 1, NotSerialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESEM)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (Arg0, CDT1)
                Store (0xB0, CMD1)
                Store (0x0F, ESEM)
                Store (0x7F, Local0)
                While (LAnd (Local0, CMD1))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LEqual (CMD1, Zero))
                {
                    Store (One, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }

        Method (C1MD, 2, Serialized)
        {
            Store (Zero, Local0)
            Store (0x0470, Local1)
            While (LLess (Local0, Arg0))
            {
                Store (DerefOf (Index (Arg1, Local0)), Local2)
                WRAM (Local1, Local2)
                Increment (Local0)
                Increment (Local1)
            }

            ECXT (0xC1, Arg0, Zero, Zero, Zero, Zero)
        }

        Method (PTPP, 1, Serialized)
        {
            If (LEqual (Acquire (MUEC, 0xFFFF), Zero))
            {
                Store (0x7F, Local6)
                Store (0x0F, Local7)
                While (LAnd (Local6, And (Local7, ESMP)))
                {
                    Sleep (0x02)
                    Decrement (Local6)
                }

                Store (0x97, MCMD)
                Store (Arg0, MCDB)
                Store (0x0F, ESMP)
                Store (0x7F, Local0)
                Store (0x0F, Local1)
                While (LAnd (LAnd (Local0, MCMD), And (Local1, ESMP)))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                If (LAnd (LEqual (MCMD, Zero), LEqual (ESMP, 0xF0)))
                {
                    Store (One, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Release (MUEC)
                Return (Local0)
            }

            Return (Ones)
        }
    }

    Scope (\)
    {
        Name (TSP, 0x0A)
        Name (TC1, 0x02)
        Name (TC2, 0x0A)
        Name (PSVF, Zero)
        Name (CRTF, Zero)
    }

    Scope (_TZ)
    {
        Method (KELV, 1, NotSerialized)
        {
            And (Arg0, 0xFF, Local0)
            If (LGreaterEqual (Local0, 0x80))
            {
                Subtract (0x0100, Local0, Local0)
                Multiply (Local0, 0x0A, Local0)
                Subtract (0x0AAC, Local0, Local0)
                Return (Local0)
            }

            Multiply (Local0, 0x0A, Local0)
            Add (Local0, 0x0AAC, Local0)
            Return (Local0)
        }

        Method (CELC, 1, NotSerialized)
        {
            Subtract (Arg0, 0x0AAC, Local0)
            Divide (Local0, 0x0A, Local1, Local0)
            Return (Local0)
        }

        Name (PLCY, Zero)
        ThermalZone (THRM)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                RCRT ()
                Return (KELV (\_SB.TCRT))
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Store (0x05, Local1)
                While (Local1)
                {
                    Store (RTMP (), Local0)
                    If (LGreater (Local0, \_SB.TCRT))
                    {
                        Decrement (Local1)
                    }
                    Else
                    {
                        Store (Zero, Local1)
                    }
                }

                Store (\_SB.TCRT, Local2)
                Decrement (Local2)
                If (LGreater (Local0, Local2))
                {
                    If (LEqual (PSVF, One))
                    {
                        Return (KELV (Local2))
                    }
                    ElseIf (LEqual (CRTF, One))
                    {
                        Return (KELV (Local0))
                    }
                }

                Return (KELV (Local0))
            }

            Method (_PSL, 0, NotSerialized)  // _PSL: Passive List
            {
                If (LEqual (\_SB.CPUN, 0x08))
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

                If (LEqual (\_SB.CPUN, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (LEqual (\_SB.CPUN, 0x02))
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

            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Multiply (TSP, 0x0A, Local0)
                Return (Local0)
            }

            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1)
            }

            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2)
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                RPSV ()
                If (PLCY)
                {
                    Return (KELV (\_SB.PPSV))
                }
                Else
                {
                    Return (KELV (\_SB.TPSV))
                }
            }

            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                Store (Zero, PLCY)
                Notify (THRM, 0x81)
            }
        }
    }

    Scope (_TZ)
    {
        Name (ATMP, 0x3C)
        Name (LTMP, 0x3C)
        Name (FANS, Zero)
        Method (RTMP, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.HEC.ECAV ())
            {
                Store (\_SB.PCI0.LPCB.HEC.PCPT, Local0)
                If (LLess (Local0, 0x80))
                {
                    Store (Local0, LTMP)
                }
            }

            Return (LTMP)
        }

        Method (RLTM, 0, NotSerialized)
        {
            Return (ATMP)
        }

        Method (RCRT, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.HEC.ECAV ())
            {
                Store (\_SB.PCI0.LPCB.HEC.ECRT, Local0)
                If (LLess (Local0, 0x80))
                {
                    Store (Local0, \_SB.TCRT)
                }
            }
        }

        Method (RPSV, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.HEC.ECAV ())
            {
                Store (\_SB.PCI0.LPCB.HEC.EPSV, Local0)
                If (LLess (Local0, 0x80))
                {
                    Decrement (Local0)
                    Store (Local0, \_SB.TPSV)
                }
            }
        }

        Method (RFAN, 1, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.HEC.ECAV ())
            {
                Store (\_SB.PCI0.LPCB.HEC.TACH (Arg0), Local0)
                Divide (Local0, 0x64, Local1, Local0)
                Add (Local0, One, Local0)
                If (LLessEqual (Local0, 0x3C))
                {
                    Store (Local0, FANS)
                }
                Else
                {
                    Store (FANS, Local0)
                }
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (RFSE, 0, NotSerialized)
        {
            Return (Zero)
        }

        Method (TCHG, 0, NotSerialized)
        {
        }

        Method (THDL, 0, NotSerialized)
        {
        }

        Method (TMSS, 1, NotSerialized)
        {
        }

        Method (TMSW, 1, NotSerialized)
        {
        }
    }

    Scope (_SB.PCI0.LPCB.HEC)
    {
        Method (PWAC, 1, Serialized)
        {
            If (LGreaterEqual (Arg0, 0x0B))
            {
                Store (0x0A, Local0)
            }
            Else
            {
                Store (Arg0, Local0)
            }

            If (LEqual (Local0, Zero))
            {
                Return (AB00)
            }

            If (LEqual (Local0, One))
            {
                Return (AB01)
            }

            If (LEqual (Local0, 0x02))
            {
                Return (AB02)
            }

            If (LEqual (Local0, 0x03))
            {
                Return (AB03)
            }

            If (LEqual (Local0, 0x04))
            {
                Return (AB04)
            }

            If (LEqual (Local0, 0x05))
            {
                Return (AB05)
            }

            If (LEqual (Local0, 0x06))
            {
                Return (AB06)
            }

            If (LEqual (Local0, 0x07))
            {
                Return (AB07)
            }

            If (LEqual (Local0, 0x08))
            {
                Return (AB08)
            }

            If (LEqual (Local0, 0x09))
            {
                Return (AB09)
            }

            If (LEqual (Local0, 0x0A))
            {
                Return (AB0A)
            }

            If (LEqual (Local0, 0x0B))
            {
                Return (AB0B)
            }

            If (LEqual (Local0, 0x0C))
            {
                Return (AB0C)
            }

            If (LEqual (Local0, 0x0D))
            {
                Return (AB0D)
            }

            If (LEqual (Local0, 0x0E))
            {
                Return (AB0E)
            }

            If (LEqual (Local0, 0x0F))
            {
                Return (AB0F)
            }

            If (LEqual (Local0, 0x10))
            {
                Return (AB10)
            }

            If (LEqual (Local0, 0x11))
            {
                Return (AB11)
            }

            If (LEqual (Local0, 0x12))
            {
                Return (AB12)
            }

            If (LEqual (Local0, 0x13))
            {
                Return (AB13)
            }

            If (LEqual (Local0, 0x14))
            {
                Return (AB14)
            }

            If (LEqual (Local0, 0x15))
            {
                Return (AB15)
            }

            If (LEqual (Local0, 0x16))
            {
                Return (AB16)
            }

            If (LEqual (Local0, 0x17))
            {
                Return (AB17)
            }

            If (LEqual (Local0, 0x18))
            {
                Return (AB18)
            }

            If (LEqual (Local0, 0x19))
            {
                Return (AB19)
            }

            If (LEqual (Local0, 0x1A))
            {
                Return (AB1A)
            }

            If (LEqual (Local0, 0x1B))
            {
                Return (AB1B)
            }

            If (LEqual (Local0, 0x1C))
            {
                Return (AB1C)
            }

            If (LEqual (Local0, 0x1D))
            {
                Return (AB1D)
            }

            If (LEqual (Local0, 0x1E))
            {
                Return (AB1E)
            }

            If (LEqual (Local0, 0x1F))
            {
                Return (AB1F)
            }

            Return (Zero)
        }

        Method (PWDC, 1, Serialized)
        {
            If (LGreaterEqual (Arg0, 0x0B))
            {
                Store (0x0A, Local0)
            }
            Else
            {
                Store (Arg0, Local0)
            }

            If (LEqual (Local0, Zero))
            {
                Return (DB00)
            }

            If (LEqual (Local0, One))
            {
                Return (DB01)
            }

            If (LEqual (Local0, 0x02))
            {
                Return (DB02)
            }

            If (LEqual (Local0, 0x03))
            {
                Return (DB03)
            }

            If (LEqual (Local0, 0x04))
            {
                Return (DB04)
            }

            If (LEqual (Local0, 0x05))
            {
                Return (DB05)
            }

            If (LEqual (Local0, 0x06))
            {
                Return (DB06)
            }

            If (LEqual (Local0, 0x07))
            {
                Return (DB07)
            }

            If (LEqual (Local0, 0x08))
            {
                Return (DB08)
            }

            If (LEqual (Local0, 0x09))
            {
                Return (DB09)
            }

            If (LEqual (Local0, 0x0A))
            {
                Return (DB0A)
            }

            If (LEqual (Local0, 0x0B))
            {
                Return (DB0B)
            }

            If (LEqual (Local0, 0x0C))
            {
                Return (DB0C)
            }

            If (LEqual (Local0, 0x0D))
            {
                Return (DB0D)
            }

            If (LEqual (Local0, 0x0E))
            {
                Return (DB0E)
            }

            If (LEqual (Local0, 0x0F))
            {
                Return (DB0F)
            }

            If (LEqual (Local0, 0x10))
            {
                Return (DB10)
            }

            If (LEqual (Local0, 0x11))
            {
                Return (DB11)
            }

            If (LEqual (Local0, 0x12))
            {
                Return (DB12)
            }

            If (LEqual (Local0, 0x13))
            {
                Return (DB13)
            }

            If (LEqual (Local0, 0x14))
            {
                Return (DB14)
            }

            If (LEqual (Local0, 0x15))
            {
                Return (DB15)
            }

            If (LEqual (Local0, 0x16))
            {
                Return (DB16)
            }

            If (LEqual (Local0, 0x17))
            {
                Return (DB17)
            }

            If (LEqual (Local0, 0x18))
            {
                Return (DB18)
            }

            If (LEqual (Local0, 0x19))
            {
                Return (DB19)
            }

            If (LEqual (Local0, 0x1A))
            {
                Return (DB1A)
            }

            If (LEqual (Local0, 0x1B))
            {
                Return (DB1B)
            }

            If (LEqual (Local0, 0x1C))
            {
                Return (DB1C)
            }

            If (LEqual (Local0, 0x1D))
            {
                Return (DB1D)
            }

            If (LEqual (Local0, 0x1E))
            {
                Return (DB1E)
            }

            If (LEqual (Local0, 0x1F))
            {
                Return (DB1F)
            }

            Return (Zero)
        }

        Method (ACPS, 0, Serialized)
        {
            Return (And (GPWS (), One))
        }

        Method (DCPS, 1, Serialized)
        {
            Store (GPWS (), Local0)
            If (Arg0)
            {
                And (Local0, 0x04, Local0)
            }
            Else
            {
                And (Local0, 0x02, Local0)
            }

            If (Local0)
            {
                Store (One, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (GPWS, 0, Serialized)
        {
            Store (EPWS, Local0)
            Return (Local0)
        }

        Method (BCHG, 1, Serialized)
        {
            If (Arg0)
            {
                If (ECAV ())
                {
                    Store (EB1S, Local0)
                    And (Local0, 0xFF, Local0)
                    If (LNotEqual (Local0, 0xFF))
                    {
                        And (Local0, 0x02, Local0)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }
                Else
                {
                    Store (Zero, Local0)
                }

                Return (Local0)
            }
            ElseIf (ECAV ())
            {
                Store (EB0S, Local0)
                And (Local0, 0xFF, Local0)
                If (LNotEqual (Local0, 0xFF))
                {
                    And (Local0, 0x02, Local0)
                }
                Else
                {
                    Store (Zero, Local0)
                }
            }
            Else
            {
                Store (Zero, Local0)
            }
        }

        Method (BCLE, 1, Serialized)
        {
            If (Arg0)
            {
                If (ECAV ())
                {
                    Store (EB1S, Local1)
                    And (Local1, 0xFFFF, Local1)
                    If (LNotEqual (Local1, 0xFFFF))
                    {
                        And (Local1, 0x16, Local1)
                        If (LEqual (Local1, 0x04))
                        {
                            Store (Zero, Local0)
                        }
                        ElseIf (LEqual (Local1, 0x02))
                        {
                            Store (One, Local0)
                        }
                        ElseIf (LEqual (Local1, 0x10))
                        {
                            Store (One, Local0)
                        }
                    }

                    Store (Ones, Local0)
                }
                Else
                {
                    Store (Ones, Local0)
                }

                Return (Local0)
            }
            ElseIf (ECAV ())
            {
                Store (EB0S, Local1)
                And (Local1, 0xFFFF, Local1)
                If (LNotEqual (Local1, 0xFFFF))
                {
                    And (Local1, 0x16, Local1)
                    If (LEqual (Local1, 0x04))
                    {
                        Store (Zero, Local0)
                    }
                    ElseIf (LEqual (Local1, 0x02))
                    {
                        Store (One, Local0)
                    }
                    ElseIf (LEqual (Local1, 0x10))
                    {
                        Store (One, Local0)
                    }
                }

                Store (Ones, Local0)
            }
            Else
            {
                Store (Ones, Local0)
            }
        }

        Method (CHBT, 1, Serialized)
        {
            Store (GBTT (Arg0), Local1)
            If (LEqual (Local1, 0xFF))
            {
                Store (Zero, Local0)
            }
            Else
            {
                And (Local1, 0x10, Local0)
                If (Local0)
                {
                    Store (One, Local0)
                }
            }

            Return (Local0)
        }

        Method (TACH, 1, NotSerialized)
        {
            If (ECAV ())
            {
                If (Arg0)
                {
                    Store (F1TS, Local0)
                }
                Else
                {
                    Store (F0TS, Local0)
                }

                Store (0x8CA0, Local1)
                Divide (Local1, Local0, Local2, Local0)
                Multiply (Local0, 0x3C, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (EC0S, 1, NotSerialized)
        {
        }

        Method (EC0W, 1, NotSerialized)
        {
            If (LLessEqual (Arg0, 0x04))
            {
                If (LNotEqual (DS3T, 0xAA))
                {
                    Store (ACPS (), ACPF)
                }

                Store (DCPS (Zero), DCPF)
                PNOT ()
            }
        }

        Name (FHKM, One)
        Method (FHKW, 0, Serialized)
        {
            While (LNot (FHKM))
            {
                Sleep (0x0A)
            }

            Store (Zero, FHKM)
        }

        Method (FHKS, 0, Serialized)
        {
            Store (One, FHKM)
        }

        Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (SLPB, 0x80)
        }

        Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LGreaterEqual (OSFG, OSW8))
            {
                ^^^^ASHS.NTFY (0x88)
                Return (Zero)
            }

            If (And (^^^^ATKD.WAPF, 0x04))
            {
                If (ATKP)
                {
                    ^^^^ATKD.NTFY (0x88)
                }
            }
            Else
            {
                Store (OHWR (), Local0)
                If (And (Local0, 0x02))
                {
                    If (And (Local0, One))
                    {
                        Store (One, Local0)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }
                Else
                {
                    Store (One, Local0)
                }

                If (Local0)
                {
                    If (And (^^^^ATKD.WAPF, One))
                    {
                        If (LAnd (WLDP, BTDP))
                        {
                            Store (WRST, Local0)
                            Or (ShiftLeft (BRST, One), Local0, Local0)
                            Increment (Local0)
                            If (LGreater (Local0, 0x03))
                            {
                                Store (Zero, Local0)
                            }

                            Store (DerefOf (Index (WBTL, Local0)), Local1)
                            If (LEqual (Local1, Zero))
                            {
                                ^^^^ATKD.NTFY (0x5D)
                                Sleep (0x0DAC)
                                OBTD (Zero)
                                ^^^^ATKD.NTFY (0x7E)
                            }

                            If (LEqual (Local1, One))
                            {
                                ^^^^ATKD.NTFY (0x5D)
                                Sleep (0x0DAC)
                                OBTD (Zero)
                                ^^^^ATKD.NTFY (0x7E)
                            }

                            If (LEqual (Local1, 0x02))
                            {
                                ^^^^ATKD.NTFY (0x5D)
                                Sleep (0x0DAC)
                                OBTD (One)
                                ^^^^ATKD.NTFY (0x7D)
                            }

                            If (LEqual (Local1, 0x03))
                            {
                                ^^^^ATKD.NTFY (0x5D)
                                Sleep (0x0DAC)
                                OBTD (One)
                                ^^^^ATKD.NTFY (0x7D)
                            }
                        }
                        ElseIf (WLDP)
                        {
                            ^^^^ATKD.NTFY (0x5D)
                        }
                        ElseIf (BTDP)
                        {
                            If (BRST)
                            {
                                OBTD (Zero)
                                ^^^^ATKD.NTFY (0x7E)
                            }
                            Else
                            {
                                OBTD (One)
                                ^^^^ATKD.NTFY (0x7D)
                            }
                        }
                    }
                    ElseIf (LAnd (WLDP, BTDP))
                    {
                        Store (WRST, Local0)
                        Or (ShiftLeft (BRST, One), Local0, Local0)
                        Increment (Local0)
                        If (LGreater (Local0, 0x03))
                        {
                            Store (Zero, Local0)
                        }

                        Store (DerefOf (Index (WBTL, Local0)), Local1)
                        If (LEqual (Local1, Zero))
                        {
                            OWLD (Zero)
                            ^^^^ATKD.NTFY (0x5F)
                            Sleep (0x0DAC)
                            OBTD (Zero)
                            ^^^^ATKD.NTFY (0x7E)
                        }

                        If (LEqual (Local1, One))
                        {
                            OWLD (One)
                            ^^^^ATKD.NTFY (0x5E)
                            Sleep (0x0DAC)
                            OBTD (Zero)
                            ^^^^ATKD.NTFY (0x7E)
                        }

                        If (LEqual (Local1, 0x02))
                        {
                            OWLD (Zero)
                            ^^^^ATKD.NTFY (0x5F)
                            Sleep (0x0DAC)
                            OBTD (One)
                            ^^^^ATKD.NTFY (0x7D)
                        }

                        If (LEqual (Local1, 0x03))
                        {
                            OWLD (One)
                            ^^^^ATKD.NTFY (0x5E)
                            Sleep (0x0DAC)
                            OBTD (One)
                            ^^^^ATKD.NTFY (0x7D)
                        }
                    }
                    ElseIf (WLDP)
                    {
                        If (WRST)
                        {
                            OWLD (Zero)
                            ^^^^ATKD.NTFY (0x5F)
                        }
                        Else
                        {
                            OWLD (One)
                            ^^^^ATKD.NTFY (0x5E)
                        }
                    }
                    ElseIf (BTDP)
                    {
                        If (BRST)
                        {
                            OBTD (Zero)
                            ^^^^ATKD.NTFY (0x7E)
                        }
                        Else
                        {
                            OBTD (One)
                            ^^^^ATKD.NTFY (0x7D)
                        }
                    }
                }
                Else
                {
                    If (WLDP)
                    {
                        ^^^^ATKD.NTFY (0x5F)
                    }

                    If (LAnd (WLDP, BTDP))
                    {
                        Sleep (0x0DAC)
                    }

                    If (BTDP)
                    {
                        ^^^^ATKD.NTFY (0x7E)
                    }
                }
            }
        }

        Name (WBTL, Package (0x04)
        {
            Zero, 
            One, 
            0x02, 
            0x03
        })
        Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LGreaterEqual (OSFG, OSVT))
            {
                If (^^^GFX0.PRST ())
                {
                    ^^^GFX0.DWBL ()
                }
            }
            Else
            {
                If (LGreater (LBTN, Zero))
                {
                    Decrement (LBTN)
                }

                If (LGreater (LBTN, 0x0A))
                {
                    Store (0x0A, LBTN)
                }

                STBR ()
                If (ATKP)
                {
                    ^^^^ATKD.NTFY (Add (LBTN, 0x20))
                }
            }

            Return (One)
        }

        Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LGreaterEqual (OSFG, OSVT))
            {
                If (^^^GFX0.PRST ())
                {
                    ^^^GFX0.UPBL ()
                }
            }
            ElseIf (LLess (LBTN, 0x0A))
            {
                Increment (LBTN)
            }
            Else
            {
                Store (0x0A, LBTN)
            }

            Return (One)
        }

        Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LIDP)
            {
                If (ATKP)
                {
                    ^^^^ATKD.NTFY (0x35)
                }
            }
            Else
            {
                Store (One, Local0)
                Store (RPIN (0x05, 0x07), Local0)
                XOr (Local0, One, Local0)
                SPIN (0x05, 0x07, Local0)
                If (ATKP)
                {
                    Subtract (0x34, Local0, Local0)
                    ^^^^ATKD.NTFY (Local0)
                }
            }
        }

        Name (AVNC, Package (0x20)
        {
            0x61, 
            0x61, 
            0x62, 
            0x63, 
            0x64, 
            0x65, 
            0x66, 
            0x67, 
            0x8C, 
            0x8D, 
            0x8E, 
            0x90, 
            0x8F, 
            0x91, 
            0x92, 
            0x93, 
            0xA0, 
            0xA1, 
            0xA2, 
            0xA4, 
            0xA3, 
            0xA5, 
            0xA6, 
            0xA7, 
            0x61, 
            0x61, 
            0x61, 
            0x61, 
            0x61, 
            0x61, 
            0x61, 
            0x61
        })
        Name (LVNC, Package (0x04)
        {
            Zero, 
            0x61, 
            0x62, 
            0xA0
        })
        Name (FNF8, Zero)
        Method (_QD7, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (FNF8)
            {
                ECXT (0xB8, 0x02, Zero, Zero, Zero, Zero)
                Store (Zero, FNF8)
            }
        }

        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LGreaterEqual (OSFG, OSW8))
            {
                If (LEqual (FNF8, Zero))
                {
                    ECXT (0xB8, Zero, Zero, Zero, Zero, Zero)
                    ECXT (0xB8, One, Zero, Zero, Zero, Zero)
                    Store (One, FNF8)
                }
                Else
                {
                    ECXT (0xB8, One, Zero, Zero, Zero, Zero)
                }
            }
            Else
            {
                FHKW ()
                Store (ADVG (), Local0)
                If (NATK ())
                {
                    If (LEqual (OSFG, OSLX))
                    {
                        If (LEqual (Local0, 0x10))
                        {
                            Store (0x03, Local0)
                        }

                        Store (DerefOf (Index (LVNC, Local0)), Local1)
                    }
                    Else
                    {
                        Store (DerefOf (Index (AVNC, Local0)), Local1)
                    }

                    If (ATKP)
                    {
                        ^^^^ATKD.NTFY (Local1)
                    }
                    Else
                    {
                        SWHG (Local0)
                    }
                }
                Else
                {
                    SWHG (Local0)
                }

                FHKS ()
            }
        }

        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LGreaterEqual (OSFG, OSW8))
            {
                ECXT (0xB8, 0x03, Zero, Zero, Zero, Zero)
            }
            ElseIf (ATKP)
            {
                ^^^^ATKD.NTFY (0x32)
            }
        }

        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LGreaterEqual (OSFG, OSW8))
            {
                ECXT (0xB8, 0x04, Zero, Zero, Zero, Zero)
            }
            Else
            {
                If (LLess (AVOL, 0x0F))
                {
                    Increment (AVOL)
                }

                If (ATKP)
                {
                    ^^^^ATKD.NTFY (0x31)
                }
            }
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LGreaterEqual (OSFG, OSW8))
            {
                ECXT (0xB8, 0x05, Zero, Zero, Zero, Zero)
            }
            Else
            {
                If (LGreater (AVOL, Zero))
                {
                    Decrement (AVOL)
                }

                If (ATKP)
                {
                    ^^^^ATKD.NTFY (0x30)
                }
            }
        }

        Method (_Q6C, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x45)
            }
        }

        Method (_Q6B, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x43)
            }
        }

        Method (_Q6D, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x40)
            }
        }

        Method (_Q6E, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x41)
            }
        }

        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ShiftLeft (One, 0x0E, Local0)
                If (And (IOST, Local0))
                {
                    ^^^^ATKD.NTFY (0x6B)
                }
                Else
                {
                    ^^^^ATKD.NTFY (0x6F)
                }
            }
        }

        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x50)
            }
        }

        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x51)
            }
        }

        Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x5C)
            }
        }

        Method (_Q71, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x8A)
            }
        }

        Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x82)
            }
        }

        Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x84)
            }
        }

        Method (_QB0, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (RRAM (0x051C), Local0)
            If (And (Local0, 0x02))
            {
                Store (One, CRTF)
                Store (Zero, PSVF)
            }
            ElseIf (And (Local0, One))
            {
                Store (One, PSVF)
                Store (Zero, CRTF)
            }
            Else
            {
                Store (Zero, PSVF)
                Store (Zero, CRTF)
            }

            Notify (\_TZ.THRM, 0x80)
        }

        Method (_QCC, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x6D)
            }
            Else
            {
                Notify (SLPB, 0x80)
            }
        }

        Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
        {
        }

        Method (_QA0, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ACPS ())
            {
                Store (One, ACPF)
                Store (0x58, Local0)
            }
            Else
            {
                Store (Zero, ACPF)
                Store (0x57, Local0)
            }

            If (LLess (OSFG, OSVT))
            {
                STBR ()
            }

            Notify (AC0, 0x80)
            If (ATKP)
            {
                ^^^^ATKD.NTFY (Local0)
            }

            Sleep (0x64)
            PNOT ()
            Sleep (0x0A)
            NBAT (0x80)
        }

        Method (_Q6F, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0xB5)
            }
        }

        Method (_QA5, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x6E)
            }
            ElseIf (BATP (Zero))
            {
                Notify (BAT0, 0x80)
            }
        }

        Method (_QBD, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (ATKP)
            {
                ^^^^ATKD.NTFY (0x6D)
            }
            Else
            {
                Notify (SLPB, 0x80)
            }
        }

        Method (_QAE, 0, NotSerialized)  // _Qxx: EC Query
        {
            SGPL (One, One, Zero)
        }

        Method (_QBE, 0, NotSerialized)  // _Qxx: EC Query
        {
            SGPL (One, One, Zero)
        }

        Method (_QAF, 0, NotSerialized)  // _Qxx: EC Query
        {
            SGPL (One, One, One)
        }

        Method (_QBF, 0, NotSerialized)  // _Qxx: EC Query
        {
            SGPL (One, One, One)
        }
    }

    Scope (_TZ)
    {
    }

    Scope (_SB.PCI0.LPCB.HEC)
    {
        Method (MF63, 4, NotSerialized)
        {
            If (LNotEqual (Arg1, 0x63))
            {
                Return (Zero)
            }

            If (LEqual (Arg2, One))
            {
                M631 (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x02))
            {
                M632 (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x03))
            {
                M633 (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x04))
            {
                M634 (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x05))
            {
                M635 (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x06))
            {
                M636 (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x07))
            {
                M637 (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x08))
            {
                M638 (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x09))
            {
                M639 (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x0A))
            {
                M63A (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x0B))
            {
                M63B (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x0C))
            {
                M63C (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x0D))
            {
                M63D (Arg0, Arg1)
            }

            If (LEqual (Arg2, 0x0E))
            {
                M63E (Arg0, Arg1)
            }

            If (LEqual (Arg3, 0x0F))
            {
                M63F (Arg0, Arg1)
            }

            Return (Zero)
        }

        Method (M631, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                TSXR,   8, 
                TSXL,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                Store (RRAM (0x03E2), TSXR)
                Store (RRAM (0x03E3), TSXL)
            }
            ElseIf (LEqual (FUNC, One))
            {
                Store (RRAM (0x03E0), TSXR)
                Store (RRAM (0x03E1), TSXL)
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M632, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                DEVS,   8, 
                DEVT,   16
            }

            Store (0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (DEVS, Zero))
            {
                Store (TJMX, DEVT)
            }
            ElseIf (LEqual (DEVS, One))
            {
                Store (PCPT, DEVT)
            }
            ElseIf (LEqual (DEVS, 0x02))
            {
                Store (Zero, DEVT)
            }
            ElseIf (LEqual (DEVS, 0x03))
            {
                Store (RRAM (0x03E2), DEVT)
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M633, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FANX,   8, 
                FANS,   8, 
                FANT,   16, 
                TRGG,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FANX, Zero))
            {
                Store (F0CS, FANS)
                Store (F0TS, FANT)
                Store (RRAM (0x0576), TRGG)
            }
            ElseIf (LEqual (FANX, One))
            {
                Store (F1CS, FANS)
                Store (F1TS, FANT)
                Store (RRAM (0x0577), TRGG)
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M634, 2, Serialized)
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                PARA,   8, 
                DATA,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                While (One)
                {
                    Store (ToInteger (PARA), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (RRAM (0x0521), DATA)
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        Store (RRAM (0x0522), DATA)
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        Store (RRAM (0x0523), DATA)
                    }
                    ElseIf (LEqual (_T_0, 0x03))
                    {
                        Store (RRAM (0x0524), DATA)
                    }
                    ElseIf (LEqual (_T_0, 0x04))
                    {
                        Store (RRAM (0x0509), DATA)
                    }
                    ElseIf (LEqual (_T_0, 0x05))
                    {
                        Store (RRAM (0x050A), DATA)
                    }
                    ElseIf (LEqual (_T_0, 0x06))
                    {
                        Store (RRAM (0x0568), DATA)
                    }
                    Else
                    {
                        Store (0x80, SM63)
                        Store (One, EM63)
                    }

                    Break
                }
            }
            ElseIf (LEqual (FUNC, One))
            {
                While (One)
                {
                    Store (ToInteger (PARA), _T_1)
                    If (LEqual (_T_1, Zero))
                    {
                        WRAM (0x0521, DATA)
                    }
                    ElseIf (LEqual (_T_1, One))
                    {
                        WRAM (0x0522, DATA)
                    }
                    ElseIf (LEqual (_T_1, 0x02))
                    {
                        WRAM (0x0523, DATA)
                        If (LEqual (And (DATA, 0x80), Zero))
                        {
                            Store (0x88, MCFD)
                        }
                        Else
                        {
                            Store (Zero, MCFD)
                        }
                    }
                    ElseIf (LEqual (_T_1, 0x03))
                    {
                        WRAM (0x0524, DATA)
                    }
                    ElseIf (LEqual (_T_1, 0x04))
                    {
                        WRAM (0x0509, DATA)
                    }
                    ElseIf (LEqual (_T_1, 0x05))
                    {
                        WRAM (0x050A, DATA)
                    }
                    ElseIf (LEqual (_T_1, 0x06))
                    {
                        WRAM (0x0568, DATA)
                    }
                    Else
                    {
                        Store (0x80, SM63)
                        Store (One, EM63)
                    }

                    Break
                }
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M635, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ECSD,   8, 
                OSSD,   8, 
                OSPV,   8, 
                THON,   8, 
                THOF,   8, 
                FNER,   8, 
                VGSD,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                Store (RRAM (0x0530), ECSD)
                Store (RRAM (0x03E4), OSSD)
                Store (RRAM (0x03E5), OSPV)
                Store (RRAM (0x0533), THON)
                Store (RRAM (0x0534), THOF)
                Store (RRAM (0x0535), FNER)
                Store (RRAM (0x0536), VGSD)
            }
            ElseIf (LEqual (FUNC, One))
            {
                WRAM (0x0530, ECSD)
                WRAM (0x03E4, OSSD)
                WRAM (0x03E5, OSPV)
                WRAM (0x0533, THON)
                WRAM (0x0534, THOF)
                WRAM (0x0535, FNER)
                WRAM (0x0536, VGSD)
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M636, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                TTS1,   8, 
                TTS2,   8, 
                TTS3,   8, 
                TTS4,   8, 
                TTS5,   8, 
                TTS6,   8, 
                TTS7,   8, 
                TTS8,   8, 
                TFFP,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                If (LEqual (ALGM, Zero))
                {
                    Store (RRAM (0x0537), TTS1)
                    Store (RRAM (0x0538), TTS2)
                    Store (RRAM (0x0539), TTS3)
                    Store (RRAM (0x053A), TTS4)
                    Store (RRAM (0x053B), TTS5)
                    Store (RRAM (0x053C), TTS6)
                    Store (RRAM (0x053D), TTS7)
                    Store (RRAM (0x053E), TTS8)
                    Store (RRAM (0x053F), TFFP)
                }
                ElseIf (LEqual (ALGM, One))
                {
                    Store (RRAM (0x0597), TTS1)
                    Store (RRAM (0x0598), TTS2)
                    Store (RRAM (0x0599), TTS3)
                    Store (RRAM (0x059A), TTS4)
                    Store (RRAM (0x059B), TTS5)
                    Store (RRAM (0x059C), TTS6)
                    Store (RRAM (0x059D), TTS7)
                    Store (RRAM (0x059E), TTS8)
                    Store (RRAM (0x059F), TFFP)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            ElseIf (LEqual (FUNC, One))
            {
                If (LEqual (ALGM, Zero))
                {
                    WRAM (0x0537, TTS1)
                    WRAM (0x0538, TTS2)
                    WRAM (0x0539, TTS3)
                    WRAM (0x053A, TTS4)
                    WRAM (0x053B, TTS5)
                    WRAM (0x053C, TTS6)
                    WRAM (0x053D, TTS7)
                    WRAM (0x053E, TTS8)
                    WRAM (0x053F, TFFP)
                }
                ElseIf (LEqual (ALGM, One))
                {
                    WRAM (0x0597, TTS1)
                    WRAM (0x0598, TTS2)
                    WRAM (0x0599, TTS3)
                    WRAM (0x059A, TTS4)
                    WRAM (0x059B, TTS5)
                    WRAM (0x059C, TTS6)
                    WRAM (0x059D, TTS7)
                    WRAM (0x059E, TTS8)
                    WRAM (0x059F, TFFP)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }
        }

        Method (M637, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                TDA1,   8, 
                TDA2,   8, 
                TDA3,   8, 
                TDA4,   8, 
                TDA5,   8, 
                TDA6,   8, 
                TDA7,   8, 
                TDA8,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                If (LEqual (ALGM, Zero))
                {
                    Store (RRAM (0x0548), TDA1)
                    Store (RRAM (0x0549), TDA2)
                    Store (RRAM (0x054A), TDA3)
                    Store (RRAM (0x054B), TDA4)
                    Store (RRAM (0x054C), TDA5)
                    Store (RRAM (0x054D), TDA6)
                    Store (RRAM (0x054E), TDA7)
                    Store (RRAM (0x054F), TDA8)
                }
                ElseIf (LEqual (ALGM, One))
                {
                    Store (RRAM (0x05A8), TDA1)
                    Store (RRAM (0x05A9), TDA2)
                    Store (RRAM (0x05AA), TDA3)
                    Store (RRAM (0x05AB), TDA4)
                    Store (RRAM (0x05AC), TDA5)
                    Store (RRAM (0x05AD), TDA6)
                    Store (RRAM (0x05AE), TDA7)
                    Store (RRAM (0x05AF), TDA8)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            ElseIf (LEqual (FUNC, One))
            {
                If (LEqual (ALGM, Zero))
                {
                    WRAM (0x0548, TDA1)
                    WRAM (0x0549, TDA2)
                    WRAM (0x054A, TDA3)
                    WRAM (0x054B, TDA4)
                    WRAM (0x054C, TDA5)
                    WRAM (0x054D, TDA6)
                    WRAM (0x054E, TDA7)
                    WRAM (0x054F, TDA8)
                }
                ElseIf (LEqual (ALGM, One))
                {
                    WRAM (0x05A8, TDA1)
                    WRAM (0x05A9, TDA2)
                    WRAM (0x05AA, TDA3)
                    WRAM (0x05AB, TDA4)
                    WRAM (0x05AC, TDA5)
                    WRAM (0x05AD, TDA6)
                    WRAM (0x05AE, TDA7)
                    WRAM (0x05AF, TDA8)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }
        }

        Method (M638, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                ASC1,   8, 
                ASC2,   8, 
                ASC3,   8, 
                ASC4,   8, 
                ADA1,   8, 
                ADA2,   8, 
                ADA3,   8, 
                ADA4,   8, 
                DSC1,   8, 
                DSC2,   8, 
                DSC3,   8, 
                DSC4,   8, 
                DDA1,   8, 
                DDA2,   8, 
                DDA3,   8, 
                DDA4,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                If (LEqual (ALGM, Zero))
                {
                    Store (RRAM (0x0550), ASC1)
                    Store (RRAM (0x0551), ASC2)
                    Store (RRAM (0x0552), ASC3)
                    Store (RRAM (0x0553), ASC4)
                    Store (RRAM (0x0554), ADA1)
                    Store (RRAM (0x0555), ADA2)
                    Store (RRAM (0x0556), ADA3)
                    Store (RRAM (0x0557), ADA4)
                    Store (RRAM (0x0558), DSC1)
                    Store (RRAM (0x0559), DSC2)
                    Store (RRAM (0x055A), DSC3)
                    Store (RRAM (0x055B), DSC4)
                    Store (RRAM (0x055C), DDA1)
                    Store (RRAM (0x055D), DDA2)
                    Store (RRAM (0x055E), DDA3)
                    Store (RRAM (0x055F), DDA4)
                }
                ElseIf (LEqual (ALGM, One))
                {
                    Store (RRAM (0x05B0), ASC1)
                    Store (RRAM (0x05B1), ASC2)
                    Store (RRAM (0x05B2), ASC3)
                    Store (RRAM (0x05B3), ASC4)
                    Store (RRAM (0x05B4), ADA1)
                    Store (RRAM (0x05B5), ADA2)
                    Store (RRAM (0x05B6), ADA3)
                    Store (RRAM (0x05B7), ADA4)
                    Store (RRAM (0x05B8), DSC1)
                    Store (RRAM (0x05B9), DSC2)
                    Store (RRAM (0x05BA), DSC3)
                    Store (RRAM (0x05BB), DSC4)
                    Store (RRAM (0x05BC), DDA1)
                    Store (RRAM (0x05BD), DDA2)
                    Store (RRAM (0x05BE), DDA3)
                    Store (RRAM (0x05BF), DDA4)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            ElseIf (LEqual (FUNC, One))
            {
                If (LEqual (ALGM, Zero))
                {
                    WRAM (0x0550, ASC1)
                    WRAM (0x0551, ASC2)
                    WRAM (0x0552, ASC3)
                    WRAM (0x0553, ASC4)
                    WRAM (0x0554, ADA1)
                    WRAM (0x0555, ADA2)
                    WRAM (0x0556, ADA3)
                    WRAM (0x0557, ADA4)
                    WRAM (0x0558, DSC1)
                    WRAM (0x0559, DSC2)
                    WRAM (0x055A, DSC3)
                    WRAM (0x055B, DSC4)
                    WRAM (0x055C, DDA1)
                    WRAM (0x055D, DDA2)
                    WRAM (0x055E, DDA3)
                    WRAM (0x055F, DDA4)
                }
                ElseIf (LEqual (ALGM, One))
                {
                    WRAM (0x05B0, ASC1)
                    WRAM (0x05B1, ASC2)
                    WRAM (0x05B2, ASC3)
                    WRAM (0x05B3, ASC4)
                    WRAM (0x05B4, ADA1)
                    WRAM (0x05B5, ADA2)
                    WRAM (0x05B6, ADA3)
                    WRAM (0x05B7, ADA4)
                    WRAM (0x05B8, DSC1)
                    WRAM (0x05B9, DSC2)
                    WRAM (0x05BA, DSC3)
                    WRAM (0x05BB, DSC4)
                    WRAM (0x05BC, DDA1)
                    WRAM (0x05BD, DDA2)
                    WRAM (0x05BE, DDA3)
                    WRAM (0x05BF, DDA4)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }
        }

        Method (M639, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                HYS1,   8, 
                HYS2,   8, 
                HYS3,   8, 
                HYS4,   8, 
                HYS5,   8, 
                HYS6,   8, 
                HYS7,   8, 
                HYS8,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                If (LEqual (ALGM, Zero))
                {
                    Store (RRAM (0x0540), HYS1)
                    Store (RRAM (0x0541), HYS2)
                    Store (RRAM (0x0542), HYS3)
                    Store (RRAM (0x0543), HYS4)
                    Store (RRAM (0x0544), HYS5)
                    Store (RRAM (0x0545), HYS6)
                    Store (RRAM (0x0546), HYS7)
                    Store (RRAM (0x0547), HYS8)
                }
                ElseIf (LEqual (ALGM, One))
                {
                    Store (RRAM (0x05A0), HYS1)
                    Store (RRAM (0x05A1), HYS2)
                    Store (RRAM (0x05A2), HYS3)
                    Store (RRAM (0x05A3), HYS4)
                    Store (RRAM (0x05A4), HYS5)
                    Store (RRAM (0x05A5), HYS6)
                    Store (RRAM (0x05A6), HYS7)
                    Store (RRAM (0x05A7), HYS8)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            ElseIf (LEqual (FUNC, One))
            {
                If (LEqual (ALGM, Zero))
                {
                    WRAM (0x0540, HYS1)
                    WRAM (0x0541, HYS2)
                    WRAM (0x0542, HYS3)
                    WRAM (0x0543, HYS4)
                    WRAM (0x0544, HYS5)
                    WRAM (0x0545, HYS6)
                    WRAM (0x0546, HYS7)
                    WRAM (0x0547, HYS8)
                }
                ElseIf (LEqual (ALGM, One))
                {
                    WRAM (0x05A0, HYS1)
                    WRAM (0x05A1, HYS2)
                    WRAM (0x05A2, HYS3)
                    WRAM (0x05A3, HYS4)
                    WRAM (0x05A4, HYS5)
                    WRAM (0x05A5, HYS6)
                    WRAM (0x05A6, HYS7)
                    WRAM (0x05A7, HYS8)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M63A, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FANX,   8, 
                TA1L,   8, 
                TA1H,   8, 
                TA2L,   8, 
                TA2H,   8, 
                TA3L,   8, 
                TA3H,   8, 
                TA4L,   8, 
                TA4H,   8, 
                TA5L,   8, 
                TA5H,   8, 
                TA6L,   8, 
                TA6H,   8, 
                TA7L,   8, 
                TA7H,   8, 
                TA8L,   8, 
                TA8H,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                If (LEqual (FANX, Zero))
                {
                    Store (RRAM (0x05C0), TA1L)
                    Store (RRAM (0x05C1), TA1H)
                    Store (RRAM (0x05C2), TA2L)
                    Store (RRAM (0x05C3), TA2H)
                    Store (RRAM (0x05C4), TA3L)
                    Store (RRAM (0x05C5), TA3H)
                    Store (RRAM (0x05C6), TA4L)
                    Store (RRAM (0x05C7), TA4H)
                    Store (RRAM (0x05C8), TA5L)
                    Store (RRAM (0x05C9), TA5H)
                    Store (RRAM (0x05CA), TA6L)
                    Store (RRAM (0x05CB), TA6H)
                    Store (RRAM (0x05CC), TA7L)
                    Store (RRAM (0x05CD), TA7H)
                    Store (RRAM (0x05CE), TA8L)
                    Store (RRAM (0x05CF), TA8H)
                }
                ElseIf (LEqual (FANX, One))
                {
                    Store (RRAM (0x05D0), TA1L)
                    Store (RRAM (0x05D1), TA1H)
                    Store (RRAM (0x05D2), TA2L)
                    Store (RRAM (0x05D3), TA2H)
                    Store (RRAM (0x05D4), TA3L)
                    Store (RRAM (0x05D5), TA3H)
                    Store (RRAM (0x05D6), TA4L)
                    Store (RRAM (0x05D7), TA4H)
                    Store (RRAM (0x05D8), TA5L)
                    Store (RRAM (0x05D9), TA5H)
                    Store (RRAM (0x05DA), TA6L)
                    Store (RRAM (0x05DB), TA6H)
                    Store (RRAM (0x05DC), TA7L)
                    Store (RRAM (0x05DD), TA7H)
                    Store (RRAM (0x05DE), TA8L)
                    Store (RRAM (0x05DF), TA8H)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            ElseIf (LEqual (FUNC, One))
            {
                If (LEqual (FANX, Zero))
                {
                    WRAM (0x05C0, TA1L)
                    WRAM (0x05C1, TA1H)
                    WRAM (0x05C2, TA2L)
                    WRAM (0x05C3, TA2H)
                    WRAM (0x05C4, TA3L)
                    WRAM (0x05C5, TA3H)
                    WRAM (0x05C6, TA4L)
                    WRAM (0x05C7, TA4H)
                    WRAM (0x05C8, TA5L)
                    WRAM (0x05C9, TA5H)
                    WRAM (0x05CA, TA6L)
                    WRAM (0x05CB, TA6H)
                    WRAM (0x05CC, TA7L)
                    WRAM (0x05CD, TA7H)
                    WRAM (0x05CE, TA8L)
                    WRAM (0x05CF, TA8H)
                }
                ElseIf (LEqual (FANX, One))
                {
                    WRAM (0x05D0, TA1L)
                    WRAM (0x05D1, TA1H)
                    WRAM (0x05D2, TA2L)
                    WRAM (0x05D3, TA2H)
                    WRAM (0x05D4, TA3L)
                    WRAM (0x05D5, TA3H)
                    WRAM (0x05D6, TA4L)
                    WRAM (0x05D7, TA4H)
                    WRAM (0x05D8, TA5L)
                    WRAM (0x05D9, TA5H)
                    WRAM (0x05DA, TA6L)
                    WRAM (0x05DB, TA6H)
                    WRAM (0x05DC, TA7L)
                    WRAM (0x05DD, TA7H)
                    WRAM (0x05DE, TA8L)
                    WRAM (0x05DF, TA8H)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M63B, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                PARA,   8, 
                DATA,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                If (LEqual (PARA, Zero))
                {
                    Store (RRAM (0x0569), DATA)
                }
                ElseIf (LEqual (PARA, One))
                {
                    Store (RRAM (0x056A), DATA)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            ElseIf (LEqual (FUNC, One))
            {
                If (LEqual (PARA, Zero))
                {
                    WRAM (0x0569, DATA)
                }
                ElseIf (LEqual (PARA, One))
                {
                    WRAM (0x056A, DATA)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M63C, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x20)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                DATA,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                Store (RRAM (0x0511), DATA)
            }
            ElseIf (LEqual (FUNC, One))
            {
                Store (RRAM (0x0512), DATA)
            }
            ElseIf (LEqual (FUNC, 0x02))
            {
                Store (RRAM (0x0513), DATA)
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M63D, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FREQ,   16
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                Store (0x017D7840, Local0)
                Store (RRAM (0xF4A0), Local1)
                Add (Local1, One, Local1)
                Store (RRAM (0xF4A2), Local2)
                Add (Local2, One, Local2)
                Multiply (Local2, Local1, Local2)
                Divide (Local0, Local2, Local3, Local1)
                Store (Local1, FREQ)
            }
            ElseIf (LEqual (FUNC, One))
            {
                Store (Zero, FREQ)
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M63E, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FANX,   8, 
                FAND,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                If (LEqual (FANX, Zero))
                {
                    Store (RFOV (Zero), FAND)
                }
                ElseIf (LEqual (FANX, One))
                {
                    Store (RFOV (One), FAND)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            ElseIf (LEqual (FUNC, One))
            {
                If (LEqual (FANX, Zero))
                {
                    WFOV (Zero, FAND)
                }
                ElseIf (LEqual (FANX, One))
                {
                    WFOV (One, FAND)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }

        Method (M63F, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FANX,   8, 
                DIFF,   8
            }

            Or (SM63, 0x80, SM63)
            Store (Zero, EM63)
            If (LEqual (FUNC, Zero))
            {
                If (LEqual (FANX, Zero))
                {
                    Store (RRAM (0x0564), DIFF)
                }
                ElseIf (LEqual (FANX, One))
                {
                    Store (0xFF, DIFF)
                }
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            ElseIf (LEqual (FUNC, One))
            {
                If (LEqual (FANX, Zero))
                {
                    WRAM (0x0564, DIFF)
                }
                ElseIf (LEqual (FANX, One)) {}
                Else
                {
                    Store (0x80, SM63)
                    Store (One, EM63)
                }
            }
            Else
            {
                Store (0x80, SM63)
                Store (One, EM63)
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.LPCB.HEC)
    {
        Method (MF30, 4, NotSerialized)
        {
            If (LNotEqual (Arg1, 0x30))
            {
                Return (Zero)
            }

            Store (0xFF, Local0)
            If (LEqual (Arg2, Zero))
            {
                Store (G30V (Arg0, Arg3), Local0)
            }

            If (LEqual (Arg2, One))
            {
                Store (EC01 (Arg0, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x02))
            {
                Store (EC02 (Arg0, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x03))
            {
                Store (EC03 (Arg0, Arg3), Local0)
            }

            If (LEqual (Arg2, 0x84))
            {
                Store (EC84 (Arg0, Arg3), Local0)
            }

            And (Arg2, 0xFC, Local2)
            If (LEqual (Local2, 0x80))
            {
                ^^^^ATKD.BSMI (Arg0)
                If (LEqual (Arg2, 0x81))
                {
                    If (BATP (Zero))
                    {
                        Notify (BAT0, 0x80)
                    }
                }

                Return (Zero)
            }

            If (LEqual (Local0, 0xFF))
            {
                Return (Zero)
            }

            OperationRegion (FM30, SystemMemory, Arg0, 0x08)
            Field (FM30, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM30,   8, 
                EM30,   8
            }

            If (Local0)
            {
                Store (Local0, EM30)
                Or (SM30, 0x02, SM30)
            }

            And (SM30, 0xFE, SM30)
            Or (SM30, 0x80, SM30)
            Return (Zero)
        }

        Method (G30V, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0C))
            {
                Return (0x02)
            }

            OperationRegion (\F300, SystemMemory, Arg0, Arg1)
            Field (F300, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER)
            Store (Zero, SVER)
            Return (Zero)
        }

        Method (EC01, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x10))
            {
                Return (0x02)
            }

            OperationRegion (FEC1, SystemMemory, Arg0, Arg1)
            Field (FEC1, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ECMD,   8, 
                EDA1,   8, 
                EDA2,   8, 
                EDA3,   8, 
                EDA4,   8, 
                EDA5,   8
            }

            Store (ECXT (ECMD, EDA1, EDA2, EDA3, EDA4, EDA5), Local0)
            Store (DerefOf (Index (Local0, One)), EDA1)
            Store (DerefOf (Index (Local0, One)), EDA2)
            Store (DerefOf (Index (Local0, One)), EDA3)
            Store (DerefOf (Index (Local0, One)), EDA4)
            Store (DerefOf (Index (Local0, One)), EDA5)
            Return (DerefOf (Index (Local0, Zero)))
        }

        Method (EC02, 2, NotSerialized)
        {
            Return (Zero)
        }

        Method (EC03, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x09))
            {
                Return (0x02)
            }

            Store (Zero, Local0)
            OperationRegion (FEC3, SystemMemory, Arg0, Arg1)
            Field (FEC3, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                FNEN,   8
            }

            If (FNEN)
            {
                FNLK (One)
            }
            Else
            {
                FNLK (Zero)
            }

            Return (Zero)
        }

        Method (EC84, 2, NotSerialized)
        {
            If (LLess (Arg1, 0x0A))
            {
                Return (0x02)
            }

            OperationRegion (ECEG, SystemMemory, Arg0, Arg1)
            Field (ECEG, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                EVTP,   8, 
                EVID,   8
            }

            ECXT (0xAE, EVTP, EVID, Zero, Zero, Zero)
            Return (Zero)
        }
    }

    Scope (\)
    {
        Name (SLLL, Zero)
        Name (DS3T, Zero)
        Method (LIMT, 0, NotSerialized)
        {
            Subtract (\_SB.CPUP, \_SB.SLMT, Local0)
            Return (Local0)
        }

        Method (PRJB, 0, NotSerialized)
        {
            \_SB.PCI0.LPCB.HEC.WRAM (0x07FE, 0x80)
            \_SB.PCI0.LPCB.HEC.SMBW (\_SB.PCI0.LPCB.HEC.WRWD, \_SB.PCI0.LPCB.HEC.BADR, Zero, Zero, 0x02, 0x10)
            \_SB.PCI0.LPCB.HEC.SMBW (\_SB.PCI0.LPCB.HEC.WRWD, \_SB.PCI0.LPCB.HEC.BADR, Zero, Zero, 0x02, 0x10)
        }

        Method (PRJS, 1, Serialized)
        {
        }

        Method (PRJW, 1, Serialized)
        {
            \_SB.PCI0.LPCB.HEC.STBR ()
            Store (0xAA, SLLL)
            Notify (\_SB.SLPB, 0x02)
        }

        Method (GLID, 0, Serialized)
        {
            Return (\_SB.PCI0.LPCB.HEC.RPIN (0x04, 0x06))
        }

        Method (OMLD, 1, Serialized)
        {
        }

        Method (OTLD, 1, Serialized)
        {
        }

        Method (OGLD, 1, Serialized)
        {
            Return (Zero)
        }

        Method (OWLD, 1, Serialized)
        {
            Store (Arg0, \_SB.WRST)
            SGPL (0x16, One, Arg0)
        }

        Method (OBTD, 1, Serialized)
        {
            Store (Arg0, \_SB.BRST)
            If (LLess (OSFG, OSW8))
            {
                SGPL (0x30, One, Arg0)
            }

            SGPL (0x39, One, Arg0)
        }

        Method (OWMD, 1, Serialized)
        {
            Store (Arg0, \_SB.WMST)
        }

        Method (OHWR, 0, Serialized)
        {
            Store (Zero, Local0)
            If (\_SB.BTDP)
            {
                Or (Local0, 0x0100, Local0)
            }

            Return (Local0)
        }

        Method (ORST, 0, Serialized)
        {
            Store (Zero, Local0)
            If (\_SB.WRST)
            {
                Or (Local0, One, Local0)
            }

            If (\_SB.BRST)
            {
                Or (Local0, 0x02, Local0)
            }

            Return (Local0)
        }

        Method (GBTL, 0, Serialized)
        {
            Return (Zero)
        }

        Method (SBTL, 1, Serialized)
        {
        }

        Method (BL2C, 0, NotSerialized)
        {
            Return (Zero)
        }

        Method (OGND, 0, NotSerialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                Return (\_SB.PCI0.GFX0.NXTD)
            }

            Return (Zero)
        }

        Method (OEAD, 0, NotSerialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                Return (\_SB.AVLD)
            }

            Return (Zero)
        }

        Method (OGCD, 0, NotSerialized)
        {
            If (\_SB.PCI0.GFX0.PRST ())
            {
                Return (\_SB.PCI0.GFX0.GETD ())
            }

            Return (Zero)
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.LPCB.SPTS (Arg0)
            \_SB.PCI0.NPTS (Arg0)
            \_SB.PCI0.GFX0.OPTS (Arg0)
            \_SB.ATKD.GENS (Arg0)
            \_SB.ATKD.DS3S (Arg0)
            OEMS (Arg0)
            \_SB.PCI0.P0P2.VGA.OPTS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.LPCB.SWAK (Arg0)
        \_SB.PCI0.NWAK (Arg0)
        \_SB.PCI0.GFX0.OWAK (Arg0)
        \_SB.ATKD.GENW (Arg0)
        \_SB.ATKD.DS3W (Arg0)
        OEMW (Arg0)
        \_SB.PCI0.P0P2.VGA.OPTW (Arg0)
    }

    Method (OSCM, 4, NotSerialized)
    {
        Return (Zero)
    }
}

