# ShellStartupLooper
Lock a user to running IE.  No Windows Explorer for you!  This helps in a "Kiosk" type terminal.

This exe can be run automatically by creating the following registry changes through GroupPolicy:

Action:     Update 
Hive:       HKEY_CURRENT_USER 
Key path:   Software\Microsoft\Windows\CurrentVersion\Policies\System 
Value name: Shell 
Value type: REG_SZ 
Value data: c:\scripts\ie-kioskforever.exe https://webtime2.example.com/webtime/webclock 
