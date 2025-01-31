--- 
title:  "Index - novembre 2024"
Article_file_name:  "index-nov-2024.md"
tags: ["shell", "best-commands", "nov", "nov-2024"]
description:  "Lots de commandes utiles pour bash sous Linux"
date: 2024-11-06 21:33:29
draft: false 
lang: fr
---
# Test post for each post url and title


<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

# Test for each tags 

{% for tag in site.tags %}
  <h3>{{ tag[0] }}</h3>
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}


# Test post preview
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>


# Test manually

[Shell Commandes utiles-2024](2024-11-06-shell-commandes-utiles-nov-2024.md)  

[Youtube Gold premium alternatives](2024-11-06-yt-gold-ads-premium-alternative-nov-2024.md)  


[Changer la disposition du clavier via PowerShell](2024-11-06-switch-layout-fr-en-avec-powershell-nov-2024.md)  



# Article d'exemple : 
<!-- # Infos 
Article_file_name :  shell-commandes-utiles-nov-2024.md
Article_title:  "Commandes utile en shell  - novembre 2024" -->

# Introduction 
Dans cet article nous allons appréhender un lot de commandes de bases utiles sur le mois de novembre 2024. 

# Commandes 
## history 
Commande lié à la commande `history` 
1. Dans un premier temps on lance la commande `history`, **on récupère le numéro de la ligne à retirer** 
2. Pour **supprimer une ligne** ici la ligne 10 `line_no="10" ; history -d ${line_no}`


## ls 
Commande lié à la commande `ls`

1. Afficher les sous-fichiers `ls -R` le paramètre -R *donne les infos de manière récursive* 


## rsync 

`rsync -av /data/apps apps` : archive et verbose

## find
- `find -name "*2024*.pdf"`

# Autres commandes utiles 
- `tldr`
- `curl cheat.sh/ls` 
- `netstat --help`
- `man netstat`

# Autres Sites utiles
## ExplainShell 
[Explain shell](https://explainshell.com/) vous explique les arguments de chaque commande

# Sur Powershell
- Afficher tous les sous-fichiers avec l'extension pdf `gci -recurse "*.pdf*"`

