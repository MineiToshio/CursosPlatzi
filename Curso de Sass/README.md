# Curso de Sass

## Diferencias entre Sass, Stylus y Less

Existen muchos preprocesadores css. Entre ellos podemos encontrar:

* `Less` es un preprocesador muy simple.
* `Sass` es una herramienta muy interesante gracias a su comunidad.
* `Stylus` es muy completo pero a la vez incluso complejo.

Elegir cuál es el mejor procesador depende de lo que queremos lograr con el proyecto. Algunas de las razones están relacionadas con el equipo y las necesidades que tenemos con el proyecto.

Cuando trabajamos con preprocesadores se tiene que compilar el código para transformarlo en css y las páginas html lo puedan entender.

los archivos de sass tienen las extensión `.scss`.

## Estructura de CSS

La primera ventaja que se nos ocurre es que podemos organizar nuestro Sass. Lo clave es que podemos separar nuestro código en archivos. Ya no tenemos que revisar un archivo muy amplio, sino que podemos separar nuestros estilos en varios módulos, lo que nos hace el trabajo mucho más fácil.

Para organizar e importar archivos usamos `@import`.

La forma de nombrar los archivos que van a ser importados es con un `_` al inicio.

```scss
@import "_nombre_archivo.scss"
```

## Variables

Piense en las variables como una forma de almacenar la información que desea reutilizar a lo largo de su hoja de estilo. Puede almacenar cosas como colores, pilas de fuentes o cualquier valor de CSS que crea que desea reutilizar. Sass usa el símbolo `$` para hacer que algo sea una variable. 

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

## Mixins

Lo primero que debemos hacer es definir qué son los mixins. Lo que hacen los mixins nos ayudan a reciclar declaraciones para evitar mucho trabajo. Dentro de los archivos de nuestro curso vamos a crear una carpeta llamada mixins. Para esto vamos a usar @`mixin`.

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

## Content

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

## Extend

Permiten que una declaración herede estilos declarados por otra regla o placeholder (%).

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

## Funciones

Sass tiene muchas funciones que podemos usar cuando estamos modificando CSS. Muchas de estas funciones son muy útiles como por ejemplo aclarar un color u oscurecerlo. Así hay muchísimas más, sin embargo hay algunas que no nos permiten hacer cambios visuales y que pueden parecer no tan útiles.

```scss
darken(#ffffff, 25%)
lighten(#ffffff, 25%)
invert(#ffffff)
```

La lista completa de funciones se pueden ver aquí:
https://sass-lang.com/documentation/file.SASS_REFERENCE.html#functions

### Crear funciones

```scss
@function suma($numero-uno, $numero-dos) {
  @return $numero-uno + $numero-dos;
}

.div {
  padding: suma(10px, 5px);
}
```

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

## each

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

## for

```scss
@for $i from 1 to 5 {
  .class-#{$i} {
    $:before {
      content: "#{$i}"
    }
  }
}
```

resultado:

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

## if

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

## Escapar una variable

Para escapar una variable se usa el comodín `#`.

```scss
$size: 10;

div {
  content: "#{$size}"
}
```