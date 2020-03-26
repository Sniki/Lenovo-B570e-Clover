// Lenovo B570e Keyboard Map

DefinitionBlock ("", "SSDT", 2, "B570E", "_KBD", 0)
{
    External(_SB.PCI0.LPCB.EC0, DeviceObj)
    External(_SB.PCI0.LPCB.KBD0, DeviceObj)
    External(_SB.PCI0.LPCB.EC0.XQ1D, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ1C, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ77, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ28, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ22, MethodObj)

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q1D, 0, NotSerialized) // F14 Brightness Down
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x0405)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ1D ()
            }
        }
        Method (_Q1C, 0, NotSerialized) // F15 Brightness Up
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x0406)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ1C ()
            }
        }
        Method (_Q77, 0, NotSerialized) // F16
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x0367)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ77 ()
            }
        }
        Method (_Q28, 0, NotSerialized) // F17
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x0368)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ28 ()
            }
        }
        Method (_Q22, 0, NotSerialized) // F18
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x0369)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ22 ()
            }
        }         
    }
    
    Scope (_SB.PCI0.LPCB.KBD0)
    {
        // Custom Keyboard Buttons Map
        Name(RMCF, Package()
        {
            "Keyboard", Package()
            {
                "Breakless PS2", Package()
                {
                    Package(){},
                    "e06b", // Fn+F10
                },
                "MaximumMacroTime", 25000000,
                "Macro Inversion", Package()
                {
                    Package(){},
                    // Fn+F3
                    Buffer() { 0xff, 0xff, 0x02, 0x6b, 0x00, 0x00, 0x00, 0x00, 0x02, 0x5b, 0x01, 0x19 },
                    Buffer() { 0xff, 0xff, 0x02, 0xeb, 0x00, 0x00, 0x00, 0x00, 0x01, 0x99, 0x02, 0xdb },
                },
                "Custom ADB Map", Package()
                {
                    Package(){},
                    "e06b=70", // Video mirror
                },

                "Custom PS2 Map", Package()
                {
                    Package(){},
                    "e037=64", // PrtSc=F13
                    "46=00", // Disable ScrLk
                    "e045=00", // Disable Pause
                    "e046=00", // Disable Break
                    "e05d=6a", // RightClick (Context Menu)
                },
            },
        })
    } 
}
