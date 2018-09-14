# Set PXE on first boot order UEFI Dell workstations
# source : https://www.dell.com/community/Enterprise-Client/Dell-Command-Configure-bootorder/td-p/5075223
.\cctk.exe bootorder --bootlisttype=uefi >.\uefi.txt

# Modifie ordre de boot en mettant onboard NIC IPV4 en 1er
foreach($line in Get-Content .\uefi.txt) {
if($line -match "Onboard NIC.IPV6."){
$uefi2 = $line -split " " -match "uefi\."
.\cctk.exe bootorder --bootlisttype=uefi --disabledevice=$uefi2
}
if($line -match "Onboard NIC.IPV4."){
$uefi = $line -split " " -match "uefi\."
.\cctk.exe bootorder --bootlisttype=uefi --sequence=$uefi
}
}
