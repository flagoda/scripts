@echo off
rem Enable SMB1 Server + Client
rem Need reboot
sc.exe config lanmanworkstation depend= bowser/mrxsmb10/mrxsmb20/nsi
sc.exe config mrxsmb10 start= auto
powershell Set-ItemProperty -Path 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters' -Name SMB1 -Value 1 -Type DWORD -Force
