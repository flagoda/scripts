Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" HiberbootEnabled -Type DWORD -Value 0 -Force
