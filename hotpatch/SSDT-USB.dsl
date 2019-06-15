// Custom USB Port Injector for Lenovo B570e.
// Note: Uncomment HP16 if you want to enable Card Reader, Disabled since it is not Supported.

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "B570E", "_USB", 0)
{
#endif
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "HUB1", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {,
                    "HP12", Package() // USB Port on the Left Side
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    //"HP16", Package() // Card Reader (USB2.0-CRW)
                    //{
                        //"UsbConnector", 0,
                        //"portType", 2,
                        //"port", Buffer() { 6, 0, 0, 0 },
                    //},
                },
            },
            "HUB2", Package()
            {
                "port-count", Buffer() { 6, 0, 0, 0 },
                "ports", Package()
                {
                    "HP22", Package() // USB Port (Right side - Bottom)
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HP23", Package() // USB Port (Right side - Top)
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HP24", Package() // Bluetooth
                    {
                        //"UsbConnector", 0,
                        "portType", 2,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HP25", Package() // Camera
                    {
                        //"UsbConnector", 0,
                        "portType", 2,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                },
            },
            "EH01", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "PR11", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                },
            },
            "EH02", Package()
            {
                "port-count", Buffer() { 6, 0, 0, 0 },
                "ports", Package()
                {
                    "PR21", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                },
            },
        })
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
