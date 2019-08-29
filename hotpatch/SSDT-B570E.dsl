// for testing including all SSDTs with NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "B570E", "_B570E", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-DDGPU.dsl"
    #include "SSDT-KBD.dsl"
    #include "SSDT-USB.dsl"
    #include "SSDT-GPRW.dsl"
}

