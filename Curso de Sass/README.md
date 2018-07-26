# Curso de Sass<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Diferencias entre Sass, Stylus y Less](#diferencias-entre-sass-stylus-y-less)
- [Estructura de CSS](#estructura-de-css)
- [Variables](#variables)
  - [Escapar una variable](#escapar-una-variable)
- [Anidaciones](#anidaciones)
- [Mixins](#mixins)
  - [Content](#content)
- [Extend](#extend)
- [Funciones](#funciones)
  - [Crear funciones](#crear-funciones)
- [Array](#array)
- [Controles de Flujo](#controles-de-flujo)
  - [each](#each)
  - [for](#for)
  - [if](#if)
- [Enlaces de Interés](#enlaces-de-interés)

## Diferencias entre Sass, Stylus y Less

Existen muchos preprocesadores css. Entre ellos podemos encontrar:

* `Less` es un preprocesador muy simple.
* `Sass` es una herramienta muy interesante gracias a su comunidad.
* `Stylus` es muy completo pero a la vez incluso complejo.

Elegir cuál es el mejor procesador depende de lo que queremos lograr con el proyecto. Algunas de las razones están relacionadas con el equipo y las necesidades que tenemos con el proyecto.

Cuando trabajamos con preprocesadores se tiene que compilar el código para transformarlo en css y las páginas html lo puedan entender.

los archivos de sass tienen las extensión `.scss`.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Estructura de CSS

Una ventaja que trae Sass es el poder organizar mejor nuestros archivos. Esto lo podemos lograr separando nuestros estílos en múltiples archivos. De tal modo, ya no tenemos que revisar un archivo muy amplio, sino que podemos separar nuestros estilos en varios módulos haciendo el trabajo mucho más fácil.

Para organizar e importar archivos usamos `@import`.

La forma de nombrar los archivos que van a ser importados es con un `_` al inicio.

```scss
@import "_nombre_archivo.scss"
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Variables

Las variables son una forma de almacenar la información que se desea reutilizar a lo largo de la hoja de estilo. 

Se puede almacenar cosas como colores, pilas de fuentes o cualquier valor de CSS que que se desea reutilizar. Sass usa el símbolo `$` para hacer que algo sea una variable. 

Aquí hay un ejemplo:

```scss
$font-stack: Helvetica, sans-serif
$primary-color: #333

body {
  font: 100% $font-stack
  color: $primary-color
}
```

`BEM` — Block Element Modifier o Modificador de Bloques de Elementos

Como su nombre indica, BEM distingue claramente 3 conceptos: el Bloque, el Elemento y el Modificador.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Escapar una variable

Para escapar una variable se usa el comodín `#`. 

Esto es necesario en casos como, por ejemplo, cuando la variable está rodeada por comillas y de no ponerse el escape la variable pasaría como una cadena de caracteres..

```scss
$size: 10;

div {
  content: "#{$size}"
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Anidaciones

```scss
.btn {  
  font-size: 15pt;
  &__icon {
    font-size: .6em;
  }
  &.btn--info {
    background-color: $color-info;
  }
}
```

El comodín `&` se usa para hacer referencia al padre.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Mixins

Los mixins nos ayudan a reciclar declaraciones para evitar mucho trabajo. Para esto vamos a usar @`mixin`.

Cuando se define un mixin, los argumentos se definen como una serie de variables separadas por comas, y todo ello encerrado entre paréntesis.

```scss
@mixin max-width($max-width: 800px) {
  max-width: $max-width
  margin-left: auto
  margin-right: auto
}
```

En este caso le estamos definiendo un valor por defecto. Si deseamos cambiar ese valor, cuando lo llamemos se lo podemos cambiar de esta forma:

```scss
@mixin max-width(1200px)
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Content

Una de las características que tienen los mixins es la directiva content. Esta nos permite incluir un bloque de contenido dentro de un mixin.

```scss
@mixin response-to($width) {
  @media only screen and (min-width: $width) {
    @content;
  }
}
```

Se usa de esta forma:

```scss
section {
  background: blue;
  @include response-to(800px) {
    background-color: red;
  };
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Extend

Permiten que una declaración herede estilos declarados por otra regla o placeholder. Los extend se declaran con el símbolo de porcentaje `%`.

```scss
%btn {
  color: red;
  width: 50px;
}

.btn-info {
  @extend %btn;
  background: blue;
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Funciones

Sass tiene muchas funciones que podemos usar cuando estamos modificando CSS. Muchas de estas funciones son muy útiles como por ejemplo aclarar un color u oscurecerlo. 

```scss
darken(#ffffff, 25%)
lighten(#ffffff, 25%)
invert(#ffffff)
```

La lista completa de funciones se pueden ver aquí:
https://sass-lang.com/documentation/file.SASS_REFERENCE.html#functions

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Crear funciones

```scss
@function suma($numero-uno, $numero-dos) {
  @return $numero-uno + $numero-dos;
}

.div {
  padding: suma(10px, 5px);
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Array

```scss
$fs: (
  big: 24px,
  normal: 16px,
  small: 14px,
  x-small: 12px
);

p {
  font-size: map-get($fs, normal);
}

small {
  font.size: map-get($fs, x-small);
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Controles de Flujo

### each

```scss
$font-weights: normal bold italic;

@each $font in ($font-weights) {
  .#{$font} {font.weight: $font;}
}
```

y esto da como resultado:

```css
.normal {
  font-weight: normal;
}

.bold {
  font-weight: bold;
}

.italic {
  font-weight: italic;
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### for

```scss
@for $i from 1 to 5 {
  .class-#{$i} {
    &:before {
      content: "#{$i}"
    }
  }
}
```

Resultado:

```css
.class-1:before {
  content: "1";
}

.class-2:before {
  content: "2";
}

...

.class-5:before {
  content: "5";
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### if

```scss
$background-color: black;

@if $background-color == black {
  p {
    text-color: white;
  }
}
@else {
  p {
    text-color: black;
  }
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Enlaces de Interés
* [Curso de Sass](https://platzi.com/clases/sass/)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>