---
title: "Tip - Adding Colors in Markdown -- Seeing All the Colors - January 7, 2025 - Docascode"
date: 2025-01-07 23:00:00
tags: ["tip", "markdown", "color", "jekyll", "css", "javascript", "jan", "jan-2025"]
draft: false
lang: en
layout: post
---

# Adding Colors in Markdown

In this article, we will explore different methods to add colors to your text using Markdown. Although Markdown is primarily designed to be a simple and readable writing format, it is possible to incorporate HTML and CSS elements to enrich your documents with colorful styles. We will see how to use HTML tags, CSS styles, Jekyll plugins, and even JavaScript to achieve this goal.

## Methods to Add Colors

- [stackoverflow how-to-apply-color-on-text-in-markdown](https://stackoverflow.com/questions/35465557/how-to-apply-color-on-text-in-markdown)  

```html
<span style="color:blue">some *blue* text</span>.
```

### Explanations in English

> [!NOTE]
>
> Markdown’s syntax is intended for one purpose: to be used as a format for writing for the web.
>
> Markdown is not a replacement for HTML, or even close to it. Its syntax is very small, corresponding only to a very small subset of HTML tags. The idea is not to create a syntax that makes it easier to insert HTML tags. In my opinion, HTML tags are already easy to insert. The idea for Markdown is to make it easy to read, write, and edit prose. HTML is a publishing format; Markdown is a writing format. Thus, Markdown’s formatting syntax only addresses issues that can be conveyed in plain text.
>
> For any markup that is not covered by Markdown’s syntax, you simply use HTML itself.

- From :   
    - [stackoverflow how-to-apply-color-on-text-in-markdown](https://stackoverflow.com/questions/35465557/how-to-apply-color-on-text-in-markdown)  

### Method with Custom Tag

```html
<style>
r { color: Red }
o { color: Orange }
g { color: Green }
</style>

# TODOs:

- <r>TODO:</r> Important thing to do
- <o>TODO:</o> Less important thing to do
- <g>DONE:</g> Breath deeply and improve 
```

### With Jekyll

In Jekyll, it is possible to add colors or other styles to a bold element (this also works with all other elements).

```html
**My Bold Text, in red color.**{: style="color: red; opacity: 0.80;" }
```

### Kramdown

- [kramdown syntax](https://kramdown.gettalong.org/syntax.html#span-elements)

```html
This is *red*{: style="color: red"}.
```

### CSS in the Markdown File Header

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

### Via JavaScript: A Different Color for Each p Tag

```js
const paragraphs = document.querySelectorAll('p');

paragraphs.forEach(paragraph => {
  const randomColor = getRandomColor();
  paragraph.style.color = randomColor;
});

function getRandomColor() {
  // Generates a random hexadecimal color
  const letters = '0123456789ABCDEF';
  let color = '#';
  for (let i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}
```

### In the HTML File

```html
<script src="script.js"></script>
</body>
```

### Via a Bookmarklet

```js
javascript:(function(){var p=document.querySelectorAll('p');p.forEach(function(e){e.style.color='#'+Math.floor(Math.random()*16777215).toString(16);});})();
```

## Summary

In summary, there are several methods to add colors to your text in Markdown. You can use HTML tags, CSS styles, Jekyll plugins, or even JavaScript to customize the appearance of your content. Each method has its advantages and disadvantages, and the choice will depend on your specific needs and the environment in which you are working.
