# Not autoconnect network drive after reboot or logout
# To protect from cryptolocker, ransomware
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\NetworkProvider' RestoreConnection -Type DWORD -Value 0 -Force
