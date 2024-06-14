BiosInfo := GetBiosSerial()
HardcodedSerial := "BIOS_SERIAL_HERE" ; Replace with your hardcoded serial number
if (BiosInfo != HardcodedSerial)
{
    MsgBox, 48, Error, Error: Access Denied., 5 ; Timeout after 5 seconds
    ExitApp
}
else
{
    MsgBox % "Serial number matches: " BiosInfo
}
Return

GetBiosSerial()
{
    wmi := ComObjGet("winmgmts:")
    query := wmi.ExecQuery("Select SerialNumber from Win32_BIOS")._NewEnum()
    if query[bios]
    {
        serial := bios.SerialNumber
    }
    wmi := query := ""
    return serial
}
