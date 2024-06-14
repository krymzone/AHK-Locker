BiosInfo := GetBiosSerial() 
Gui, Add, Edit, w400 h40, % BiosInfo
Gui, Add, Button, gCopySerial, Copy to Clipboard
Gui, Show, , BIOS Serial Number
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

CopySerial:
GuiControlGet, serial, , Edit1
Clipboard := serial
MsgBox, The BIOS Serial Number has been copied to the clipboard.
Return

GuiClose:
ExitApp
