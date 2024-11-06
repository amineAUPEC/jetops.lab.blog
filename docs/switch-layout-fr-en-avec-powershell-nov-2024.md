--- 
title:  "Changer de langue en PowerShell  - novembre 2024"
Article_file_name:  "switch-layout-fr-en-avec-powershell-nov-2024.md"
tags: ["powershell", "shell", "keyboard layout", "disposition du clavier", "nov", "nov-2024"]
description:  "Changer la disposition du clavier via PowerShell"
date: 2024-11-06 21:33:29
draft: false 
lang: fr
---

# Switch layout fr en avec PowerShell
Avec ce code vous pouvez changer de disposition de clavier entre le français et l'anglais : 
En passant de l'azerty au qwerty et vice-versa
> [!WARNING]
> Il faut disposer de privilèges administrateur. 
```powershell
$1 = Get-WinUserLanguageList
$1.RemoveAll( { $args[0].LanguageTag -clike '*' } )
$1.Add("fr-FR")
$1.Add("en-US")
$1[1].InputMethodTips.Clear()
$1[1].InputMethodTips.Add('0409:00020409')
Set-WinUserLanguageList -LanguageList $1 -Force
```



Source : [SO add international english kbd](https://stackoverflow.com/questions/66267355/add-international-english-keyboard-in-windows-10-through-the-powershell)