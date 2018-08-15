# Curso de CSS Grid Layout<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Conceptos Fundamentales](#conceptos-fundamentales)
- [Propiedades](#propiedades)
- [Áreas](#Áreas)
- [Nombre a las líneas](#nombre-a-las-líneas)
- [Grid Implícito](#grid-implícito)
- [Alinear Grid Items](#alinear-grid-items)
- [Alinear el Grid](#alinear-el-grid)
- [Funciones](#funciones)
- [Recursos Complementarios](#recursos-complementarios)
- [Enlaces de Interés](#enlaces-de-interés)

## Conceptos Fundamentales

* **Grid Container**: va a ser el elemento padre que va a tener puesto un nuevo tipo de display: grid. Nos permite colocar otras propiedades para manipular nuestro layaout.
* **Grid Item**: Son hijos directos de grid. Son nuestro componentes, contenido, lo que vamos a manejar. Nuestras filas o columnas que vamos a mover a nuestro gusto. 
* **Grid Line**: Lineas divisorias horizontales y verticales.
* **Grid Track**: Espacio entre dos líneas adyacentes. Filas y columnas.
* **Grid Cell**: Celdas, espacio en dos filas adyacentes y 2 columnas adyacentes.
* **Grid Area**: Espacio rodeado por 4 grid lines

**Grid explicito** (explicit grid) es cuando nosotros definimos el numero de filas o columnas.

**Grid implicito** (implicit grid) es cuando tenemos filas o columnas que no definimos pero son parte de nuestro grid.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Propiedades

**grid-template-columns**: define el numero de columnas en un grid layout, así como el tamaño en ancho de cada columna.

```css
grid-template-columns: 200px 200px 200px;
```

**grid-template-rows**: Para definir las filas.

```css
grid-template-rows: valores;
```

**grid-template**: Definir filas y columnas:

```css
grid-template: filas / columnas;
```

**Display subgrid** para heredar la configuración del grid padre (cuando se esten anidando grids).

```css
display: subgrid; //No disponible aun
```

**Display inline-grid** muestra el grid en una sola linea:

```css
display: inline-grid; //No disponible aun
```

**grid-column-gap** Espaciado entre columnas

```css
grid-column-gap: value; 
```

**grid-row-gap** Espaciado entre filas

```css
grid-row-gap: value; 
```

**grid-gap** Espaciado entre filas y columnas

```css
grid-gap: rows columns;
```

**fr (fracciones)** Unidad de medida. Distrubuye el espacio disponible en formas iguales.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Áreas

Si vamos a usar área en más de una columna colocamos el mismo donde del área donde la queramos.

```css
grid-template-areas: "header header" 
                     "left contenido" 
                     "footer footer";
```

Para usar las áreas

```css
.header {
  grid-area: header:
}
```

**grid-column**: Define cuántos espacios de columna va a tomar un grid item. El inicio toma desde la primera línea del grid. 

```css
grid-column-start: 1;
grid-column-end: 3;
grid-column: inicio / final;
```

Para definir por fracciones (columnas): `span #fracciones`

Para usar el espacio de toda la fila usamos -1 al final.  
**Ejemplo**: `grid-column: 1/ -1;`

**grid-row**: Define cuántos espacios de fila va a tomar un grid item. El inicio toma desde la primera línea del grid. 

```css
grid-row-start: 1;
grid-row-end: 3;
grid-row: inicio / final;
```

Para definir por fracciones (columnas): `span #fracciones`
Para usar el espacio de toda la fila usamos -1 al final.  
**Ejemplo**: `grid-column: 1/ -1;`

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Nombre a las líneas

Para definir las líneas se definen en el grid-template y se ponen los nombres entre [].

```css
grid-template-columns: [inicio] 1fr [linea2] 1fr [final];
grid-template-rows: [inicio] 200px [inicio2] 200px [final];
```

Luego para usarlos es en el grid-column y grid-row

```css
grid-column: destacado-end / destacado2-end;
grid-row: inicio / final;
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Grid Implícito

Para cambiar el flujo automático de mi grid:

```css
grid-auto-flow: column;
```

Por defecto viene grid-auto-flow: row;

Para asignar el valor por defecto de el espacio de las columnas o filas que no han sido asignadas:

```css
grid-auto-columns: valores;
grid-auto-rows: valores;
```

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Alinear Grid Items 

Para alinear contenido, en el contenedor grid agregar:

```css
justify-items: valor; /*para alineación horizontal*/
align-items: valor; /*para alineación vertical*/
```

Los valores que toman por defecto es stretch el cual hace que tomen todo el valor asignado en la fila o columna.

Para asignar la alineación de un solo elemento, agregar las siguientes propiedades en el grid item a modificar:

```css
align-self: valor;
justify-self: valor;
```

Los valores que se pueden usar son los siguientes:
* **Stretch**: Estira el contenido al espacio que nos de el grid.
* **Start**: Coloca el contenido hacia el inicio(izquierda), y los elementos ocupan el ancho que tienen de contenido.
* **End**: Coloca el contenido hacia la derecha, igual que start los elementos ocuparán el ancho que tienen de contenido.
* **Center**: Los elementos quedarán al centro de la pantalla.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Alinear el Grid

Para alinear el contenido de filas y columnas:

```css
justify-content: valor; /*Para alineación horizontal*/
align-content: valor; /*Para alineación vertical*/
```

Estos son los valores que se pueden usar:
* **start**: Todo el grid se alinea a la izquierda
* **center**: Todo el grid se alinea al centro 
* **end**: Todo el grid se alinea a la derecha
* **stretch**: Cambia el tamaño de los grid items para que el llenen el ancho máximo del contenedor grid. 
* **space-around**: Los items tienen el mismo espacio a su alrededor.
* **space-evenly**: Hay un espacio mas homogeneo entre items.
* **space-between**: Hay un mismo espacio entre items pero se eliminan el espacio inicial y final.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Funciones

`repeat(cantidad de columnas, valor)` para usar el mismo valor varias veces.
`minmax(min, max)` agregar un valor mínimo y maximo para el tamaño al hacer responsive.

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Recursos Complementarios
* [Proyecto Smart Contracts](docs/css-grid-layout.pdf)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Enlaces de Interés
* [Curso de CSS Grid Layout](https://platzi.com/clases/css-grid-layout)
* [A Complete Guide to Grid](https://css-tricks.com/snippets/css/complete-guide-grid/)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>