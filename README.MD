# Divers scripts Powershell, Batch, VBS

### resizeSWAP.ps1
- Script qui change la swap a 1.5 x Mémoire RAM ou a 5 Go si la machine a plus de 6 Go de RAM
- Script to change swap to 1.5 x Memory RAM or at 5 Go if computer have more than 6 Go RAM

### getManufacturer.bat
- Executer opérations selon le constructeur de la machine (exemple pour utilitaires Dell ou HP)
- Execute operation according to manufacturer of the computer

### changeLoginBackgroundW7.bat
- Changer fond d'écran du login sur Windows 7
- Change login screen on windows 7

### forceWindowsUpdate.vbs
- Forcer mises à jour Windows avec rapport txt (source https://msdn.microsoft.com/en-us/library/aa387102(VS.85).aspx)
- Force windows update to start

### enableSMB1.bat
- Déconseillé !!
- Not recommended !!

### networkDriveNotAutoConnect.ps1
- Les lecteurs reseaux ne sont pas reconnecté automatiquement après redemarrage ou fermeture de session. Cela nécessite un simple clic pour les ouvrir. Cela permet de se protéger des cryptolocker et ransomware
- Not autoconnect network drive after reboot or logout to protect from cryptolocker, ransomware

### autoDeleteScriptAfterExecution.bat
- Commande qui supprime le script lui même après son execution
- Command to delete the script after his execution

### changeLetterDrive.vbs
- Changer un lecteur de lettre pour par exemple le libérer afin de pouvoir monter un lecteur réseau ayant besoin de ce lecteur
- Change letter drive to, for example free letter needed to mount a network drive

### deleteSysprepResponseFile.bat
- Supprimer les fichiers de reponse du Sysprep
- Delete Sysprep response file

### disableTotalHibernation.bat
- Desactiver complètement l'hibernation et mise en veille
- Disable all hibernation

### enableRemoteRegistry.bat
- Activation du registre a distance
- Enable remote registry

### enableEAPwindowsService.bat
- Configuration automatique du Service Reseau cablé pour l'EAP
- Autoconfig for EAP

### cleanPrinterDriver.ps1
- Supprimer driver d'impression selon constructeur
- Delete printer driver by manufacturer

### disableFastBoot.ps1
- Désactiver le FastBoot sur Windows 10
- Disable FastBoot

### thunderbirdGetPathLocalFolder.ps1
- Récupérer le chemin des dossiers locaux de Thunderbird pour l'utilisateur courant
- Get local folder path of thunderbird

### mitigationsSpectreMeltdown.bat
- Atténuations Spectre / Meltdown
- Mitigations Spectre / Meltdown

### keep15MostRecentRecordsMysql.sql
- Mysql : Supprimer toutes lignes d'une table sauf les 15 plus récentes
- Mysql : Delete all records except 15 most recent

### UEFI_or_Legacy.sh
- Savoir si on est en UEFI
- Am i in UEFI 

### ForcePxeBoot_DellCommandConfigure.ps1
- Set PXE on first boot order UEFI, Dell Workstations, Dell Command Configure
