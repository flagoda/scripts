$result = Get-WmiObject -query "SELECT * FROM win32_printerDriver"

foreach ($driver in $result)
{
	# Replace with the manufacturer - for example KONICA, CANON, SHARP
	# Keep * to ensure search the manufacturer
    if ($driver.Name -like "*MANUFACTURER*")
    {
        Restart-Service Spooler -Force 2> c:\yourlogfile.log
        $driver.Delete()
    }
}
