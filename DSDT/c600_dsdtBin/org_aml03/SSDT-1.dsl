/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of acpi_ssdt01.aml, Thu May  4 20:29:44 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000633 (1587)
 *     Revision         0x01
 *     Checksum         0x77
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Cst"
 *     OEM Revision     0x00003001 (12289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Cst", 0x00003001)
{
    External (_PR_.CPU0, ProcessorObj)
    External (CFGD, IntObj)
    External (PDC0, IntObj)

    Scope (\_PR.CPU0)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            If (LAnd (And (CFGD, 0x00200000), And (PDC0, 0x0200)))
            {
                If (And (CFGD, 0x20000000))
                {
                    If (And (CFGD, 0x40))
                    {
                        Return (Package (0x04)
                        {
                            0x03, 
                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x01,               // Bit Width
                                        0x02,               // Bit Offset
                                        0x0000000000000000, // Address
                                        0x01,               // Access Size
                                        )
                                }, 

                                One, 
                                0x03, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x01,               // Bit Width
                                        0x02,               // Bit Offset
                                        0x0000000000000010, // Address
                                        0x03,               // Access Size
                                        )
                                }, 

                                0x02, 
                                0xCD, 
                                0x01F4
                            }, 

                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x01,               // Bit Width
                                        0x02,               // Bit Offset
                                        0x0000000000000030, // Address
                                        0x03,               // Access Size
                                        )
                                }, 

                                0x03, 
                                0xF5, 
                                0xC8
                            }
                        })
                    }

                    Return (Package (0x03)
                    {
                        0x02, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            0x03, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000030, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            0x03, 
                            0xF5, 
                            0xC8
                        }
                    })
                }

                If (And (CFGD, 0x0200))
                {
                    If (And (CFGD, 0x40))
                    {
                        Return (Package (0x04)
                        {
                            0x03, 
                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x01,               // Bit Width
                                        0x02,               // Bit Offset
                                        0x0000000000000000, // Address
                                        0x01,               // Access Size
                                        )
                                }, 

                                One, 
                                0x03, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x01,               // Bit Width
                                        0x02,               // Bit Offset
                                        0x0000000000000010, // Address
                                        0x03,               // Access Size
                                        )
                                }, 

                                0x02, 
                                0xCD, 
                                0x01F4
                            }, 

                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x01,               // Bit Width
                                        0x02,               // Bit Offset
                                        0x0000000000000020, // Address
                                        0x03,               // Access Size
                                        )
                                }, 

                                0x03, 
                                0xF5, 
                                0x015E
                            }
                        })
                    }

                    Return (Package (0x03)
                    {
                        0x02, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            0x03, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000020, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            0x03, 
                            0xF5, 
                            0x015E
                        }
                    })
                }

                If (And (CFGD, 0x40))
                {
                    Return (Package (0x03)
                    {
                        0x02, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            0x03, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000010, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            0x02, 
                            0xCD, 
                            0x01F4
                        }
                    })
                }

                Return (Package (0x02)
                {
                    One, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000000, // Address
                                0x01,               // Access Size
                                )
                        }, 

                        One, 
                        0x03, 
                        0x03E8
                    }
                })
            }

            If (LAnd (And (CFGD, 0x00200000), And (PDC0, 0x0100)))
            {
                If (And (CFGD, 0x20000000))
                {
                    If (And (CFGD, 0x40))
                    {
                        Return (Package (0x04)
                        {
                            0x03, 
                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x01,               // Bit Width
                                        0x02,               // Bit Offset
                                        0x0000000000000000, // Address
                                        0x01,               // Access Size
                                        )
                                }, 

                                One, 
                                0x03, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (SystemIO, 
                                        0x08,               // Bit Width
                                        0x00,               // Bit Offset
                                        0x0000000000000414, // Address
                                        ,)
                                }, 

                                0x02, 
                                0xCD, 
                                0x01F4
                            }, 

                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (SystemIO, 
                                        0x08,               // Bit Width
                                        0x00,               // Bit Offset
                                        0x0000000000000416, // Address
                                        ,)
                                }, 

                                0x03, 
                                0xF5, 
                                0xC8
                            }
                        })
                    }

                    Return (Package (0x03)
                    {
                        0x02, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            0x03, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000416, // Address
                                    ,)
                            }, 

                            0x03, 
                            0xF5, 
                            0xC8
                        }
                    })
                }

                If (And (CFGD, 0x0200))
                {
                    If (And (CFGD, 0x40))
                    {
                        Return (Package (0x04)
                        {
                            0x03, 
                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (FFixedHW, 
                                        0x01,               // Bit Width
                                        0x02,               // Bit Offset
                                        0x0000000000000000, // Address
                                        0x01,               // Access Size
                                        )
                                }, 

                                One, 
                                0x03, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (SystemIO, 
                                        0x08,               // Bit Width
                                        0x00,               // Bit Offset
                                        0x0000000000000414, // Address
                                        ,)
                                }, 

                                0x02, 
                                0xCD, 
                                0x01F4
                            }, 

                            Package (0x04)
                            {
                                ResourceTemplate ()
                                {
                                    Register (SystemIO, 
                                        0x08,               // Bit Width
                                        0x00,               // Bit Offset
                                        0x0000000000000415, // Address
                                        ,)
                                }, 

                                0x03, 
                                0xF5, 
                                0x015E
                            }
                        })
                    }

                    Return (Package (0x03)
                    {
                        0x02, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            0x03, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000415, // Address
                                    ,)
                            }, 

                            0x03, 
                            0xF5, 
                            0x015E
                        }
                    })
                }

                If (And (CFGD, 0x40))
                {
                    Return (Package (0x03)
                    {
                        0x02, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x01,               // Bit Width
                                    0x02,               // Bit Offset
                                    0x0000000000000000, // Address
                                    0x01,               // Access Size
                                    )
                            }, 

                            One, 
                            0x03, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000414, // Address
                                    ,)
                            }, 

                            0x02, 
                            0xCD, 
                            0x01F4
                        }
                    })
                }

                Return (Package (0x02)
                {
                    One, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x01,               // Bit Width
                                0x02,               // Bit Offset
                                0x0000000000000000, // Address
                                0x01,               // Access Size
                                )
                        }, 

                        One, 
                        0x03, 
                        0x03E8
                    }
                })
            }

            If (And (CFGD, 0x20000000))
            {
                If (And (CFGD, 0x40))
                {
                    Return (Package (0x04)
                    {
                        0x03, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            One, 
                            0x03, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000414, // Address
                                    ,)
                            }, 

                            0x02, 
                            0xCD, 
                            0x01F4
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000416, // Address
                                    ,)
                            }, 

                            0x03, 
                            0xF5, 
                            0xC8
                        }
                    })
                }

                Return (Package (0x03)
                {
                    0x02, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        One, 
                        0x03, 
                        0x03E8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000416, // Address
                                ,)
                        }, 

                        0x03, 
                        0xF5, 
                        0xC8
                    }
                })
            }

            If (And (CFGD, 0x0200))
            {
                If (And (CFGD, 0x40))
                {
                    Return (Package (0x04)
                    {
                        0x03, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            One, 
                            0x03, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000414, // Address
                                    ,)
                            }, 

                            0x02, 
                            0xCD, 
                            0x01F4
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000415, // Address
                                    ,)
                            }, 

                            0x03, 
                            0xF5, 
                            0x015E
                        }
                    })
                }

                Return (Package (0x03)
                {
                    0x02, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        One, 
                        0x03, 
                        0x03E8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000415, // Address
                                ,)
                        }, 

                        0x03, 
                        0xF5, 
                        0x015E
                    }
                })
            }

            If (And (CFGD, 0x40))
            {
                Return (Package (0x03)
                {
                    0x02, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        One, 
                        0x03, 
                        0x03E8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000414, // Address
                                ,)
                        }, 

                        0x02, 
                        0xCD, 
                        0x01F4
                    }
                })
            }

            Return (Package (0x02)
            {
                One, 
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    One, 
                    0x03, 
                    0x03E8
                }
            })
        }
    }
}

