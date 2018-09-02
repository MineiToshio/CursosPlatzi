# Curso de PostCSS<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [¿Qué es PostCSS?](#qué-es-postcss)
- [Plugins](#plugins)
  - [autoprefixer](#autoprefixer)
  - [cssnext](#cssnext)
  - [postcss-import](#postcss-import)
  - [fontmagician](#fontmagician)
  - [stylelint](#stylelint)
  - [mqpacker](#mqpacker)
  - [cssnano](#cssnano)
- [Configuración](#configuración)
- [Los nuevos módulos de CSS](#los-nuevos-módulos-de-css)
  - [Variables](#variables)
  - [Cálculos](#cálculos)
  - [Media queries](#media-queries)
  - [Imágenes retina](#imágenes-retina)
  - [Colores](#colores)
  - [Fuentes](#fuentes)
  - [Selectores personalizados](#selectores-personalizados)
  - [Pseudo clases](#pseudo-clases)
  - [Indentado](#indentado)
- [Enlaces de Interés](#enlaces-de-interés)

## ¿Qué es PostCSS?

Es una herramienta para manipular archivos CSS usando JavaScript.

[Postcss Cli](https://github.com/postcss/postcss-cli)

**Para instalar postcss**

```
$ npm install postcss-cli --save
```

Para transformar un archivo postcss a uno css:

```
postcss "src/css/home.css" -o "dist/css/home.css" -w
```

* `-w` (-watch), está pendiente a los cambios en el archivo postcss y los cambia automáticamente.
* `-u` (-use), indica qué plugins se van a usar

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Plugins

[Plugins de Postcss](www.postcss.parts)

### autoprefixer

plugin mas usado en postcss. Usado para agregar prefijos para algunas reglas de css que soportan los navegadores antiguos pero con prefijos.

```bash
$ npm install autoprefixer --save-dev 
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### cssnext

Es un plugin que contiene muchos plugins para aumentar la funcionalidad de postcss

```bash
$ npm install postcss-cssnext --save-dev
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### postcss-import

Te permite modularizar el css con imports

```bash
$ npm install postcss-import --save-dev
```

En el .css principal:

```js
@import "./sidebar.css";
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### fontmagician

Agrega al css las referencias de fuentes de fontface

```bash
npm install postcss-font-magician --save-dev
```

Para modificar qué referencias debería de traer se puede hacer de esta manera:

```js
require("postcss-font-magician")({
  variants: {
    "Lato": {
      "300": ["woff"],
      "400": []
    }
  }
})
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### stylelint

Se configura un archivo con reglas las cuales debe de segur el archivo.css. En caso no se cumpla con las reglas definidas la consola bota error al traspilar el postcss.

```bash
$ npm install stylelint --save-dev
```

El archivo de configuración debe llamarse stylelint.config.js

```js
module.exports = {
  "rules": {
    "block-no-empty": true,
    "unit-whitelist": ["em", "rem", "%", "s", "fr", "vh", "dpi", "x", "px"]
  }
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### mqpacker

Toma los media queries y los junta en un solo paquete.

```bash
$ npm install css-mqpacker --save-dev
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### cssnano

minimiza el código css

```bash
$ npm install cssnano --save-dev
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Configuración

se puede crear un archivo de configuración llamado postcss.config.js

```js
module.exports = {
  plugins : [
    require("autoprefixer")({
      grid:true
    })
  ] 
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Los nuevos módulos de CSS

CSS ya no es un conjunto de propiedades para crear nuestros estilos, ya no es más un paquete que recibe un único nombre y se optó por algo mucho mejor para que estas nuevas características sean adoptadas por los navegadores más rápidamente, a estos los llamamos módulos.

Una ventaja de los módulos es que no necesariamente tienen que estar completos para ser implementados en el browser, pueden ir por niveles de la especificación y así garantizar constantes mejoras y nuevas características.

Te haré un resumen de los módulos a tratar en este curso y que gracias a CSSNext podemos hacerlo compatibles hoy mismo.

**CSS Custom Properties for Cascading Variables Module Level 1**

Esta es una característica que nos permitirá traer a CSS algo que extraños mucho de los lenguaje de programación, las variables. Así podemos guardar por ejemplo el color hexadecimal preciso que necesitamos y darle un nombre que recordemos como –elVerdePerfecto.

https://www.w3.org/TR/css-variables

**Media Queries Level 4**

Los media queries son nuestros mejores amigos para cambiar el CSS de algunos elementos dependiendo de las condiciones del navegador, es decir, en Responsive Design. Ahora podremos nombrar un media query como si fuera una variable para ser más fácil de reutilizar y rangos de media queries para una mejor sintaxis.

https://drafts.csswg.org/mediaqueries/

**CSS Images Module Level 3**

Con image-set() vamos a poder elegir una determinada image de background dependiendo de la densidad de pixel que tenga el monitor.

https://drafts.csswg.org/css-images-3/#image-set-notation

**CSS Color Module Level 4**

Ya conocemos los hexadecimales, rgb() rgba() y ahora con la función color() vamos a poder seguir creando variaciones a la forma de asignar colores.

https://drafts.csswg.org/css-color/#modifying-colors

**CSS Fonts Module Level 4**

La forma de agregar tipografias también viene con mejoras y mi favorita se llama “System UI”. Con System UI podemos asignar un fallback que tomará la fuente predefinida de tu sistema operativo, en el caso de mac "San Francisco".

https://drafts.csswg.org/css-fonts-4/#valdef-font-family-system-ui

**CSS Extensions - Custom Selectors**

CSS quiere permitirte agrupar un selector o conjunto de selectores en algo más fácil de recordar como es el caso de las variables, estas se podrán anidar

**Selectors Level 4**
Aprenderemos a usar psedu clases como :any-link() :not() :matches()

https://drafts.csswg.org/selectors-4/#matches

**Nesting**

Este es mi favorito, es una propuesta que nos permitirá usar mi cualidad favorita de los preprocesadores, evitar repetir un selector previamente escrito, es dificil de explicar así que dejaré un pequeño ejemplo

```css
/* CSS actual */

.mi .selector .css {
  color: orange;
}

/* CSS Nesting */

.mi {
  color: red;
  & .selector {
    color: blue;
    & .css {
      color: orange;
    }
  }
}
```

Mientras que con nuestros selectores tradicionales tenemos que escribir en profundidad tanto como sea necesario con nesting (indentado en español) vamos a poder escribir los selectores una sola vez e ir agregándoles estilos independientemente

http://tabatkins.github.io/specs/css-nesting/

El conjunto de todo esto nos da un mejor CSS, uno que día a día se irá agregando en los navegadores y hará que no sea necesario hacerlo compatible con cssnext, cuando ese día llegue solo tienes que desactivarlo y como verás en las próximas clases podrás hacerlo independientemente por cada característica.

Ahora que sabes que es una buena idea escribir código que en un futuro será el estándar continúa con el curso que espero te deje impresionado clase a clase.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Variables

Las variables van dentro de un atributo `:root {}`.

**variables de valores**

```css
:root {
  --color: red
}

.home {
  background: var(--color);
}
```

**variables de propiedades**

```css
:root {
  --button: {
    border-radius: 5px;
    padding: .5em 2em;
  };
}

.btn {
  @apply --button;
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Cálculos

```css
width: calc(100%- 50px);
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Media queries

```css
@custom-media --small screen and (width <= 768px);

@media (--small) {
    body {
        border: 10px solid blue;
    }
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Imágenes retina

```css
background-image: image-set(url("/src/images/platzi-video.png") 1x, 
                            url("/src/images/platzi-video-2x.png") 2x,
                            url("/src/images/platzi-video-3x.png") 300dpi);
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Colores

```css
background: color(black alpha(50%) contrast(50%)); 

hwb(hue [0-360], whiteness [0%-100%], blackness [0%-100%], opacidad);
background: hwb(240, 35%, 0%, 1); 

background: gray(50); //0-255
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Fuentes

Toma la fuente por defecto del sistema operativo.

```css
font-family: system-ui;
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Selectores personalizados

```css
@custom-selector :--checkable .checkbox-label, .radio-label;
@custom-selector :--highlight :hover, :active;

:--checkable {
    cursor: pointer;
    user-select: none;
    padding: 3px 7px;
}

:--checkable:--highlight {
    background: red;
    color: white;
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Pseudo clases

**:any-link**: Nos permite seleccionar cualquier enlace dentro de un selector.

```css
.myPlaylist :any-link:hover {
  transform: scale(1.1);
}
```

**​:matches**: Nos permite seleccionar las coincidencias dentro de un selector.

```css
.myPlaylist-item:matches(:last-child, :nth-child(3), :first-child){
  background: red;
}
```

**​:not**: Nos permite seleccionar lo que no coincida con las propiedades que le pase.

```css
.myPlaylist-item:not(:last-child, :nth-child(3), :first-child){
  background: blue;
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

### Indentado

```css
.featuring {
  height: 100%;

  & a { 
    color: white;
    &:hover {
      text-decoration: underline;
    }
  }

  @nest .myPlaylist & {
    border: 5px dashed pink;
  }

  @media (width < 768px) {
    height: 150px;
  }
} 
```

Se transforma en esto:

```css
.featuring {
  height: 100%;
}

.featuring a {
  color: white;
}

.featuring a:hover {
  text-decoration: underline;
}

.myPlaylist .myPlaylist-item
  border: 5px dashed pink;
}

@media screen and (max-width: 767px) {
  .featuring {
    height: 150px;
  }
}
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Enlaces de Interés
* [Curso de PostCSS](https://platzi.com/clases/postcss/)
* [Repositorio del Curso](https://github.com/LeonidasEsteban/platzi-video-postcss)
* [Postcss Cli](https://github.com/postcss/postcss-cli)
* [Plugins](www.postcss.parts)
  
<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>