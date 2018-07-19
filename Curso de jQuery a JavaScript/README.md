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

Promise.race([
  promesa1,
  promesa2
])
.then(function() {})
.catch(function() {})
```

## Timers

* `setInterval()` se ejecuta cada cierto tiempo.
* `setTimeout()` se ejecuta una sola vez luego de un periodo de tiempo.

## Recursos complementarios
* [Diapositiva: La historia de jquery](docs/la-historia-de-jquery.pdf)

## Enlaces de Interés
* https://platzi.com/clases/jquery-js