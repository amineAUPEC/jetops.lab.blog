--- 
title:  "Installation d'une ancienne imprimante Canon  - novembre 2024"
Article_file_name:  "2024-11-06-installer-une-ancienne-imprimante-canon-lbp-810-nov-2024.md"
tags: ["Canon", "Ancienne imprimante", "imprimante laser", "virtualisation", "nov", "nov-2024"]
description:  "Installation d'une ancienne imprimante Canon"
date: 2024-11-06 21:33:29
draft: false 
lang: fr
layout: post
---



# Installer une ancienne imprimante qui n'est compatible qu'avec Windows XP ou Windows 7 (32 bits)
# Sommaire
- Installation de VMware Workstation (~~Player) ou de VirtualBox
- Activation Licence VMware
- Création VM Windows7
- Démarrer, Se connecter à la VM, utiliser la VM 
- Configurer le partage réseau
- Installation des drivers
- Monter le périphérique USB et utiliser l'imprimante 
- Imprimer avec l'imprimante via PDFCreator, Firefox, ou même la visionneuse photos 
- Raison d'utiliser une imprimante ancienne
- Solution dualboot ou Pc physique avec Win7 ou XP

# Installation de VMware Workstation (~~Player) ou de VirtualBox
- Assurer vous d'avoir au moins : 
    - 100go d'espace disque sur le C 
    - 4-8Gb de libres
    - De recharger le PC

- Installation de VMware pour des raisons de stabilités la version 15.5.7 sera utilisé : 
- https://customerconnect.vmware.com/fr/downloads/details?downloadGroup=PLAYER-1557&productId=800&rPId=55789
- Télécharger et installer VMware Workstation 15.5.0 Player for Windows 64-bit Operating Systems


- VirtualBox n'est malheureusement pas tout le temps stable pour ce genre d'usage 
    - Toutefois cela peut aussi marcher sur VirtualBox, je préfère personnellement + souvent VirtualBox

# Démarrer, Se connecter à la VM, utiliser la VM 
- Notes : utiliser la touche control qui est à droite+ la souris pour sortir de la VM / naviguer entre la VM et le PC hôte
- Appuyer sur le bouton vert play pour démarrer la VM
-  
# Installation des drivers 

- Exemple : Canon LBP 1120
- Toner : EP22


- On suppose que vous avez une VM Win XP 32bits
- https://www.canon.fr/support/consumer/products/printers/laser/lbp-series/laser-shot-lbp1120.html?type=drivers&detailId=tcm:79-749399&os=Windows%20XP%20(32-bit)&productTcmUri=tcm:79-518400
 
- Version du fichier: 1.00.0.007
- Taille du fichier: 1 MB
- Nom du fichier: l2c04frx.exe
# Monter le périphérique USB et utiliser l'imprimante 
- Vous devez avoir démarrer la machine virtuelle
- Sur le PC hôte (source/physique) vous verrez un message pour  

![informatiweb-pro 3-connect-usb-3-0-key-to-virtual-machine.jpg](https://www.informatiweb-pro.net/images/tutoriels/virtualisation/vmware/workstation/solve-access-problems/host-usb-3-vm-usb-2/3-connect-usb-3-0-key-to-virtual-machine.jpg)

- Il faut sélectionner le nom de la machine virtuelle Windows et surtout pas connect to the host, si vous l'avez fait 
# spécifiques 
## Activation Licence VMware : 
ZV30K-66Z8K-M84VY-0DMZG-NG88D

https://gist.github.com/gopalindians/94c2c8617028cfe7a5788f760e036fd2
vmware activation github 15

## Installation des drivers 
- Canon LBP-810
- https://www.canon-europe.com/support/consumer/products/printers/laser/lbp-series/lbp-810.html?type=drivers&language=FR&os=Windows%207%20(32-bit)
- Sélectionnez : 
    - OS WIN 7 32BIT
    - Preferred language : Francais

- File version: R1.10 V1.1
- File size: 1 MB
- File name: LBP-810_R110_V110_Win_x32_FR_7.exe

## Raison d'utiliser une imprimante ancienne
- Raison d'utiliser une imprimante ancienne
    - Les imprimantes anciennes sont moins cher ou offertes
    - Avantages
        - Dure très longtemps bcp d'année
        - Impression laser avec plus de 200 - 400 pages avec un toner 
        - les toners coûtent moins cher 
        - tombe rarement en panne
        - Impression noir et blanc voire même parfois de couleur de très bonne qualité
    - Incovénients 
        - Sont lourdes 
        - Sont unpeu plus lente
        - recto-verso à faire manuellement
- Examples avec le Toner EP22 
    - HP EP22 NOIR, CARTOUCHE TONER COMPATIBLE HP EP22 (EP22) DE 2500 PAGES....
    - Toner compatible HP EP22 Noir (EP22) pour imprimantes laser HP. Couleur : Encre (poudre) Noir, Capacité : 2500 Pages, Garantie 1 an. Livraison Rapide chez vous ou sous 24h / 48h*.
    - https://www.uniscartouches.com/4478-canon-lbp-810
    - Prix : 16.5E
