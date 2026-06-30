###############################################################################
# RAPPORT DES UTILISATEURS LOCAUX
# Description :
#   - Récupère tous les utilisateurs locaux de la machine
#   - Affiche leurs principales informations
#   - Crée automatiquement un dossier de rapports
#   - Exporte les informations au format CSV
#   - Génère également un rapport HTML
#   - Affiche un résumé à l'écran
# Compatible : Windows PowerShell 5.1 / PowerShell 7+
###############################################################################

# Emplacement des rapports
$DossierRapport = "C:\Rapports"

# Création du dossier s'il n'existe pas
if (!(Test-Path $DossierRapport))
{
    New-Item -ItemType Directory -Path $DossierRapport -Force | Out-Null
}

# Date du rapport
$Date = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"

# Fichiers de sortie
$FichierCSV  = "$DossierRapport\Utilisateurs_Locaux_$Date.csv"
$FichierHTML = "$DossierRapport\Utilisateurs_Locaux_$Date.html"

# Récupération des utilisateurs locaux
$Utilisateurs = Get-LocalUser |
Select-Object `
    Name,
    FullName,
    Description,
    Enabled,
    PasswordRequired,
    PasswordExpires,
    UserMayChangePassword,
    LastLogon,
    SID

# Affichage à l'écran
Write-Host ""
Write-Host "================ UTILISATEURS LOCAUX ================" -ForegroundColor Cyan

$Utilisateurs | Format-Table -AutoSize

# Export CSV
$Utilisateurs |
Export-Csv `
    -Path $FichierCSV `
    -NoTypeInformation `
    -Encoding UTF8

# Export HTML
$Utilisateurs |
ConvertTo-Html `
    -Title "Rapport des utilisateurs locaux" `
    -PreContent "<h1>Rapport des utilisateurs locaux</h1><p>Généré le $(Get-Date)</p>" |
Out-File `
    -FilePath $FichierHTML `
    -Encoding UTF8

# Résumé
$Total = $Utilisateurs.Count
$Actifs = ($Utilisateurs | Where-Object {$_.Enabled -eq $true}).Count
$Desactives = ($Utilisateurs | Where-Object {$_.Enabled -eq $false}).Count

Write-Host ""
Write-Host "================ RÉSUMÉ ================" -ForegroundColor Green
Write-Host "Nombre total d'utilisateurs : $Total"
Write-Host "Utilisateurs actifs         : $Actifs"
Write-Host "Utilisateurs désactivés     : $Desactives"

Write-Host ""
Write-Host "Rapport CSV  : $FichierCSV" -ForegroundColor Yellow
Write-Host "Rapport HTML : $FichierHTML" -ForegroundColor Yellow

###############################################################################
# FIN DU SCRIPT
###############################################################################