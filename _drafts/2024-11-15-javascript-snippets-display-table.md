
# Snippets generic pour afficher les lignes d'une classe spécifique dans un tableau 
```javascript
const rows = document.querySelectorAll('table tr');

rows.forEach(row => {
    const finalCell = row.lastElementChild;

    if (finalCell && finalCell.querySelector('.span.green-class')) {
        row.style.display = ''; 
    } else if (finalCell && finalCell.querySelector('.span.red-class')) {
        row.style.display = 'none'; 
    }
});
```



# étapes clés 
1. On sélectionne toutes les lignes du tableau.
2. On sélectionne la dernière cellule de chaque ligne.
3. On vérifie si la cellule contient un élément avec la classe désirée.
4. IF:  On affiche la ligne.
5. ELSEIF: On masque la ligne.
