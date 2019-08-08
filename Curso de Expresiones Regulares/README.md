# Expresiones regulares



**Contenido**

[TOC]



## Temario

1. Qué es y para qué sirven las expresiones regulares, por ejemplo `/^([a-z\.\+]{4,30})@([a-z\.]+)\.([\w]{2,5})$/`
2. Notas sobre el curso
3. El caracter `.` e introducción a los caracteres especiales y su escapado
4. Los delimitadores numéricos: `+`, `*`, `?`
5. Los contadores `{1,4}`
6. Las clases predefinidas `\w`, `\d`, `\s` …
7. Las clases construidas `[a-zA-Z0-9]`
8. Not `^`, su uso y sus peligros
9. El caso de `?` como delimitador
10. Principio (`$`) y final de línea (`^`)
11. Expresiones comunes:
12. mails
13. teléfonos
14. logs
15. nombres
16. locaciones
    1. [what three words](https://what3words.com/)
17. Búsqueda y reemplazo
18. Procesadores de texto
19. `grep` y `find` desde consola
20. Regex en
21. PHP
22. Javascript
23. Python
24. Perl (aunque se burlen)

## Introducción

Este curso te va a enseñar qué son las expresiones regulares y cómo utilizarlas.
Por ejemplo aplicaciones de búsqueda y filtrado, las expresiones regulares son extremadamente potentes, aprende a utilizarlas en este curso.

>  Dicen que cuando tienes un problema y lo intentas solucionar con Expresiones regulares tienes dos problemas.
>

Falso.

Aunque las expresiones regulares pueden ser un poco intimidantes en un principio, son un herramienta que todo desarrollador *Independientemente del lenguaje de programación de su preferencia* debe de traer SIEMPRE en la mochila.

Las expresiones regulares, fuera de las definiciones teóricas, se basan en un lenguaje aunque ha evolucionado desde hace más de medio siglo, sigue siendo el mismo desde los 80 Y TODO EL MUNDO LOS USA.

Sirven para crear patrones de búsqueda de texto y las herramientas (y lenguajes) que las utilizan se usan para tratar desde grandes volúmenes de datos hasta corroborar que una dirección de email está bien escrita.

Tratar, por ejemplo un archivo de más de 2 millones de líneas y 120 megas en menos de 2 segundos, nada mal, ¿no crees?

No sólo es copiar y pegar lo que parecen ser puntos, líneas, asteriscos, signos de interrogación que parecen tener ningún sentido de stack overflow, sino entender exactamente qué hace cada uno y crear los tuyos.


Regex
=====

## Presentación

Las Expresiones Regulares son una herramienta de búsqueda y manipulación de cadenas de caracteres increíblemente potente presente en **todos** los lenguajes de programación. Este curso busca llevar al alumno a entenderlas y darles un uso correcto dentro de sus diferentes aplicaciones.

Algunos puntos de este temario asumen un uso intermedio de la CLI, por lo que se recomienda el curso de "Línea de Comandos".

## ¿Qué son las expresiones regulares?

Las expresiones regulares son patrones de caracteres que te permite ir seleccionando o descartando datos en un archivo de texto como por ejemplo csv, o en una línea o un input, según coincidan o nó con este patrón.

Prácticamente todos los lenguajes de programación tienen librerías o módulos para manejar expresiones regulares.

Las expresiones regulares pueden ser muy complejas pero no son nada difíciles de entender.

A través de este curso, sin tecnicismos y con ejemplos puntuales, vamos a aprender a utilizarlas para que sean esa herramienta que siempre nos ayude, y sea la primera para solucionar problemas de grandes cantidades de datos en string.

## Aplicaciones de las expresiones regulares

Buscar e investigar sobre Expresiones Regulares puede ser muy intimidante.

		/^(.){5}\w?[a-Z|A-Z|0-9]$/ig

En serio pueden parecer muy, muy raras; pero la verdad es que no lo son.
En esta clase aprenderás, para qué te puede servir el saber usar bien las Expresiones Regulares; y es, en pocas palabras, para buscar.

### Enlaces de interes

#### a Ruby regular expression editor:  [https://rubular.com/](https://rubular.com/)

## Introducción al lenguaje de expresiones regulares

Con las expresiones regulares vamos a solucionar problemas reales, problemas del día a día.
¿Qué pasa si queremos buscar en un texto (txt, csv, log, cualquiera), todos los números de teléfonos que hay?
Tendríamos que considerar por ejemplo, que un teléfono de México serían 10 dígitos; hay quienes los separan con guión, hay quienes los separan con puntos, hay quienes no los separan sino que tienen los 10 dígitos exactos, y este patrón puede cambiar para otros países.
Esto mismo sucede con números de tarjetas de crédito, códigos postales, dirección de correos, formatos de fechas o montos, etc.

### enlace de interes

#### App REGEX en linea:  [https://regex101.com/](https://regex101.com/)

## El caracter (.)

¿Qué es un archivo de texto, por ejemplo un CSV?

¿Qué es una cadena de caractéres?

Cada espacio en una cadena de texto se llena con un caracter, esto lo necesitamos tener perfectamente claro para comenzar a trabajar con expresiones regulares

Abriremos nuestro editor qué en este curso recomendamos ATOM y vamos a presionar CTRL + F y podemos buscar por match idénticos.

## Las clases predefinidas y construídas

Las búsquedas en las expresiones regulares funcionan en múltiplos de la cantidad de caracteres que explícitamente indicamos.

## Resumen definitivo

Del punto (.) nacen 3 tipos diferentes de clases predefinidas por la sintaxis de expresiones regulares: El dígito, la palabra, los espacios

Aqui encontraran a detalle el vocabulario completo de expresiones regulares: [https://es.wikipedia.org/wiki/Expresión_regular](https://es.wikipedia.org/wiki/Expresión_regular)

Utilizamos “” , no usen el slash común(/) por que no les andará la búsqueda. para usarlo: Alt + 92

- \d= Busca dígitos
- \d\d\d = representa segmentos consecutivos segun la cantidad de \d que se coloquen
- \s= busca espacios
- \w= representa números y letras, exceptuando caracteres especiales
- \t= representa el tabulador
- .= representa el carácter “.”, (NO la clase)
- [0- 9]= representa todos los números del 0 al 9
- [a-z] equivale a d, pero sin representar del 0 al 9
- [A-Z]= Busca todos los caracteres desde la a a la z solo en mayusculas.

{} =Esta expresión le dice al motor de búsqueda que encuentre dos dígitos contiguos. Utilizando esta fórmula podríamos convertir el ejemplo “^\d\d/\d\d/\d\d\d\d$” que servía para validar un formato de fecha en “^\d{2}/\d{2}/\d{4}$” para una mayor claridad en la lectura de la expresión.

## Los delimitadores: +, *, ?

### Tipos básicos de conteo: que exista, que no exista.

- ( * ) Todo.
- ( + ) 1 o más.
- ( ? ) Cero o uno.

## Los contadores {1,4}

Lo que vamos a aprender en esta clase es comenzar a generalizar nuestras búsquedas, a ser específicos cubriendo grandes cantidades caracteres sin tener que escribir de forma repetitiva como sería poner por ejemplo “\d\d\d\d\d\d\d\d…”

		\d{7,7}

## El caso de (?) como delimitador

El ? indica al patrón que encuentre las coincidencias de manera rápida (o greedy); es decir, devolviendo el resultado más pequeño que haga match hasta donde se encuentra el delimitador, y esto lo haga tantas veces como sea posible dentro de la cadena.

## Not (^), su uso y sus peligros

Este caracter nos permite negar una clase o construir “anticlases”, vamos a llamarlo así, que es: toda la serie de caracteres que no queremos que entren en nuestro resultado de búsqueda.

Para esto definimos una clase, por ejemplo: [ 0-9 ], y la negamos [ ^0-9 ] para buscar todos los caracteres que coincidan con cualquier caracter que no sea 0,1,2,3,4,5,6,7,8 ó 9

### Reto: Filtrando letras en números telefónicos utilizando negaciones

En el texto siguiente:

555658
56-58-11
56.58.11
56.78-98
65 09 87
76y87r98

**Definir un patrón que haga match a todas las líneas excepto a la la última, la que tiene letras.**
**Es decir, seleccionar todas sin importar el caracter de separación, excepto cuando los números están separados entre sí por letras.**

### Ejercicio - reto personal

1. modificar movies.dat a `csv`

**input**: movies.dat

	`1::Toy Story (1995)::Animation|Children's|Comedy`

**output**: movies.csv

	`1,Toy Story,1995,[Animation|Children's|Comedy]`

El archivo se encuentra en [file](file/)

### resolucion reto personal:

		\d{2,2}[\W]?\d{2,2}[\W]?\d{2,2}\n
		
		(\d{2}[\W]?){3}

*Existen muchas mas formas de resolverlo. ¡No dejes de intentarlo!*

## Principio (^) y final de linea ($)

Estos dos caracteres indican en qué posición de la línea debe hacerse la búsqueda:

el ^ se utiliza para indicar el principio de línea
el $ se utiliza para indicar final de línea

^ ------------- $

## Locaciones

Esta clase nos va a servir para ver unos tips comunes de qué hacer y sobre todo qué no hacer con expresiones regulares, usando como ejemplo datos de posicionamiento en el mapa: latitud y longitud.

	^\-?\d{1,3}[\. ]\d{1,6}[,'] ?\d{1,3}[\. ]\d{1,6}[,"][W,ESN]?[,]?[]?(\-?\d{1,3}[\.]\d{1,6}		
	[,'] ?\d{1,3}[\. ]\d{1,6}[,"][W,ESN]?[,]?[ ]?)?(\d{1,6}\.\d{1,3})?$

### enlaces de interes

Geolocalizacion con tres palabras: [what three words](https://what3words.com/)

## Logs

Las expresiones regulares son muy útiles para encontrar líneas específicas que nos dicen algo muy puntual dentro de los archivos de logs que pueden llegar a tener millones de líneas.

## URLs

Una de las cosas que más vamos a usar en la vida, seamos frontend o backend, serán directamente dominios o direcciones de internet; ya sea direcciones completas de archivo (una url) o puntualmente dominios para ver si es correcto un mail o no.

## Mails

Quedamos en que ya podemos definir URLs, y dentro de las URLs están los dominios. No es infalible, pero es muy útil para detectar la gran mayoría de errores que cometen los usuarios al escribir sus emails.

Practicaremos a fondo en la seccion del proyecto final.

## Búsqueda y reemplazo

Al igual que una navaja suiza, las expresiones regulares son una herramienta increíblemente útil pero tienes que darle la importancia y las responsabilidades adecuadas a cada una, ya que no son la panacea, no solucionan todos los problemas.
El uso más conveniente de las expresiones regulares es buscar coincidencias o matches de cadenas en un texto, y si es necesario, reemplazarlas con un texto diferente.

## Uso de REGEX para descomponer querys GET

Al hacer consultas a sitios web mediante el método GET se envían todas las variables al servidor a través de la misma URL.

La parte de esta url que viene luego del signo de interrogación ? se le llama query del request que es: variable1=valor1&variable2=valor2&... y así tantas veces como se necesite. Es importante practicar como extraer estas variables usando expresiones regulares.

## Explicación del Proyecto final

Vamos a utilizar un archivo de resultados de partidos de fútbol histórico con varios datos. El archivo es un csv de más de 39000 líneas diferentes.
Con cada lenguaje intentaremos hacer una solución un poquito diferente para aprovecharlo y saber cómo utilizar expresiones regulares en cada uno de los lenguajes.

Usaremos las expresiones regulares en:
Perl
PHP
Python
Javascript

Los archivos del proyecto final en sus diferentes soluciones los puedes encontrar en [proyecto_final](/proyecto_final)