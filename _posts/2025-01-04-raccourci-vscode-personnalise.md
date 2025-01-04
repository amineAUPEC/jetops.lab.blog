--- 
title:  "Astuce - Mes raccourci VScode - 04 janvier - Janvier 2025 - Astuce"
Article_file_name:  "2025-01-04-raccourci-vscode-personnalise.md"
tags: ["astuce", "vscode", "raccourci","raccourci-clavier","configuration", "jan", "jan-2025"]
description:  "Ma configuration de raccourci personnalisé pour VSCODE - 04 Janvier"
date: 2025-01-04 18:23:29
draft: false 
lang: fr
layout: post
---

# Raccourci personnalisé pour Visual Studio Code
Voici mes commandes personnalisées pour Visual Studio Code : Ou qui ont été rechargés par des extensions. 

----------

### Commandes pour les documents Markdown
- Markdown docs : 
    - <kbd>CTRL + D</kbd> : Dupliquer la ligne
    - <kbd>ALT + Q</kbd> : Pour afficher le preview du markdown sur le côté 
    - <kbd>ALT + D</kbd> :   La commande "markdownQuickPick"
    - <kbd>CTRL + *</kbd> : Pour mettre en italique ou le retirer
    - <kbd>CTRL + 1</kbd> : Pour mettre en gras ou le retirer
    - <kbd>CTRL + 2</kbd> : Pour mettre en titlecase *juste le premier caractère en majuscule* 
    - <kbd>CTRL + 3</kbd> : Pour mettre en titlecase *juste le premier caractère en majuscule* 
    - <kbd>CTRL + 5</kbd> : Pour mettre du code `code` ou un bloc de code ```code``` 
    - <kbd>CTRL + 6</kbd> : Pour mettre applycomplex : insérer une image locale  
    - <kbd>CTRL + 9</kbd> : Ajouter en bullet point ou le retirer

----------
 
### Commandes générales
- En général : 
    - <kbd>CTR + .</kbd> : `git add/commit` Pour ajouter les modifications sur Git/Github/SCM
    - <kbd>CTRL + 4</kbd> : `git push` Pour synchroniser les modifications sur Git/Github/SCM
    - <kbd>Ctrl + Volumemute</kbd> : Pour masquer la barre d'activités 

> [!TIP] 💡 Tip
> Note : Pour les commandes `git`  bien sûr que cela peut-être avec Gitlab/Bitbucket ou autres SCM.     *SCM : Source Control Management*

----------

### Commandes SQL 
- Pour le SQL : (je crois par défaut)
    - <kbd>CTRL + M + N</kbd> : Pour exécuter la requête SQL
    - <kbd>CTRL + ALT + E</kbd> : Pour fermer la requête SQL

----------

# Fichier keybindings.json

- Voici le contenu du fichier `keybindings.json` :
```json
// Placer vos combinaisons de touches dans ce fichier pour remplacer les valeurs par défautauto[]
[
    {
        "key": "ctrl+m ctrl+n",
        "command": "mysql.runQuery",
        "when": "editorLangId == 'sql'"
    },
    {
        "key": "ctrl+alt+e",
        "command": "-mysql.runQuery",
        "when": "editorLangId == 'sql'"
    },
    {
        "key": "ctrl+d ctrl+e",
        "command": "workbench.action.addRootFolder"
    },
    {
        "key": "ctrl+audiovolumemute",
        "command": "workbench.action.toggleActivityBarVisibility"
    },
    {
        "key": "ctrl+d",
        "command": "editor.action.duplicateSelection"
    },
    {
        "key": "ctrl+numpad4",
        "command": "git.push"
    },
    {
        "key": "alt+q",
        "command": "markdown.showPreviewToSide",
        "when": "!notebookEditorFocused && editorLangId == 'markdown'"
    },
    {
        "key": "ctrl+k v",
        "command": "-markdown.showPreviewToSide",
        "when": "!notebookEditorFocused && editorLangId == 'markdown'"
    },
    {
        "key": "alt+d",
        "command": "markdownQuickPick",
        "when": "editorTextFocus"
    },
    {
        "key": "alt+m",
        "command": "-markdownQuickPick",
        "when": "editorTextFocus"
    },
    {
        "key": "ctrl+numpad_multiply",
        "command": "formatItalic",
        "when": "editorTextFocus && !vim.active && editorLangId == 'markdown'"
    },
    {
        "key": "alt+d i",
        "command": "-formatItalic",
        "when": "editorTextFocus && !vim.active && editorLangId == 'markdown'"
    },
    {
        "key": "ctrl+numpad1",
        "command": "formatBold",
        "when": "editorTextFocus && !vim.active && editorLangId == 'markdown'"
    },
    {
        "key": "alt+d b",
        "command": "-formatBold",
        "when": "editorTextFocus && !vim.active && editorLangId == 'markdown'"
    },
    {
        "key": "ctrl+numpad2",
        "command": "editor.action.transformToTitlecase"
    },
    {
        "key": "ctrl+numpad3",
        "command": "editor.action.transformToUppercase"
    },
    {
        "key": "ctrl+numpad5",
        "command": "formatCode"
    },
    {
        "key": "ctrl+numpad6",
        "command": "applyComplex"
    },
    {
        "key": "ctrl+numpad9",
        "command": "insertBulletedList"
    },
    {
        "key": "ctrl+numpad_decimal",
        "command": "git.commit"
    },
    {
        "key": "ctrl+z",
        "command": "undo"
    },
    {
        "key": "ctrl+z",
        "command": "-undo"
    },
    {
        "key": "ctrl+shift+z",
        "command": "redo"
    },
    {
        "key": "ctrl+shift+z",
        "command": "-redo"
    },
    {
        "key": "alt+oem_5",
        "command": "editor.action.inlineSuggest.trigger"
    },
    {
        "key": "tab",
        "command": "-editor.action.inlineSuggest.commit",
        "when": "inlineSuggestionHasIndentationLessThanTabSize && inlineSuggestionVisible && !editorTabMovesFocus"
    },
    {
        "key": "tab",
        "command": "editor.action.inlineSuggest.commit",
        "when": "inlineSuggestionHasIndentationLessThanTabSize && inlineSuggestionVisible && !editorTabMovesFocus"
    },
    {
        "key": "ctrl+oem_7",
        "command": "markdown.preview.refresh"
    }
]
```
