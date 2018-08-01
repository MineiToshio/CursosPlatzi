# Curso de Animaciones para la Web<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [¿Qué son la animaciones?](#qué-son-la-animaciones)
- [Transiciones](#transiciones)
- [Transformaciones](#transformaciones)
  - [Rotación](#rotación)
  - [Rotaciòn 3d](#rotaciòn-3d)
  - [Traslación](#traslación)
  - [Traslación 3d](#traslación-3d)
  - [Escala](#escala)
  - [Sesgado](#sesgado)
  - [Punto de transformación](#punto-de-transformación)
- [Animaciones](#animaciones)
- [Eventos con javascript](#eventos-con-javascript)
- [Optimizar render](#optimizar-render)
- [Animaciones con javascript](#animaciones-con-javascript)
- [Animaciones con React](#animaciones-con-react)
- [Enlaces de Interés](#enlaces-de-interés)

## ¿Qué son la animaciones?

* La transición que ocurre entre un punto A y un punto B.
* Son parte natural de las interfaces web.
* Son una forma natural de enseñanza para el usuario.
* Ayudan a conectar una interfaz que solo está programada en algo que realmente está vivo.
* La acción de un usuario interactuando con la interfaz y que ésta le de feedback de lo que está ocurriendo.

**Recuerda**:
* Las animaciones en una interfaz web son necesarias ya que ninguna acción que ocurre en ésta se da de forma instantánea.
* Las interfaces dan feedback de lo que está ocurriendo.
* Las animaciones ayudan a mejorar el engagement del usuario.

**Existen 3 tipos de atributos CSS para el manejo de animaciones**:
* Transitions
* Transforms
* Animations

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Transiciones

Es una animación que se realiza de un punto A a un punto B.

* `transition-property` las propiedades que van a ser afectadas por la transición.
* `transition-duration` el tiempo que va a tomar hacer la transición.
* `transition-delay` cuánto se va a esperar antes de empezar a ejecutarse la transición.
* `transition-timing-function` el tipo de animación que se va a realizar.

`transition: porperty | duration | delay | timing-function;`  
Todo lo anterior puede hacerse en una sola línea.

**Valores para transition-timing-function**:
* `ease`: Especifica un efecto de transición con un arranque lento, luego rápido, luego finaliza lentamente (esto es predeterminado).
* `linear`: Especifica un efecto de transición con la misma velocidad de principio a fin.
* `ease-in`: Especifica un efecto de transición con un inicio lento.
* `ease-out`: Especifica un efecto de transición con un final lento.
* `ease-in-out`: Especifica un efecto de transición con un inicio y fin lentos.
* `cubic-bezier(n,n,n,n)`: Le permite definir sus propios valores en una función.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Transformaciones

`transform: rotate(5deg) skew(10deg) translate(100px) scale(1.5);`

* `rotate(grados)` Rotar elemento
* `skew(grados)` Sesgar elemento
* `translate(pixeles)` Cambiar posición
* `scale(1 = 100%, 2 = 200%, 0)` Cambiar tamaño

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Rotación

Si el número es positivo, entonces la rotación va a sentido horario, si es negativo va en sentido antihorario.  

* `transform: rotateX(45deg);` Rotación en el eje X 
* `transform: rotateY(45deg);` Rotación en el eje Y
* `transform: rotateZ(45deg);` Rotación en el eje Z
* `transform: rotate(-45deg);` Rotación a lado contrario de las manecillas del reloj
* `transform: rotateX(45deg) rotateY(45deg) rotateZ(45deg);` Animación de transformaciones

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Rotaciòn 3d

* `transform: rotate3d(x,y,z,rotate);` Rotación en 3D, se coloca 1 en los grados que se desea girar
* `transform: rotate3d(1,0,0,45deg);` Rotación en X
* `transform: rotate3d(0,1,0,45deg);` Rotación en Y
* `transform: rotate3d(0,0,1,45deg);` Rotación en Z

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Traslación

* `transform: translate(100px);` Mueve 100px en el eje X hacia la derecha
* `transform: translate(-100px);` Mueve 100px en el eje X hacia la izquierda
* `transform: translate(100px,100px);` Mueve 100px en el eje X hacia la derecha, y en Y hacia abaj
* `transform: translateX(100px);` Tambien podemos movernos en el eje X con la siguiente
* `transform: translateY(100px);` Tambien podemos movernos en el eje Y con la siguiente
* `transform: translateZ(100px);` Tambien podemos movernos en el eje Z con la siguiente, dar profundidad

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Traslación 3d

`transform: translate3d(x,y,z);`

**Ejemplo**: `transform: translate3d(100px,100px,100px);`

Para que funciones las traslaciones en el eje Z debemos de usar la propiedad perspective en el contenedor o body.

Con perspective-origin podemos definir el punto de origen de la perspectiva. También podemos hacer combinaciones:
* top right
* top left
* botoom left
* botoom right

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Escala

`transform: scale(x,y);`

**Ejemplos**:
`transform: scale(2, .5);`
`transform: scale(2);`

Esta propiedad solo recibe valores númericos, y dichos valores representan porcentajes.

**Por ejemplo**:
* 0 = 0%
* .5 = 50%
* 1 = 100%
* 1.5 = 150%
* 2 = 200%

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Sesgado

* `transform: skew(20deg);` Sesgar en el eje X:
* `transform: skew(20deg, 20deg);` Sesgar en el eje X e Y:

Sesgar en el eje X e Y de manera independiente:
* `transform: skewX(20deg);`
* `transform: skewY(20deg);`

Esta propiedad recibe valores en grados (deg) y radianes (rad).

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Punto de transformación

El punto de transformación de un elemento está clavado en alguna parte de la interfaz, y por defecto se encuentra en el centro. Sin embargo, podemos jugar con la posición de este punto según el tipo de animación que queramos crear.

`transform-origin: X Y;`

**Ejemplos**:
* `transform-origin: top; `
* `transform-origin: left top;`

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Animaciones

Para crear una animación CSS usaremos la propiedad animation y sus sub-propiedades, con las cuales podemos configurar el ritmo, la duración, etc.

Las subpropiedades de animation son:

**animation-delay**  
Tiempo de retardo entre el momento en que el elemento se carga y el comienzo de la secuencia de la animación.

**animation-direction**  
Indica si la animación debe retroceder hasta el fotograma de inicio al finalizar la secuencia o si debe comenzar desde el principio al llegar al final.
* **reverse**: empieza la animación por el final hasta el comiendo.
* **alternate**: alterna entre el sentido de la animación. primero de inicio a fin y luego de fin a inicio.

**animation-duration**  
Indica la cantidad de tiempo que la animación consume en completar su ciclo (duración).

**animation-iteration-count**  
El número de veces que se repite. Podemos indicar infinite para repetir la animación indefinidamente.

**animation-name**  
Especifica el nombre de la regla @keyframes que describe los fotogramas de la animación.

**animation-play-state**  
Permite pausar y reanudar la secuencia de la animación.

**animation-timing-function**  
Indica el ritmo de la animación, es decir, como se muestran los fotogramas de la animación, estableciendo curvas de aceleración.

* `ease`: por defecto
* `ease-in`: se suaviza al entrar o al inicio
* `ease-out`: se suaviza al salir o al finalizar
* `ease-in-out`: se suaviza al entrar y salir, básicamente se acelera solo la mitad de la animación
* `linear`: velocidad constante. Sin aceleración.
* `steps(# de frames)`: cantidad de frames que va a tomar en realizar la animación
* `cubic-bezier`: la aceleración en es base a una curba bezier. http://cubic-bezier.com

**animation-fill-mode**  
Especifica qué valores tendrán las propiedades después de finalizar la animación (los de antes de ejecutarla, los del último fotograma de la animación o ambos).
forwards: Se quedan aplicadas las propiedades de css que se usaron al final de la animación.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Eventos con javascript

Para cambiar las animaciones al cumplirse un evento se hace con javascript.

```js
$cuadrado.addEventListener('animationend', (event) => {
  if (event.animationName === 'rebote') {
    $cuadrado.style.animationName = 'cuadrado escalera';
      $cuadrado.style.animationDuration = '3s';
  }
});
```

* `animationend`: se ejecuta al inicio de una animación.
* `animationstart`: se ejecuta al final de una animación.
* `animationiteration`: se ejecuta en cada iteración de una animación.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Optimizar render

Se puede optimizar el render diciendole al navegador qué propiedad es la que va a ser animada. Esto se hace con la propiedad will change. 

```css
.cuadrado {
  transition: .3s;
  will-change: opacity, transform;
}
.cuadrado:hover {
  opacity: 0;
  transform: scale(1.1);
}
```

Las propiedades que se añaden al will-change se realizan con la aceleración del hardware optimizando el rendimiento.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Animaciones con javascript

`element.animate(keyframes = [], opciones = {});`

Opciones:
* `duration` cuanto se demora la animación en completarse en ms
* `delay` cuanto se demora en lazase la animación en ms
* `direction` el sentido de la animación.
* `easing` el ritmo de la animación
* `iterations` cuántas veces se va a aplicar la animación
* `fill` modo de relleno. son las propiedades que tendrá al finalizar la animación.
* `iterationStart` en qué porcentaje de la animación se quiere empezar. Valores 0 - 1
* `endDelay` tiempo en ms que el elemento espere luego que se acabe la animación. esto se usa cuando hay animaciones en cadena y se quiere esperar un tiempo entre ellas.

**Ejemplo**:

```js
document.getElementById("pelota").animate([
  //from
  {
    transform: 'translateX(0)'
  },
  //to
  {
    transform: 'translate(500px)'
  }
  ] , {
    duration: 1000,
    delay: 1000,
    direction: 'alternate',
    easing: 'linear',
    iterations: Infinity,
    fill: 'forwards',
    iterationStart: .5,
    endDelay: 5000
});
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Animaciones con React

`create-react-app [nombre]`: te permite crear una aplicación con react

`css-transition-group`: es una librería que te permite crear transiciones.

```bash
$ npm install css-transition-group@1.x
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Enlaces de Interés
* [Curso de Animaciones para la Web](https://platzi.com/clases/animaciones-web/)
* [Cubir Bezier](http://cubic-bezier.com)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>