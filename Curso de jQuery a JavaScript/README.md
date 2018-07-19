# Curso de jQuery a JavaScript

jQuery es una librería de Javascript que resuelve:
* Una misma forma de acceder al DOM `$('selector')`: En ese tiempo, todos los navegadores accedian an DOM de una forma diferente.
* Poder interactuar con datos de un servidor `$.ajax()`: jQuery permite hacer llamadas al servidor.
* Crear animaciones `$.animate()`: En ese tiempo crear animaciones era muy dificil. 

## Problema

* Se empezó a abusar de la librería y se empezó a usar sin ver si realmente era necesario su uso o no.
* Uno se hacía dependiente de jQuery y sus sub-librerías a tal punto que cuando se quería modificar algo de una librería no sabía como hacerlo. 
* No se diferenciaba qué era jQuery y qué JavaScript.
* Mientras unos se quedaban en jQuery, la revolución de JavaScript estaba sucendiendo.

La idea es no depender de una librería sino aprender la tecnología que está detrás de cada librería. 

## Ventajas de usar JavaScript

* Reutilizar conocimiento en otros lados de tu aplicación.
* Poder implementar soluciones sin depender de una librería.
* Estar más capacitado para grandes empresas.

## Procesos asíncronos

Un proceso asíncrono es un código que se está ejecutando, pero no ha terminado de ejecutarse antes de que se ejecute un código que está después de él.

Esto permite que la aplicación no se cuelque mientras está ejecutando un proceso muy largo.

## Variables

* `var` es la forma de crear variables hasta ES5.
* `const` es para declarar constantes.
* `let` es para crear variables que cambian.

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

## Timers

* `setInterval()` se ejecuta cada cierto tiempo.
* `setTimeout()` se ejecuta una sola vez luego de un periodo de tiempo.

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

## Recursos complementarios
* [Diapositiva: La historia de jquery](docs/la-historia-de-jquery.pdf)

## Enlaces de Interés
* https://platzi.com/clases/jquery-js