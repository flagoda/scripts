# Récupérer le chemin des dossiers locaux de thunderbird pour l'utilisateur courant
# On recupere le username de l'utilisateur + numero d'UC
$sesame = [Environment]::UserName
# On cherche chemin exact du pref.js car le sous répertoire après Profiles est un id aleatoire pas identique sur tout les PC
$repPrefJS = Get-ChildItem -Path "C:\Users\$sesame\AppData\Roaming\Thunderbird\Profiles" -Recurse -Name prefs.js
# concat chemin base + resultat
$cheminPrefJS = "C:\Users\$sesame\AppData\Roaming\Thunderbird\Profiles\$repPrefJS"
# On recupere les 2 paramètres qui nous interesse mail.server.server2.directory et mail.server.server2.directory-rel
$recup2param = Get-Content $cheminPrefJS | Select-String -Pattern "mail.server.server2.directory"
# Write-Host $recup2param
# On recup la valeur des paramètres qui est entre quotes
$tabParam = $recup2param -split '"'
# On garde que les 2 qui nous interesse
$param1Absolu = $tabParam[3]
$param2Relatif = $tabParam[8]
#Write-Host $param1Absolu
#Write-Host $param2Relatif
