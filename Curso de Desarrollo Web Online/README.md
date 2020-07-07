

# Curso De Desarrollo Web Online

## Tabla de Contenido

- [Introducción al desarrollo web](#Introducción-al-desarrollo-web)
- [Software para trabajar en desarrollo web](#Software-para-trabajar-en-desarrollo-web)
- [DOM](#DOM)
- [Etiquetas](#Etiquetas)
- [Estructura de nuestro Sitio Web](#Estructura-de-nuestro-Sitio-Web)
- [Atributos HTML](#Atributos-HTML)
- [Formularios HTML](#Formularios-HTML)
- [Formas de agregar estilos a HTML](#Formas-de-agregar-estilos-a-HTML)
- [Flex Box](#Flex-Box)
- [Alineando elementos de forma horizontal](#Alineando-elementos-de-forma-horizontal)
- [Enlaces de Interés](#enlaces-de-interés)

## Introducción al desarrollo web

El desarrollo web tiene que ver con todo lo que percibimos a través del navegador: páginas, aplicaciones y sitios web como Facebook, Instagram y Twitter.

Para comprender cómo funciona internet necesitamos conocer tres grandes conceptos:

- **Clients** (clientes): son los dispositivos a través de los cuales accedemos a los sitios web: un computador desktop, un teléfono, una laptop, etc.
- **Internet**: es toda la red formada por servidores y clientes que proveen y consumen contenidos web y se comunican entre sí a nivel global.
- **Server** (servidor): es un computador, ubicado en alguna parte de la red, que está prendido todo el tiempo, en el que se alojan o almacenan sitios web y sus recursos y al cual se accede a través de nombres de dominio (.com, .net, .pe, etc.). También se les conoce como hosting.

Profesiones dentro del Desarrollo Web:

- **Frontend**: son los encargados de cuidar toda la apariencia y experiencia de usuario. Su misión es pasar todo el diseño gráfico de un sitio o aplicación web, a código, y proveer toda la interactividad a los clientes. Esta rama se puede subdividir en algunas especializaciones como: Arquitecto Frontend, Desarrollador JavaScript (frontend), etc.
- **Backend**: resguardan los datos y la seguridad de las aplicaciones y sitios web. Su misión es crear y mantener toda la parte del sitio web que sucede en los servidores. Pueden especializarse aún más en: SysAdmis, DevOps, Desarrollador JavaScript (backend), entre otros.

Las tres tecnologías básicas que debe conocer y manejar un **Frontend** son:

- **HTML**: es el lenguaje de marcado para hacer websites.
- **CSS**: hojas de estilos cascada, el diseño hecho código.
- **JavaScript**: es el único lenguaje que funciona actualmente dentro de los navegadores de manera nativa.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Software para trabajar en desarrollo web

La herramienta fundamental para el desarrollo web es el Editor de Código. Existen varias opciones entre las que destacan: SublimeText, Atom y VisualStudio Code.

Los editores de código se pueden configurar y personalizar para ofrecer una mejor experiencia al desarrollador.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## DOM

DOM es el acrónimo de Document Object Model o Modelo de documento, y es la manera en que se **representa** el contenido del documento, de manera similar a un árbol de nodos.

A continuación, un ejemplo sencillo de la estructura del DOM:

- html
  - head
    - title
    - meta
  - body
    - header
      - nav
    - section
      - article
    - footer

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Etiquetas

Las etiquetas son la representación básica de la información en un documento html. Sirven para crear y organizar el contenido.

La sintaxis general de una etiqueta es:

```html
<nombre> contenido </nombre>
```

Hay ciertas etiquetas que tienen una sintaxis diferente, ya que se cierran en sí mismas; es decir, no tienen etiqueta de cierre:

```html
<nombre />
```

Algunas de las etiquetas más conocidas y usadas son:

- Etiquetas de cabecera (head)
  - doctype: indica al navegador el tipo de documento que se está mostrando.
  - html: es la etiqueta que envuelve todo el documento
  - head: es la cabecera del documento y contiene sub etiquetas que describen al documento o incluyen recursos adicionales.
- Etiquetas del cuerpo del documento (body):
  - article: diferencia partes del contenido que pueden vivir por sí mismas.
  - nav: para hacer menús de navegación.
  - aside: contenido menos relevante, como publicidad, etc.
  - section: sirve para diferenciar las secciones principales del contenido.
  - header: cabecera del documento.
  - footer: pie de página del documento.
  - h1 - h6: títulos de nuestro sitio web.
  - table: tablas de contenidos, similar a la estructura de las hojas de calculo.
  - ul y ol: listas de items.
  - div: cualquier división para organizar el contenido.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Estructura de nuestro Sitio Web

El proyecto que desarrollaremos en este curso se trata de un Portafolio Personal, incluirá una cabecera, navegación, un hero (área visual con información destacada), un área de proyectos y otra para eventos, y finalmente un pié de página con un formulario de contacto y enlaces a redes sociales.

El archivo **index.html** es el archivo que el navegador abre por defecto al acceder a un directorio en un servidor web.

La estructura básica de un archivo html es la siguiente:

```html
<html>
  <head>
    <title> Título de la página </title>
  </head>
  <body>
      <header> Cabecera del contenido </header>
      <section> Sección principal </section>
    <section> Otra sección </section>
    <footer> Pié de página del documento </footer>
  </body>
</html>
```

Otras de laa estructura html de nuestro proyecto usa una o más de las siguientes etiquetas:

- **h1** a **h6**: son etiquetas para indicar títulos con un estilo que destaca del resto.
- **article**: es la parte de nuestro contenido que puede vivir por sí mismo. Pueden haber tantos artícle como proyectos o eventos tenga nuestro portafolio.
- **p**: define el texto de un párrafo.
- **small**: aplica una apariencia de texto reducido en tamaño.
- **strong**: aplica al texto un formato de negritas.
- **a**: corresponde a un ancla o enlace a una url interna o externa del documento.
- **img**: con esta etiqueta podemos enlazar imágenes en el documento.
- **figure**: le da un contexto semántico a las imágenes.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Atributos HTML

Los atributos son valores agregados a las etiquetas (tags) html que extienden su habilidad o funcionalidad con información específica.

A continuación, un ejemplo de los atributos más comunes y usados en algunas etiquetas:

Para **img**:

- **src**: específica la *ruta* de la imagen que será mostrada a través de esta etiqueta. La ruta puede ser *absoluta* (cuando especifica una dirección exacta, incluyendo el prefijo *http(s)* ) o *relativa* (cuando la referencia a la ubicación de la imagen parte de la ubicación del archivo actual).
- **alt**: indica un texto alternativo que será mostrado en lugar de la imagen cuando ésta no pueda ser mostrada.
- **width**: ancho de la imagen en pixeles.
- **height**: alto de la imagen en pixeles.

Para **link**, en la cabecera *head* del documento:

- **rel**: indica la relación del recurso con el contenido.
- **type**: indica el tipo de recurso / formato.
- **href**: indica la ubicación (url) del recurso enlazado.

Para **meta**, ambién en la cabecera *head* del documento:

- **charset**: indica la tabla de caracteres (utf-8 para caracteres latinos) usada en el documento.

Para **a**:

- **href**: la ubicación o ruta a la que enlaza esta etiqueta de ancla. En el caso de querer enlazar a elementos que se encuentran dentro del mismo documento, este atributo debe indicar el valor del atributo ““id”” de ese elemento destino del enlace.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Formularios HTML

Los Formularios en html son unidades de información que nos permiten recolectar información para enviarlos al propietario del website o a un servicio externo. Esta formado por dos partes o contextos: una parte donde se hace el ingreso y modelación de esos datos (en el frontend), y otra parte que se encarga de enviar, procesar y almacenar esos datos (en el backend).

Los formularios se crean con la etiqueta **form**. El atributo principal de un formulario es *action*, ya que contiene la ruta a la que serán enviados los datos recolectados.

Hay diversos elementos html que permiten la captura o recolección de datos, aunque generalmente se usan los elementos creados con la etiqueta *input*. Los inputs también sirven para crear botones, aunque existe una etiqueta especial para ésto llamada *button*… El atributo principal de los inputs es *type*, que indica el tipo de comportamiento o dato que se espera recibir.

Los elementos creados con la etiqueta *label* muestran un texto que se puede asociar con un input para darle mayor significado al campo, principalmente cuando no se usa el atributo *placeholder*.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Formas de agregar estilos a HTML

Hay tres opciones para incluir estilos que definan la apariencia de tu html:

- **Estilos en línea**: se definen directamente en el elemento html que quieres estilizar, se agregan con el atributo **style**.
- **Estilos con el tag Style**: regularmente este tag se incluye dentro de la etiqueta **head** del html.
- **Estilos enlazados desde un archivo css externo**: utilizando la etiqueta **link** que nos permite enlazar recursos externos.

A **CSS**, se le llama **hojas de estilos en cascada** porque los estilos que se definen para una página, se van aplicando de arriba hacia abajo, y de lo más general a lo más particular, teniendo prioridad lo más particular. Esto es, los estilos que prevalecen son los que han sido definidos **en línea**, luego los que fueron definidos mediante la etiqueta **style** en la cabeza o cuerpo del html, y por último los estilos definidos en archivos externos enlazados con la etiqueta **link**. Esta prioridad se puede alterar al usar el modificador **!important"" en la definición de algún estilo en particular, aunque esto no es recomendado.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Flex Box

El archivo de ejemplo se encuentra en el siguiente enlace: [Uso del FlexBox](Uso-del-FlexBox/)

### Alineando elementos de forma horizontal

La propiedad de css que nos permite definir la forma en que se alinearán o distribuirán los hijos de un elemento al que se le ha asignado un *display flex* es: **justify-content**. Y puede tomar entre otros valores, los siguientes:

- **flex-start**: para alinear todos los elementos hacia el inicio del espacio disponible.
- **flex-end**: para alinear todos los elementos hacia el final, a la derecha.
- **center**: para alinear todos los elementos al centro del espacio disponible.
- **space-between**: para distribuir los elementos con un espacio proporcional e igual entre ellos.
- **space-evenly**: para distribuir los elementos con un espacio proporcional e igual entre ellos (incluyendo el primer y último elementos con respecto a los extremos del espacio disponible).
- **space-around**: similar a *space-evenly* pero tanto en el primero como en el último elemento, el espacio hacia los extremos es la mitad del espacio usado entre los elementos.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Enlaces de Interés

HTML DOCTOR: Resumen de todas las etiquetas disponibles en HTML5
[http://html5doctor.com/](http://html5doctor.com/)



<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>