---
title: "Bookmarklet - WhatsApp extraction de données liens - 09 janvier 2025"
date: 2025-01-09 16:00:00
Article_file_name: "2025-01-09-whatsapp-group-links-extracting.md"
tags: ["bookmarklet", "WhatsApp", "raccourcis-clavier", "productivité","daily",  "jan", "jan-2025"]
description: "Extraction des liens sur WhatsApp -Scraping WhatsApp link - January 8"
draft: false
lang: fr
layout: post
---


### WhatsApp Group Links Extracting
- Extracting / Scraping WhatsApp link shared inside a group  via Web.WhatsApp *and storing it into a json file*
    - It extracts all messages that contains link.

```javascript 
const elements = document.querySelectorAll("a");
const result = [];

elements.forEach(element => {
  const item = {
    href: element.href,
    text: element.text
  };
  result.push(item);
});

const jsonResult = JSON.stringify(result);
console.log(jsonResult);
copy(jsonResult);
```

### Explications en Français
- Extraction / Scraping des liens WhatsApp partagés dans un groupe via Web.WhatsApp *et les stocker dans un fichier json*
  - Il extrait tous les messages contenant des liens.  
-  Code plus haut.  