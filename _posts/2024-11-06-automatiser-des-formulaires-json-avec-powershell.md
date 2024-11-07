--- 
title:  "Powershell Automatiser des formulaires via json - novembre 2024"
Article_file_name:  "automatiser-des-formulaires-json-avec-powershell.md"
tags: ["PowerShell", "automatiser", "formulaires", "json", "nov", "nov-2024"]
description:  "Powershell Automatiser des formulaires via json "
date: 2024-11-06 21:33:29
draft: false 
lang: fr
layout: post
---

- Dans cet article nous verrons comment automatiser des formulaires web ou sur une appli avec PowerShell
    - Via un fichier JSON qui servira de source d'entrée pour chaque itération
    - Prévisualiser le contenu du du fichier JSON 
    - Simuler des saisies de clavier et réutiliser les données du fichier JSON comme variable 
    - Ajouter des pauses 



```powershell
Add-Type -AssemblyName System.Windows.Forms

$file = Get-Content -Raw test.json | ConvertFrom-Json
$lines = $file 

$lines | FT
foreach ($line in $lines)

{

write-host "$($line.email) has the email"
write-host $($line.NOM)
write-host $($line.PRENOM)
write-host "Starting in 8 seconds !! :)"

sleep 8
[System.Windows.Forms.SendKeys]::SendWait("^{BACKSPACE}")
sleep 5
[System.Windows.Forms.SendKeys]::SendWait($($line.email))
```
