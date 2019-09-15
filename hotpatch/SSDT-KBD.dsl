// Lenovo B570e Keyboard Map

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "B570E", "_KBD", 0)
{
#endif
    External (_SB.PCI0.LPCB.EC, DeviceObj)
    External (_SB.PCI0.LPCB.KBD0, DeviceObj)

    Scope (_SB.PCI0.LPCB.EC)
    {
        Method (_Q1D, 0, NotSerialized) // F14 Brightness Down
        {
            Notify (KBD0, 0x0405)
        }
        Method (_Q1C, 0, NotSerialized) // F15 Brightness Up
        {
            Notify (KBD0, 0x0406)
        }
        Method (_Q77, 0, NotSerialized) // F16
        {
            Notify (KBD0, 0x0367)
        }
        Method (_Q28, 0, NotSerialized) // F17
        {
            Notify (KBD0, 0x0368)
        }
        Method (_Q22, 0, NotSerialized) // F18
        {
            Notify (KBD0, 0x0369)
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
#ifndef NO_DEFINITIONBLOCK
}
#endif
