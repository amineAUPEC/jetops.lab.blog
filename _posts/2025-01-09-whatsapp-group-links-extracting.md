
### Whatsapp Group Links Extracting
Extracting / Scraping Whatsapp link shared inside a group  via Web.whatsapp *and storing it into a json file*

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



