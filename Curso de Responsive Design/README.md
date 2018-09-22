# Curso de Responsive Design<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [¿Qué es Responsive Design?](#qué-es-responsive-design)
- [Patrones de Responsive Design](#patrones-de-responsive-design)
  - [Mostly Fluid](#mostly-fluid)
  - [Colocación de Columnas](#colocación-de-columnas)
  - [Layout Shifter](#layout-shifter)
  - [Tiny Tweaks](#tiny-tweaks)
  - [Off Canvas](#off-canvas)
- [Conceptos Elementales](#conceptos-elementales)
- [Developer tools para Responsive Design](#developer-tools-para-responsive-design)
- [Meta viewport](#meta-viewport)
- [Medidas Relativas](#medidas-relativas)
- [Media Queries](#media-queries)
- [CSS Positions](#css-positions)
- [Propiedades CSS Útiles](#propiedades-css-Útiles)
- [Recursos Complementarios](#recursos-complementarios)
- [Enlaces de Interés](#enlaces-de-interés)

## ¿Qué es Responsive Design?

Responsive design son todas esas técnicas que usamos para adaptar nuestras aplicaciones web a la mayor cantidad de pantallas.

## Patrones de Responsive Design

### Mostly Fluid

Empieza el contenido en una caja, pero cuando ya no alcanza todo el contenido en el viewport, el sitio se empieza a redimencionar para aprovechar mejor el contenido.

<div align="center">
  <img src="img/mostly-fluid.jpg">
  <small><p>Mostly Fluid</p></small>
</div>

### Colocación de Columnas

Las columnas se van poniendo una debajo de otras dependiendo del tamaño del viewport.

<div align="center">
  <img src="img/colocacion-columnas.jpg">
  <small><p>Colocación de Columnas</p></small>
</div>

### Layout Shifter

Haces variaciones del layout dependiendo del tamaño del viewport.

<div align="center">
  <img src="img/layout-shifter.jpg">
  <small><p>Layout Shifter</p></small>
</div>

### Tiny Tweaks

Hacer cambios pequeños en algunos elementos como:
* Tamaño del texto.
* Tamaño de imágenes.

<div align="center">
  <img src="img/tiny-tweaks.jpg">
  <small><p>Tiny Tweaks</p></small>
</div>

### Off Canvas

Tienes ciertos elementos fuera del viewport que aparecen de acuerdo a ciertas acciones. Un ejemplo es el hamburger menu.

<div align="center">
  <img src="img/off-canvas.jpg">
  <small><p>Off Canvas</p></small>
</div>

## Conceptos Elementales

* **Viewport**: área visible del navegador
* **Portrait**: vertical
* **Landscape**: horizontal
* **Mobile first**: empezar una website desde la menor resolución soportada
* **Desktop first**: empezar una website desde la mayor resolución soportada

**¿Cúal es mejor?** Técnicamente Mobile First

## Developer tools para Responsive Design

Para activar las herramientas de responsive de Chrome, vamos a hacer lo siguiente:

1. Click derecho
2. Inspeccionar
3. Click en ínico de responsive en la esquina supeior izquierda o Control + Shift + M

## Meta viewport

El viewport es el área visible del navegador.

Para setear el viewport, se va a hacer desde una etiqueta meta.

```html
<meta name="viewport" content="width=device-width,initial-scale=1.0">
```

* `width=device-width` para que se adapte según la pantalla del dispositivo
* `initial-scale=1.0` para indicar el escalado según el dispositivo

## Medidas Relativas

* **Porcentaje**: Longitud referente al tamaño de los elementos padre.
* **em**: Unidad relativa al tamaño de fuente especificada más cercano. Incluye al propio elemento.

<div align="center">
  <img src="img/medida-em.jpg">
  <small><p>Ejemplo: Medida em</p></small>
</div>

* **rem**: Unidad relativa al tamaño de fuente especificada en el ancestro más lejano (html o body).

<div align="center">
  <img src="img/medida-rem.jpg">
  <small><p>Ejemplo: Medida rem</p></small>
</div>

* **vw / vh**: Unidad relativa porcentual con respecto al viewport.

<div align="center">
  <img src="img/medida-vw-vh.jpg">
  <small><p>Ejemplo: Medida vw/vh</p></small>
</div>

<div align="center">
  <img src="img/medida-vw-vh2.jpg">
  <small><p>Ejemplo: Medida vw/vh</p></small>
</div>

## Media Queries

El media queries es un módulo de css que hace posible al responsive design, éste existe desde el 2010 y se encarga de adaptar la representación del contenido a características del dispositivo.

**Estructura del Media Querie**:

```css
@media media type and (condición) { }
```

**Ejemplos**:

```css
/* Todas las pantallas con con un ancho inferior o igual a 768px cumplen esta condición */
@media screen and (max-width: 768px) { }

/* Todas las pantallas con un ancho de 480px hasta 768px cumplen esta condición */
@media screen and (max-width: 768px)  and (min-width: 480px) { }
```

**Mobile first**

Usa min-width  
min-width = desde

```css
@media screen and (min-width: 320px)  { }
@media screen and (min-width: 480px)  { }
@media screen and (min-width: 768px)  { }
@media screen and (min-width: 1024px)  { }
```

**Desktop first**

Usa max-width  
max-width = hasta

```css
@media screen and (max-width: 1024px)  { }
@media screen and (min-width: 768px)  { }
@media screen and (min-width: 480px)  { }
@media screen and (min-width: 320px)  { }
```

## CSS Positions

* **static**: es la propiedad por defecto.

Con las otras opciones, se activan las propiedades de top, bottom, left, right y z-index. 

* **relative**: el objeto se mueve en base al lugar donde se encuentra originalmente.
* **absolute**: el objeto se ubica de manera absoluta con el elemento más cercano que tenga posición relativa o con el body.
* **fixed**: El elemento se muestra de manera fija en el viewport.
* **sticky**: El elemento se queda de manera fija una vez que aparece en pantalla.

## Propiedades CSS Útiles

**Flex-Wrap**

Pone un elemento debajo de otro si no entran en el viewport.

```css
flex-wrap: wrap;
```

## Recursos Complementarios
* [Diapositivas del Curso](docs/responsive-design.pdf)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Enlaces de Interés
* [Curso de Responsive Design](https://platzi.com/clases/responsive-design/)
* [Repositorio de Github](https://github.com/LeonidasEsteban/responsive-design-portafolio)
* [Mediaqueri](https://mediaqueri.es/)
* [Codepen: CSS Positions](https://codepen.io/LeonidasEsteban/pen/VGWzWK)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

