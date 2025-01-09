---
title: "Astuce - Participer automatiquement les réunions Teams - Teams Automatic Leaver - 09 janvier - Janvier 2025 - Scripting"
date: 2025-01-09 13:00:00
Article_file_name:  "2025-01-07-teams-automatic-laver-attender.md"
tags: ["astuce", "teams", "meeting", "attends", "leave", "participation", "jan", "jan-2025"]
description:  "Participer comme un robot aux réunions Teams -- Attend Teams meeting and leave it automatically - Scripting  - January 9"
draft: false
lang: fr
layout: post
---


# articles
We are going to see how to automatically leave teams meetings.
- This can be useful for people who are in a hurry or who have to leave the meeting quickly.
- Disclaimer : 
    - This is for entertainment purposes only, and I am not responsible for any misuse of this script.
    - This script is for educational purposes only.
- The script is inspired by a Reddit post and a GitHub repository.
- The script is written in Python and uses pyautogui to automate the process of leaving the meeting.
- This could be used for online classes or attends a webinar, webconferences, company meetings for proof of concept.
- This script is not finished and it's inspired from this post.


## teams meeting automatic leaver (inspired)
1. solution N°1 : get connected to the teams web meeting them enable bookmarklet
1. a timer is triggered after 5 mins 
1. once the participants number is equal to 2 
1. the javascript bookmarklet will automatically leave by clicking the red quit button 


1. solution N°2 use pyautogui to found participants on teams desktop app 
    1. found the number with ocr each 30 seconds 
    1. once the participants/number of attendees is equal to 2 
    1. pyautogui will click on quit button
        1. adapt to our system language
    1. notes : the app need to be fully opened on a screen 


- *Source* : 
    - [i_wrote_a_python_script_to_automatically_join_and/](https://www.reddit.com/r/Python/comments/hxp5eq/i_wrote_a_python_script_to_automatically_join_and/)  
    - [MS Teams auto-joiner](https://github.com/atharva-lipare/MS-Teams-Auto-Joiner)      





### FR teams pour quitter les réunions automatiquement
Dans cet article, nous allons voir comment quitter automatiquement les réunions Teams. Du moins les étapes de création du script.

- Cela peut être utile pour les personnes pressées ou qui doivent quitter la réunion rapidement.
- Avertissement :
    - Ceci est uniquement à des fins de divertissement et je ne suis pas responsable de toute mauvaise utilisation de ce script.
    - Ce script est uniquement à des fins éducatives.
- Le script est inspiré d'un post Reddit et d'un dépôt GitHub.
- Le script est écrit en Python et utilise pyautogui pour automatiser le processus de sortie de la réunion.
- Cela pourrait être utilisé pour des cours en ligne ou pour assister à un webinaire, des webconférences, des réunions d'entreprise pour la preuve de concept.
- Ce script n'est pas terminé et il est inspiré de ce post.

1. connectez-vous à la réunion Web Teams puis activez le bookmarklet
1. un minuteur est déclenché après 5 minutes
1. une fois que le nombre de participants est égal à 2
1. le bookmarklet javascript quittera automatiquement en cliquant sur le bouton rouge Quitter
1. Adaptez le script à la langue que vous souhaitez

1. solution N°2 utilisez pyautogui pour trouver les participants sur l'application de bureau Teams
1. trouvez le nombre de participants avec ocr toutes les 30 secondes
1. une fois que le nombre de participants/de participants est égal à 2
1. pyautogui cliquera sur le bouton Quitter
    1. En s'adaptant à la langue de notre système
1. notes : l'application doit être entièrement ouverte sur un écran

- *Source* : 
    - [i_wrote_a_python_script_to_automatically_join_and/](https://www.reddit.com/r/Python/comments/hxp5eq/i_wrote_a_python_script_to_automatically_join_and/)  
    - [MS Teams auto-joiner](https://github.com/atharva-lipare/MS-Teams-Auto-Joiner)    
    