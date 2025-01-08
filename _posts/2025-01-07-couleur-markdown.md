---
title: "Astuce - Mettre des Couleurs en Markdown -- en voir de toutes les couleurs - 07 janvier - Janvier 2025 - Docascode"
date: 2025-01-07 23:00:00
tags: ["astuce", "markdown", "couleur", "jekyll", "css", "javascript", "jan", "jan-2025"]
draft: false
lang: fr
layout: post
---

# Mettre des couleurs en Markdown

Dans cet article, nous allons explorer différentes méthodes pour ajouter des couleurs à votre texte en utilisant Markdown. Bien que Markdown soit principalement conçu pour être un format de rédaction simple et lisible, il est possible d'incorporer des éléments HTML et CSS pour enrichir vos documents avec des styles colorés. Nous verrons comment utiliser des balises HTML, des styles CSS, des plugins Jekyll, et même du JavaScript pour atteindre cet objectif.

## Méthodes pour ajouter des couleurs

- [stackoverflow how-to-apply-color-on-text-in-markdown](https://stackoverflow.com/questions/35465557/how-to-apply-color-on-text-in-markdown)  



```html
<span style="color:blue">some *blue* text</span>.
```

### Explications en anglais

> [!NOTE]
>
> Markdown’s syntax is intended for one purpose: to be used as a format for writing for the web.
>
> Markdown is not a replacement for HTML, or even close to it. Its syntax is very small, corresponding only to a very small subset of HTML tags. The idea is not to create a syntax that makes it easier to insert HTML tags. In my opinion, HTML tags are already easy to insert. The idea for Markdown is to make it easy to read, write, and edit prose. HTML is a publishing format; Markdown is a writing format. Thus, Markdown’s formatting syntax only addresses issues that can be conveyed in plain text.
>
> For any markup that is not covered by Markdown’s syntax, you simply use HTML itself.

### En français

> [!NOTE]
>
> La syntaxe de Markdown a un seul but : être utilisée comme format pour écrire pour le web.
>
> Markdown n'est pas un remplacement pour HTML, ni même proche de l'être. Sa syntaxe est très petite, correspondant seulement à un très petit sous-ensemble des balises HTML. L'idée n'est pas de créer une syntaxe qui facilite l'insertion de balises HTML. À mon avis, les balises HTML sont déjà faciles à insérer. L'idée de Markdown est de rendre facile la lecture, l'écriture et l'édition de prose. HTML est un format de publication ; Markdown est un format d'écriture. Ainsi, la syntaxe de formatage de Markdown ne traite que des problèmes qui peuvent être transmis en texte brut.
>
> Pour tout balisage qui n'est pas couvert par la syntaxe de Markdown, vous utilisez simplement HTML lui-même.

### Méthode avec tag customisé

```html
<style>
r { color: Red }
o { color: Orange }
g { color: Green }
</style>

# TODOs:

- <r>TODO:</r> Important thing to do
- <o>TODO:</o> Less important thing to do
- <g>DONE:</g> Breath deeply and improve karma
```

### Avec Jekyll

Dans Jekyll, il est possible d'ajouter des couleurs ou d'autres styles à un élément en gras (cela fonctionne également avec tous les autres éléments).

```html
**My Bold Text, in red color.**{: style="color: red; opacity: 0.80;" }
```

### Kramdown

- [kramdown syntax](https://kramdown.gettalong.org/syntax.html#span-elements)

```html
This is *red*{: style="color: red"}.
```

### CSS dans l'en-tête du fichier Markdown

```html
<style>
mark {
    color: red;
}
p {
    color: blue;
}
</style>

<mark>Marked text</mark>
<p>Paragraph text</p>
```

### Via JavaScript : Une couleur différente pour chaque balise p

```js
const paragraphs = document.querySelectorAll('p');

paragraphs.forEach(paragraph => {
  const randomColor = getRandomColor();
  paragraph.style.color = randomColor;
});

function getRandomColor() {
  // Génère une couleur hexadécimale aléatoire
  const letters = '0123456789ABCDEF';
  let color = '#';
  for (let i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}
```

### Dans le fichier HTML

```html
<script src="script.js"></script>
</body>
```

### Via un bookmarklet

```js
javascript:(function(){var p=document.querySelectorAll('p');p.forEach(function(e){e.style.color='#'+Math.floor(Math.random()*16777215).toString(16);});})();
```

## Résumé

En résumé, il existe plusieurs méthodes pour ajouter des couleurs à votre texte en Markdown. Vous pouvez utiliser des balises HTML, des styles CSS, des plugins Jekyll, ou même du JavaScript pour personnaliser l'apparence de votre contenu. Chaque méthode a ses avantages et ses inconvénients, et le choix dépendra de vos besoins spécifiques et de l'environnement dans lequel vous travaillez.

