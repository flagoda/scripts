Dim objShell, objExec
Dim strVolume
 Set objShell = WScript.CreateObject("WScript.Shell")
'Get letter I
 Set objExec = objShell.Exec("mountvol I: /L")
 strVolume = Trim(objExec.StdOut.ReadLine())
'Umount I
 Set objExec = objShell.Exec("mountvol I: /D")
'Mount Z with old I.
 Set objExec = objShell.Exec("mountvol Z: " & strVolume)
