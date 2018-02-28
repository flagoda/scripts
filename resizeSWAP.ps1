# On récupère taille de la RAM de la machine
# Get RAM of computer
$Taille_RAM=[STRING]((Get-WmiObject -Class Win32_ComputerSystem ).TotalPhysicalMemory/1GB)
# on arrondi a 2 virgules
$Taille_Arrondi=[Math]::Round($Taille_RAM, 2)

# Si 6 Go de RAM ou plus on fixe la swap a 5 Go (inutile d'avoir plus)
# If more than 6 Go RAM , fix swap at 5 Go (no need to have more)
if ($Taille_Arrondi -ge 6) {
   	$PageFile = Get-WmiObject Win32_PageFileSetting
	$PageFile.InitialSize = 5*1024
	$PageFile.MaximumSize = 5*1024
	$PageFile.Put()
}
# Sinon Swap a 1,5 de la RAM  - swap = RAM x 1.5
Else {
	$Taille_SWAP=($Taille_Arrondi*1.5)*1024
	$PageFile = Get-WmiObject Win32_PageFileSetting
	$PageFile.InitialSize = $Taille_SWAP
	$PageFile.MaximumSize = $Taille_SWAP
	$PageFile.Put()
}
