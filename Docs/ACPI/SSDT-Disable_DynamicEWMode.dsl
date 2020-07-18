DefinitionBlock ("", "SSDT", 2, "ACDT", "ps2", 0)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    
    Name(_SB.PCI0.LPCB.PS2K.RMCF, Package()
    {
        "Synaptics TouchPad", Package()
        {
            "DynamicEWMode", ">n",
        },
    })
}
//EOF
