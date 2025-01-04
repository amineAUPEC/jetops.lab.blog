--- 
title:  "Astuce - Pandoc - 06 janvier - Janvier 2025 - Astuce"
Article_file_name:  "2025-01-06-pandoc-generation-document-docascode.md"
tags: ["astuce", "outils", "conversion","pandoc","docascode", "jan", "jan-2025"]
description:  "Utilisation de Pandoc pour le docascode - Générer son mémoire depuis le MarkDown  - 06 Janvier"
date: 2025-01-06 18:23:29
draft: false 
lang: fr
layout: post
---



# Définition : 
- Pandoc est un outil qui permet de convertir soit en ligne de commandes ou à l'aide de la version GUI pour Windows ou même via une extension VScode. Il permet de convertir des fichiers markdown en fichiers Word, PDF, HTML ou même en Latex...  

[pandoc.org manual](https://pandoc.org/MANUAL.html#option--reference-doc)  


# Possibilités de Pandoc : 
- Il permet de générer : 
    - Générer une table des matières(table of content **TOC**)
    - Générer une bibliographie
    - Générer des numéros de sections
    - Générer la numérotation des pages 
    - Générer les notes de bas de page
    - Générer les en-têtes et pieds de page
    - Générer des listes de figures et de tableaux
- Gestion divers éléments :  
    - Mettre la description des figures
    - Gestion des hyperliens
    - Formater les blocs de code 
    - Gestion des styles de police, taille
    - Gestion des url / images sans certificat de sécurité `no-check-certificate`

# Contenu : 

- Voici quelques commandes Pandoc que j'utilise régulièrement.



Ici le fichier `rapport.md` est le fichier markdown que je souhaite convertir en fichier Word. Pour mon mémoire en ``rapport_memoire_m2.docx``.



Seule les  3 premières commandes sont nécessaires pour convertir un fichier markdown en fichier Word.

```bash
pandoc -o rapport_memoire_m2.docx -f markdown -t docx rapport.md
pandoc -o rapport_memoire_m2.docx -f markdown -t docx rapport.md --from=markdown+native_numbering
 pandoc -o rapport_memoire_m2.docx -f markdown -t docx rapport.md --table-of-contents --toc --no-check-certificate --from=markdown+backtick_code_blocks --number-sections

```


- Voici des paramètres que j'ai recherché et essayer d'utiliser : 
```bash
pandoc -o rapport_memoire_m2.docx -f markdown -t docx rapport.md --sandboxfalse

# md_document
# word_document

--table-of-contents --toc  --no-check-certificate


--number-sections

--citeproc


--listings
--number-sections


--reference-links


pandoc myReport.md --from markdown+pipe_tables --to latex -o myReport.pdf


--from=markdown+backtick_code_blocks

 pandoc -o rapport_memoire_m2.docx -f markdown -t docx rapport.md --table-of-contents --toc --no-check-certificate --from=markdown+backtick_code_blocks --number-sections
```


### Précisions à l'intérieur du fichier markdown : *rapport.md*


```bash
---
title: "RAPPORT DE M2"
author: Amine ABDOUL-AZID
date: August 15, 2022
lang: fr-FR
sandbox: false
table-of-contents: true
output: 
    variant: 
        empty_paragraphs
        native_numbering
        citations
        fancy_lists
        fenced_code_blocks
        backtick_code_blocks
        implicit_figures
---
```


