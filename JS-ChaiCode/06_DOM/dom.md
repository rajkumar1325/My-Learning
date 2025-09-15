# DOM (Document Object Model)
- how the object is made
- what is its struture
- how it visually represents or sees..

Note: write `console.dir(document)` on the web console to see the hidden informations

-html collection, node collection and Array collection are different things. (dafault not array, but can be converted)

#### internally 'class' is treated as 'className'. so JS always say it as className.
- to see:: use `document.getElementById('id-name').class` inside the console of a webpage


#### selecting the details inside the website.
- title.innerHTML :: shows all the content along with `html` tags.
- title.innerText :: displays only the content that are visible.
- title.innerContent :: displays all inner text, including the hidden terms also.

- document.QuerySelector('h1') : gives the first `h1` from inside the page.
- document.QuerySelector('#id_name') : gives the first `ids` from inside the page.
- document.QuerySelector('.class_name') : gives the first `class` from inside the page.
- document.QuerySelector('.input') : gives the first `input` from inside the page.
- document.QuerySelector('.input[type="password"]') : gives the first `input` that have type password from inside the page.


- NOTE: To convert `HTML collection` to `Array` use : `Array.from(variable_name)`


# day2
`console.log("Nodes : ", parent.childNodes)` : it counts special characters also like blankSpaces and comments