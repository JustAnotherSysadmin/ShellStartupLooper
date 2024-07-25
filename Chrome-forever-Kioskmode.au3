#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         John Lucas
 

 Script Function:
	Load Chrome.  When/IF Chrome exits
	just restart Chrome again.  Be sure to pass a URL as a command line argument.

	Example:   Chrome-forever-Kioskmode.exe https://webclock.example.com

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <MsgBoxConstants.au3>

Global $WebURL = ""

MsgBox(0,"Startup looper", "Startup looper version 2023-06-01T14:42", 5)

if Not $CmdLine[0] Then
   ;MsgBox(0,"Error", "No Command line arguments passed", 30)
   MsgBox(0,"URL missing", "No Command line arguments passed! Please pass a URL to begin Chrome mode looping.")
   Exit 1
Else
   ;MsgBox(0,"CmdLine1", "CmdLine[1] is "&$CmdLine[1], 3)
   $WebURL = $CmdLine[1]
EndIF


while 1
;For $val=1 to 4

  runWait('C:\Program Files\Google\Chrome\Application\chrome.exe --kiosk '&$WebURL, "", @SW_MAXIMIZE)

  ;MsgBox times out after 3 seconds
  ;MsgBox(0,"Loop", "Loop is"&$val, 3)
  ;MsgBox(0,"Loop", "Loop "&$val&" is "&$WebURL, 3)
;Next     ;end of for loop
WEnd

