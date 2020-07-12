# Cómo crear un buen README.md y sintaxis de markdown

El README es el archivo en el cual hacemos la descripción del proyecto, ya sea open source o privados es importante tener un buen README. Este archivo se escribe con formato markdown, esto es lo primero que veremos en esta clase.

## Markdown

Es un formato de escritura que permite la generación de contenido fácil y rápido, permite generar una salida (por lo general) en formato HTML sin necesidad de aprender a profundidad HTML. Es ampliamente utilizado por su facilidad de generar texto enriquecido.

### Encabezados:

Lo utilizamos para resaltar una parte importante, títulos, subtítulos, etc. Se utiliza el símbolo # para demarcar el inicio de un encabezado.
`# Encabezado nivel 1`
`## Encabezado nivel 2`
`### Encabezado nivel 3`
`#### Encabezado nivel 4`
`##### Encabezado nivel 5`
`###### Encabezado nivel 6`

En HTML tendríamos la siguiente salida
``

# `Encabezado nivel 1`


`Encabezado nivel 2``Encabezado nivel 3``Encabezado nivel 4``Encabezado nivel 5``Encabezado nivel 6`

En formato Markdown escribirlos no es tan distinto a escribir en un texto plano, automáticamente se reconoce que es un párrafo, por ejemplo:
JavaScript es un lenguaje muy poderoso.

En la Escuela de JavaScript de Platzi aprenderás todo lo necesario para ir
de cero a rockstar.

En HTML sería:
``

```
JavaScript es un lenguaje muy poderoso.
```


`En la Escuela de JavaScript de Platzi aprenderás todo lo necesario para pasar de cero a rockstar.`

Hay partes en las que necesitaremos hacer énfasis en ciertas palabras, lo común es que utilicemos itálicas y negritas para resaltarlas, en Markdown debemos hacer lo siguiente:
`**Esto es una negrita**`
`*Esto es una itálica*`
`**_Esto es una negrita con itálica_**`

En HTML sería:
`**Esto es una negrita**`
`*Esto es una itálica*`
`***Esto es una negrita con itálica\***`

### Citas

Se utilizan para mostrar referencias a otros autores, en markdown hacemos:
`> Esto es una cita`

Podemos poner citas con varios párrafos

```
> Este es el primer párrafo`
`>`
`> Este es el último párrafo
```

Podemos citar dentro de citas

> Esta es la cita principal
>
> > Esta es la cita secundaria

Podemos anidar elementos que vimos más arriba:

> # Este es el título de la cita
>
> > Cita de la cita

## Listas

Podemos utilizar listas ordenadas y listas sin orden:

### Listas ordenadas

1. Primer item
2. Segundo item
3. Tercer item

## Listas sin orden

- Item
- Item
- Item

## Código

Es esencial que en los README podamos escribir código, esto para especificar la instalación o partes que debemos resaltar de nuestro proyecto. Hay dos formas en las que podemos resaltar código, dentro de un párrafo o en una sección completa, tal cual estamos haciendo en esta clase.
Esto es un pedazo de código dentro de un párrafo `console.log('Hola Mundo')`

Para insertar código lo que hacemos es dejar una tabulación y automáticamente lo reconocerá como código si no podemos utilizar `` para crear el bloque, así:

```
var name = 'Escuela de Javascript'

console.log(name)
```

## Cómo escribir un buen README

No hay un estándar sobre cómo escribir un buen README, cada proyecto es diferente y depende de cada uno. Pero hay ciertas partes que sí o sí debería contener un buen README.

1. Nombre: Especificamos cómo se llama nuestro proyecto.
2. Descripción: es donde diremos para qué exactamente es el proyecto, qué problemas resuelve y cualquier información relevante.
3. Instalación: muestra los pasos específicos para instalar el proyecto. Por lo general se muestra un pedazo del código necesario para la instalación.
4. Cómo usar: describe rápidamente casos de uso en los cuales se puede usar el proyecto, además de mostrar funcionalidades.
5. Cómo contribuir: si es un proyecto open source se describe acá la forma en la que deberían crearse las contribuciones.
6. Licencia: muestra la licencia que tiene el proyecto.
   En formato markdown podemos escribir cada uno de los items de esta manera:

# PlatziVideo

PlatziVideo es la plataforma que te permite ver videos on demand y además
te enseña JavaScript de cero a rockstar.

# Instalación

Puedes instalarlo desde npm

```
$ npm install platzi-video
```

O también clonando el repositorio

```
$ git clone url
```

# Cómo se usa

```
import PlatziVideo

video = PlatziVideo()
```

# Cómo contribuir

Puedes crear un pull request al proyecto

# Licencia

MIT

Tener un buen README permite que los demás colaboradores del proyecto tengan todo el contexto necesario para poder arrancar, usar y crear nuevas funcionalidades.

Reportar un problema

Conclusiones