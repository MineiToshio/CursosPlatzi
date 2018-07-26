# Curso de jQuery a JavaScript<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
- [Problema](#problema)
- [Ventajas de usar JavaScript](#ventajas-de-usar-javascript)
- [Procesos asíncronos](#procesos-asíncronos)
- [Variables](#variables)
- [Funciones](#funciones)
- [Promesas](#promesas)
- [Timers](#timers)
- [Ajax](#ajax)
- [Funciones asíncronas](#funciones-asíncronas)
- [Selectores](#selectores)
- [Templates](#templates)
- [Usando Templates](#usando-templates)
- [Eventos](#eventos)
- [Clases y estilos CSS](#clases-y-estilos-css)
- [Creación de elementos](#creación-de-elementos)
- [Asignación de Atributos](#asignación-de-atributos)
- [Formularios](#formularios)
- [Desestructuración de objetos](#desestructuración-de-objetos)
- [Dataset](#dataset)
- [Transformar tipos de datos](#transformar-tipos-de-datos)
- [Encontrando elementos en lista (find)](#encontrando-elementos-en-lista-find)
- [Switch](#switch)
- [Manejo de errores](#manejo-de-errores)
- [Guardar datos en cache](#guardar-datos-en-cache)
- [Obtener datos del cache](#obtener-datos-del-cache)
- [Recursos Complementarios](#recursos-complementarios)
- [Enlaces de Interés](#enlaces-de-interés)

## Introducción

jQuery es una librería de Javascript que resuelve:
* Una misma forma de acceder al DOM `$('selector')`: En ese tiempo, todos los navegadores accedian an DOM de una forma diferente.
* Poder interactuar con datos de un servidor `$.ajax()`: jQuery permite hacer llamadas al servidor.
* Crear animaciones `$.animate()`: En ese tiempo crear animaciones era muy dificil. 

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Problema

* Se empezó a abusar de la librería y se empezó a usar sin ver si realmente era necesario su uso o no.
* Uno se hacía dependiente de jQuery y sus sub-librerías a tal punto que cuando se quería modificar algo de una librería no sabía como hacerlo. 
* No se diferenciaba qué era jQuery y qué JavaScript.
* Mientras unos se quedaban en jQuery, la revolución de JavaScript estaba sucendiendo.

La idea es no depender de una librería sino aprender la tecnología que está detrás de cada librería. 

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Ventajas de usar JavaScript

* Reutilizar conocimiento en otros lados de tu aplicación.
* Poder implementar soluciones sin depender de una librería.
* Estar más capacitado para grandes empresas.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Procesos asíncronos

Un proceso asíncrono es un código que se está ejecutando, pero no ha terminado de ejecutarse antes de que se ejecute un código que está después de él.

Esto permite que la aplicación no se cuelque mientras está ejecutando un proceso muy largo.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Variables

* `var` es la forma de crear variables hasta ES5.
* `const` es para declarar constantes.
* `let` es para crear variables que cambian.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Funciones

```js
function cambiarNombre(nuevoNombre) {
  cambia = nuevoNombre;
}

//Desde EC6, las funciones se pueden declarar como arrow functions.
cambiarNombre = (nuevoNombre) => {
  cambia = nuevoNombre;
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Promesas

Una promesa es un objeto que representa la terminación o el fracaso eventual de una operación asíncrona. 

```js
//Crear una promesa
const getUser = new Promise(function(todoBien, todoMal) {
  //llamar a un API
  todoBien("todo bien");
})

//Consumir una promesa
getUser
  .then(function(msn) { 
    //maneja cuando la promesa funciona correctamente.
  })
  .catch(function(msn) {
    //maneja cuando hay un error en la promesa.
  })

//Consumir varias promesas a la vez.
//El then se ejecutan cuando terminen todas las promesas.
//El catch se ejecuta en el primer error.
Promise.all([
  promesa1,
  promesa2
])
.then(function() {})
.catch(function() {})

//Se ejecuta el then de la promesa que termine primero.
Promise.race([
  promesa1,
  promesa2
])
.then(function() {})
.catch(function() {})
```

Una promesa puede retornar otra promesa.

Las promesas resuelven el problema del Callback Hell haciendo que una promesa pueda devolver otra promesa y en lugar de ser anidadas como los callback, estas promesas son encadenadas.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Timers

* `setInterval()` se ejecuta cada cierto tiempo.
* `setTimeout()` se ejecuta una sola vez luego de un periodo de tiempo.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Ajax

**jQuery**

```js
$.ajax("url", {
  method: "GET", //POST, PUT, DELETE
  success: function(data) {
    //se ejecuta cuando todo sale bien
    //data: lo que devuelve el api
  },
  error: function(error) {
    //se ejecuta cuando hay un error
    //error: mensaje de error del api
  }
})
```

**JavaScript**

```js
fetch("url")
  .then(function(response) {

  })
  .catch(function(response) {

  })
```

Fetch devuelve una promesa. Esta promesa, a su vez, tiene un método llamado `json()` que regresa otra promesa con los datos en formato JSON.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Funciones asíncronas

Una función asíncrona va a ser como una función normal, pero poniendo código asíncrono de forma que sea más fácil de leer de forma síncrona.

Para declarar una función asíncrona se usa `async` / `await`:
* async: declara quye una función es asíncrona.
* await: indica que se debe de terminar con el fragmento de código para continuar con la ejecución de la función.

```js
async function load() {
  const response = await fetch("url") 
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Selectores

Los selectores nos permites seleccionar un elemento del DOM con el fin de poder manipularlos. 

Por convención, las variables que son elementos del DOM comienzan con una `$`.

**jQuery**

```js
const $home = $(".home") //Elemento con la clase home
const $home = $("#home") //Elemento con el id home
```

**JavaScript**

```js
//Retorna un elemento con el id home
document.getElementById("home")

//Retorna una lista de elementos con la clase home
document.getElementsByClassname("home")

//Retorna una lista de elementos con el tag div
document.getElementsByTagName("div")

//Devuelve el primer elemento que coincida con el query de búsqueda.
document.querySelector("div .home #modal")

//Devuelve todos los elementos que coincidan con el query de búsqueda.
document.querySelectorAll("div .home #modal")
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Templates

**jQuery**

En jQuery se tiene que poner todo el html dentro de una cadena de texto.

```js
function videoItemTemplate(src, title) {
  return (
    '<div class="primaryPlaylistItem">' +
      '<div class="primaryPlaylistItem-image">' +
        '<img src="' + src + '">' +
      '</div>' +
      '<h4 class="primaryPlaylistItem-title">' +
        title +
      '</h4>' +
    '</div>'
  )
}
```

**JavaScript**

Se usa una característica de ES6 que se llama `template literals`.

```js
function videoItemTemplate(src, title) {
  return (
    `<div class="primaryPlaylistItem">
      <div class="primaryPlaylistItem-image">
        <img src="${src}">
      </div>
      <h4 class="primaryPlaylistItem-title">
        ${title}
      </h4>
    </div>`
  )
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Usando Templates

La plantilla no puede puede ser llamada de frente puesto que en el html se mostraría como texto. Primero se hace una transformación de la plantilla para recién agregarla al contenedor que se desee.

```js
function titleTemplate(title) {
  return (
    `<h1>${title}</h1>`
  )
}

//se trae la plantilla y se guarda en una variable.
const HTMLString = titleTemplate(movie);
//se crea un documento html vacío
const html = document.implementation.createHTMLDocument();
//se agrega la plantilla al innerHTML del documento html 
//esto hace que la plantilla en texto se convierta a elementos DOM
html.body.innerHTML = HTMLString;
//se agrega el primer hijo (que es donde se encuentra la plantilla) al contenedor donde se quiere agregar la plantilla
$actionContainer.append(html.body.children[0]);
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Eventos

Son una forma de notificar a la aplicación cuando algo interesante ha sucedido.

**jQuery**

```js
$("div").on("click", function(event) {

})
```

**JavaScript**

```js
const $element = document.getElementById("element");
$element.addEventListener("click", function(event) {

})
```

**Nota**: cuando se activa el evento submit, el browser de refresca por defecto. Para evitar esto se usa `event.preventDefault()`.

Para ver la lista de eventos:
http://developer.mozilla.org/en-US/docs/Web/Events

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Clases y estilos CSS

**Clases**

```js
//agrega una clase
$element.classList.add("clase");

//remueve una clase
$element.classList.remove("clase");

//intercambia entre agregar y remover una clase
$element.classList.toggle("clase");
```

**Estilos Inline**

```js
$modal.style.animation = "modalOut .8s forwards";
```

## Creación de elementos 

```js
const $loader = document.createElement("img");
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Asignación de Atributos

**jQuery**

```js
$("#element").attr({
  src: "",
  height: ""
})
```

**JavaScript**

```js
const $element = document.getElementById("element");

//setear el atributo en un elemento DOM
$element.setAttribute("src", "img/foto.png");

//obtener un atruto de un elemento DOM
const src = $element.setAttribute("src")
```

También se puede crear una función para asignar múltiples atributos a un elemento DOM.

```js
function setAttributes($element, attributes) {
  for(const attribute in attributes) {
    $element.setAttribute(attribute, attributes[attribute]);
  }
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Formularios

`FormData()` es una interfaz que te permite obtener los valores de un formulario.

```js
//FormData va a abstraerr todos los valores de los elementos del formulario que cuenten con un atributo 'name' asignado y los va a setear en un objeto de tipo FormData.
const data = new FormData($form);

//retorna el valor del elemento con el atributo name="nombre"
data.get("nombre");

//setea el valor avengers en la key pelicula 
data.set("pelicula", "avengers");
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Desestructuración de objetos

`Destructuring assignment` permite entrar a un objeto o lista y poder sacar un dato para asignarlo a otra variable.

```js
//el fetch devuelve una promesa con la siguiente estructura: promesa.data.movies
//con el destructuring assignmen estamos creando una variable que se llama pelis y solo contiene la información de movies.
const { 
  data: {
    movies: pelis
  }
} = await fetch(`api_url`); 

//Lo anterior sería igual a esto:
const response = await fetch(`api_url`);
const pelis = response.data.movies;
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Dataset

`Dataset` permite acceder a un objeto con todos los atributos `data` de un elemento DOM.

```html
<div id="element" data-id="10" data-category="action">
</div>
```
```js
const $element = document.getElementById("element");

//guarda el valor de data-id
const id = $element.dataset.id;
//guarda el valor de data-category
const category = $element.dataset.category;
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Transformar tipos de datos

Cambiar un string a entero

```js
//parseInt("número", base)
let n = parseInt("500", 10);

//también se puede usar el double not bitwise operator.
let n2 = ~~"500";
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Encontrando elementos en lista (find)

find() devuelve el primer elemento de un array que cumpla con el criterio de búsqueda. Si no se encuentra ningún elemento devuelve undefined.

```js
function find(list, id) {
  return list.find(movie => movie.id === id)
}
```

Información referencial:
https://developer.mozilla.org/es/docs/Web/JavaScript/Referencia/Objetos_globales/Array/find

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Switch

```js
switch (category) {
  case "action": {
    //código de action
  }
  case "drama": {
    //código de drama
  }
  default: {
    //código por defecto
  }
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Manejo de errores

El manejo de errores se hace con un bloque `try/catch`. Se intenta ejecutar un bloque de instrucciones (try) y se especifica una respuesta en caso suceda un error (catch).

```js
try {
  //codigo a evaluar
}
catch(error) {
  //código por si sucede un error
  alert(error.message);
}
```

* Se puede crear un error customizado con Error().
* Se puede lanzar un error con throw.

```js
throw new Error('No se encontró ningún resultado');
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Guardar datos en cache

* `localStorage` permite almacenar datos sin tiempo de expiración
* `sessionStorage` permite almacenar datos. Estos datos se van a borrar cuando se termine la sessión del navegador

En `localStorage` solo se puede guardar texto plano. No se pueden guardar objetos.

```js
//eliminar los datos
window.localStorage.clear();

//setear un valor
window.localStorage.setItem("nombre", "Toshi");

//setear un objeto
//primero se tiene que convertir el objeto en un string
window.localStorage.setItem("objeto", JSON.stringify({"peli": "wonder woman"});

//obtener el valor de un key
window.localStorage.getItem("nombre");

//obtener el valor de un texto objeto y convertirlo a objeto
JSON.parse(window.localStorage.getItem("objeto"));
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Obtener datos del cache

Revisar si los datos se encuentran en cache.

```js
async function cacheExist(key) {
  const cacheList = window.localStorage.getItem(key);

  if (cacheList)
    return JSON.parse(cacheList);
  
  const data = await fetch("url");
  window.localStorage.setItem(key, JSON.stringify(data));
  return data;
}
```

Si se desea volver a traer los datos se puede hacer lo siguiente:
* Poner un botón que traiga los datos
* Hacer un setTimeout que borre el localStorage.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Recursos Complementarios
* [Diapositivas del Curso](docs/la-historia-de-jquery.pdf)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Enlaces de Interés
* [Curso de jQuery a JavaScript](https://platzi.com/clases/jquery-js)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>