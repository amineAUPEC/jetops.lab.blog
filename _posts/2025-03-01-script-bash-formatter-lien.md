--- 
title:  "Astuce - bash scripting formatter les liens - 03 janvier - Janvier 2024 - Scripting"
Article_file_name:  "2025-03-01-script-bash-formatter-lien.md"
tags: ["astuce", "tools", "systeme","windows","windowsR", "jan", "jan-2025"]
description:  "Bash scripting formatter les liens pour les posts Jekyll sans https - http - 03 Janvier"
date: 2025-01-03 18:23:29
draft: false 
lang: fr
layout: post
---


Afin de formater les liens avec Jekyll, si le lien n'est pas spécifié par un http ou https alors la balise `{{ site.url }}` est ajoutée automatiquement. ex: {{ site.url }}



Alors j'ai développé un script bash pour automatiser cette tâche. Il gère les variables par défaut ainsi que le déplacement de dossier dans le dossier _posts
Enfin un mode debug est également présent.


found-link-without-http.sh
```bash
DEFAULT_DIRECTORY="../_posts"

# Use the first parameter as the directory, or the default if not provided
DIRECTORY="${1:-$DEFAULT_DIRECTORY}"
cd ${DIRECTORY}

DEFAULT_FILENAME="*.md"

FILENAME="${1:-$DEFAULT_FILENAME}"

cat -n ${FILENAME} | grep "\[" | grep -v "https" | grep -v "http" 




DEBUG=false

# Function to print debug messages
debug() {
    if [ "$DEBUG" = true ]; then
        cat -n ${FILENAME} | grep "\[" | grep -v "https" | grep -v "http" | grep -v "tag" | grep -v "md"

        echo "DEBUG: "
    fi
}
```

