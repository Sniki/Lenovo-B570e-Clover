// For disabling the discrete GPU (Nvidia GT525M)

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "B570E", "_DDGPU", 0)
{
#endif
    External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj)

    Device(RMD1)
    {
        Name(_HID, "RMD10000")
        Method(_INI)
        {
            // disable discrete graphics (Nvidia GT525M) if it is present
            If (CondRefOf(\_SB.PCI0.PEG0.PEGP._OFF)) { \_SB.PCI0.PEG0.PEGP._OFF() }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
