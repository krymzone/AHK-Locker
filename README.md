# AHK-Locker
A simple template script that can lock an AHK script based on the BIOS Serial Number (Tool for getting the serial number included) - Windows Only (for now)

The script is really simple, it gets a hardcoded Serial Number that you set before compiling. During the execution it checks your own Serial number, and if they match it goes on with running the whole script, if not, it throws an exception and closes itself.

## Usage
- Really simple usage, just run `getBiosSerial.ahk` to get the BIOS Serial Number of the device you want the script to be locked to form there you can copy your Serial Number
- Go to inside `allowOrDeny.ahk` to the `HardcodedSerial := "BIOS_SERIAL_HERE"` line and place your Serial Number there
- You can also configure the MsgBox, by default it throws a simple error and closes the program after 5 seconds (a timeout is needed since some parts of the script that are outside the if clause can still run if the MsgBox is not closed, it could (I think) be solved by just freezing the program but I was too lazy to do that.)
- Compile the AHK script into an `.exe`

