// for testing including all SSDTs with NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "B570E", "_B570E", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-DDGPU.dsl"
    #include "SSDT-IMEI.dsl"
    #include "SSDT-USB.dsl"
    #include "SSDT-SATA.dsl"
    #include "SSDT-SMBUS.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-KBD.dsl"
    #include "SSDT-ALS0.dsl"
    #include "SSDT-PNLF.dsl"

}
//EOF
