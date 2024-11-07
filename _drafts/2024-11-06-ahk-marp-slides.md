---
marp: true
theme: gaia
paginate: true
style: |
  h1 {
    color: #E38C30;
  }
title:  "Changer de langue en PowerShell  - novembre 2024"
Article_file_name:  "switch-layout-fr-en-avec-powershell-nov-2024.md"
tags: ["AHK", "marp", "keyboard layout", "disposition du clavier", "nov", "nov-2024"]
description:  "AHK marp slides"
date: 2024-11-06 21:33:29
draft: true 
lang: fr
layout: post
---


# Présentation de la solution AHK 
Automatisation - Macro - abréviation - raccourci clavier

*Créez facilement des scripts petits ou complexes pour toutes sortes de tâches telles que : remplissage de formulaires, clics automatiques, macros..*  
https://www.autohotkey.com/   
![Autohotkey dashboard](image-5.png)


---
# Sommaire
**I. Pourquoi l'utiliser ?**   
    **--> Qu'est-ce qu'un macro ?**  
**II. a. Use Case pour la console :**  
    - **Autohotkey : hotkey avec GUI**  
    - **Explications du code**  
    - **En quoi ça nous simplifie la vie :**  
**II. b. Bugs connus et autre subtilité**  
    - **Disposition du clavier**   
    - **Présentation des méthodes d'exécution**  
    - **Astuces exécuter au démarrage**  

---
# Sommaire 2/2
**III. AutoHotKey hotstring**  
**Tests Démo**  
**IV. Conclusion**  
**FIN**  


---
# I. Pourquoi l'utiliser ?
Nos usages : ***Macros, remplissage de formulaire, clic automatisé, gestion du presse-papiers, copie de commande, raccourci clavier, lancer les applis préférés, gaming(jeux de tir)***...

Notre cas d'usage à la ZOR5G : *Console copier-coller sur vos équipements à travers une macro*
# AHK 1.1X
[autohotkey.com/download/ahk-install.exe](https://www.autohotkey.com/download/ahk-install.exe)
<!-- Attention la version 2 change de syntaxe -->
---
## Qu'est-ce qu'un macro ? 
**Un macro est automatisation** : Une macro est une série de commandes et d'instructions que vous regroupez au sein d'une même commande 
afin d'exécuter automatiquement une tâche. Pour gagner du temps sur les tâches que vous effectuez souvent, regroupez les étapes dans une macro. *Source : Microsoft*  



---
# II. a. Use Case pour la console : 
- **VMware vcenter**
![console vmware](https://i0.wp.com/fr.wikitwist.com/files/2014/02/vmwaretools-debian.jpg)
- **HP ILO** 
- **Dell Idrac** -> *fr firefox*
---
# Autohotkey : hotkey avec GUI 
Un hotkey est un raccourci clavier permettant de   

![Interface de la solution pour taper sur la Console](image-3.png)

---
Contenu du fichier : *repeat-password-command.ahk* :

```yml
#j::
InputBox, password, Enter the password:
If password =
    password := "VMware123!"
	
SendInput, % "{Raw}" password
VarSetCapacity(password,0)
password := ""
return
```
---

## Explications du code
1. Afficher une boite de dialogue 
    1. Saisir dans le champ 
1. Simuler les séquences de touches du clavier
1. Pour la conformité liés aux problèmes de sécurité on efface le contenu de la variable et celle de l'adresse mémoire en RAM. 
---
### Explications du code SUITE 


`"{Raw}"` -> texte brut sans interprétation par AHK.
`If password = \n password := "VMware123!"` -> saisi un mdp par défaut => VMware123!

---

### En quoi ça nous simplifie la vie : 
- Afficher la commande avant 
- Coller le mdp dans la console en moins de 10secondes chrono vs 1m40 à la main...
- Coller en console sur le champ de dialogue 
- Supporte les retours à la ligne quand on colle
- Implicite : Effacer le formatage -> coller en tant que texte brut ex: Dans les mails, Excel ou Teams

---

# II. b. Bugs connus et autre subtilité 
La séquence de caractère : "[aas" essaiera de transformer en "[aas]"  

- --> Du coup effacer le dernier caractère ou adapter le script en conséquence 

---

## Keyboard layout | disposition du clavier 

##### Switch layout fr en avec PowerShell
![Disposition du clavier](image-6.png)
Avec ce code vous pouvez changer de disposition de clavier entre le français et l'anglais : 
En passant de l'azerty au qwerty et vice-versa
> [!WARNING]
> Il faut disposer de privilèges administrateur. Efficace et pas cher c'est lui qu'on préfère :).

---

- Voici un script : *switch-layout-fr-en-avec-powershell.ps1*
```powershell
$1 = Get-WinUserLanguageList
$1.RemoveAll( { $args[0].LanguageTag -clike '*' } )
$1.Add("fr-FR")
$1.Add("en-US")
$1[1].InputMethodTips.Clear()
$1[1].InputMethodTips.Add('0409:00020409')
Set-WinUserLanguageList -LanguageList $1 -Force
```

Source : [stackoverflow_add-international-english-keyboard](https://stackoverflow.com/questions/66267355/add-international-english-keyboard-in-windows-10-through-the-powershell)

---
# Présentation des méthodes d'exécution
Ai-je besoin de télécharger AHK ou juste le fichier exe compiler ?   

- Si vous souhaitez modifier le script .ahk -> Alors vous devez le télécharger 
- || Sinon le .exe contient une version portable ne nécessitant pas de droit administrateur 
---
## **Présentation des méthodes d'exécution 2/3**
![Execution](image-7.png)
**Run script with ui**
ou **Compile script**

---
## **Présentation des méthodes d'exécution 3/3**
Les scripts AHK apparaissent dans votre systray  notification 

"Le systray est la zone d'icônes de la barre des tâches de Windows à gauche de l'horloge, dans le coin bas droit de l'écran. "  

![Systray Running AHK](image.png)

---


# Astuces exécuter au démarrage
<kbd> WIN+R</kbd> -> shell:startup

![shell:startup](image-1.png)
![alt text](image-2.png)

---
# III. AutoHotKey hotstring : 
#### **Le meilleur pour la fin**

Les hotstring sont des sortes d'abréviation sur lequel on peut mettre par exemple son mail, uid, des messages du quotidien, IP ou des gros pavés de texte.  
    
    hcv -> Hello ca va ? 
    uid -> adz4848
    @@ -> mail@outlook.com
    ²network_zone_gw -> 10.10.25.254
    kugp-> kubectl get pod


---
Contenu du fichier : *mes-hotstring.ahk* :

```yml
:O:uid::adz4848
::@@:: mail@outlook.com

:O:pass::1234SuperSecure


:qdn::Quoi de neuf Docteur ?
:hcv::Hello Comment ca va ?
::²network_zone_gw::10.10.15.254
```

---
### Keyboard case | Casse du clavier
Attention à la casse si vous avez le verrouillage CAPS LOCK des effets indésirables peuvent se produire. -> voir la démo si : en CAPS LOCK actif => adz4848 sinon en minuscule/CAPS LOCK désactivé => adz4848  

---

# Tests Démo
ls -ltr && systemctl status sshd  
7168 excel

---
# IV. Conclusion
Autohotkey est un outil puissant permettant le remplissage de tâches quotidienne à travers les abréviations *Hotstring*, ou via des raccourcis claviers *Hotkey*.   
Cet outil permet de copier-coller en console pour les ingénieurs Infra.   
Cet outil comporte des subtilités et dépend de la configuration du clavier physique.  
Il permet de scripter des tâches complexes ou simples fréquentes.   
Sinon utiliser via keepass.  
On peut l'exécuter au démarrage.  

---
# FIN
FIN :)
![merci](https://i.notretemps.com/1000x300/smart/2019/05/29/merci.jpeg)

Avez-vous des questions ?
Merci
Cette présentation est en MD *Markdown* via Marp.   
J'en fais une dessus ...?

