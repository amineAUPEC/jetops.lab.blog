---
title: "Astuce - Script de rangement en Powershell -- Organiser-vos-fichiers - 09 janvier - Janvier 2025 - Powershell"
date: 2025-01-09 11:00:00
Article_file_name:  "2025-01-09-script-rangement-organiser-vos-fichiers--sorting-script.md"
tags: ["astuce", "powershell", "scripting", "rangement", "bureau", "file-sorting", "jan", "jan-2025"]
description:  "Script de rangement pour trier vos fichiers en un clin d'oeil -- sorting script - January 9"
draft: false
lang: fr
layout: post
---

# Script de rangement en Powershell : *Ranger votre bureau*
- Script de rangement pour trier vos fichiers en un clin d'oeil.  

- Pour voir le script en entier   
[leblogduwis powershell-ranger-votre-bureau](https://www.leblogduwis.com/powershell-ranger-votre-bureau/)  

- Voici un extrait du script PowerShell pour ranger votre bureau : créé par le blogduwis.com (Wisy) et  source u/zazierx sur Reddit. 
```powershell
$pathToUse = "C:\Users\$env:username\Desktop"
$video = @(
'3g2','3gp','3gpp','asf','avi','divx','f4v',
'flv','h264','ifo','m2ts','m4v','mkv','mod','mov',
'mp4','mpeg','mpg','mswmm','mts','mxf','ogv','rm',
'srt','swf','ts','vep','vob','webm','wlmp','wmv'
)
......
$files = Get-ChildItem -Path $pathToUse
Foreach ($x in $files){
if($docs.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Documents" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Documents"
........
}
}

### Powershell  : *Définitions et comment le lancer* 
#### Définition
- PowerShell est un langage de script orienté objet et un interpréteur de commandes développé par Microsoft. Il est inclus dans Windows depuis Windows 7 et Windows Server 2008 R2. Il est basé sur le framework .NET et est conçu pour l'automatisation des tâches administratives et la configuration des systèmes. *Source* : [Wikipedia](https://fr.wikipedia.org/wiki/Windows_PowerShell)  


#### Comment le lancer 
- On lance powershell dans l'explorateur de fichier ou en ligne de commande, on se déplace de répertoire et on copie le script dedans puis on l'exécute.

![PowerShell Logo](https://upload.wikimedia.org/wikipedia/commons/2/2f/PowerShell_5.0_icon.png){: width="50px" }

> [!TIP]
> Il est possible d'épingler dans l'explorateur de fichier le raccourci PowerShell pour le lancer plus rapidement.



# English version
This is a PowerShell script to sort your desktop files. It was created by the blogduwis.com (Wisy) and the source is u/zazierx on Reddit.


- To see the full script : 
[leblogduwis powershell-ranger-votre-bureau](https://www.leblogduwis.com/powershell-ranger-votre-bureau/)  


### Powershell: *Definitions and how to launch it*
#### Definition
- PowerShell is an object-oriented scripting language and a command interpreter developed by Microsoft. It has been included in Windows since Windows 7 and Windows Server 2008 R2. It is based on the .NET framework and is designed for automating administrative tasks and configuring systems. *Source*: [Wikipedia](https://en.wikipedia.org/wiki/Windows_PowerShell)

#### How to launch it
- We launch powershell in the file explorer or in command line, we move to the directory and we copy the script in it then we execute it.


> [!TIP]
> It is possible to pin the PowerShell shortcut in the file explorer to launch it more quickly.