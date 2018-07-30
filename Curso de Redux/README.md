# Curso de Redux<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
- [Componentes en Redux:](#componentes-en-redux)
  - [Stores](#stores)
  - [Actions](#actions)
  - [Reducers](#reducers)
- [Flujo de eventos de Redux](#flujo-de-eventos-de-redux)
- [3 Principios de Redux](#3-principios-de-redux)
- [Funciones Puras](#funciones-puras)
- [Instalando Redux](#instalando-redux)
- [Redux en React](#redux-en-react)
  - [Provider](#provider)
  - [Connect](#connect)
  - [Dispatch](#dispatch)
- [Recursos Complementarios](#recursos-complementarios)
- [Normalizando Datos](#normalizando-datos)
- [Enlaces de Interés](#enlaces-de-interés)

## Introducción

Redux fue creado por **Dan Abramov** para manipular los datos de una forma separada de la interfaz, similar a lo que hace webpack con la opción hot-reload

Redux es un contenedor del estado predecible para aplicaciones de JavaScript de frontend complejas.

## Componentes en Redux:

* **Store**: Es el centro y la verdad de todo, con métodos para actualizar, obtener y escuchar datos.
* **Actions**: Son bloques de información que envian datos desde la aplicación hacia el store.
* **Reducers**: Cambian el estado de la aplicación.

### Stores

Datos importantes del Store:

* Contiene el estado de la aplicación.
* Se puede acceder al estado con el método `getState()`
* Se puede actualizar el estado con el método `dispatch(action)`
* Escucha cambios con el método `subscribe(listener)`
* Deja de escuchar cambios retornando la función del método `subscribe(listener)`

El storage se importa de la siguiente forma:

```js
import { createStore } from'redux'
```

`createStore` es una función que recibe 3 parámetros:
* **Reducer**: Función pura que retorna el próximo estado.
* **PreloadState / InitialState**: Es el estado inicial de la aplicación, la primera carga, el llamado a una data. Puede ser cualquier tipo de dato.
* **Enhancer**: Función que puede extender redux con capacidades añadidas por librerías externas. Es opcional. Eg. Añadir las dev-tools

```js
const store = createStore(
  reducer,
  initialState,
  enhancer
)
```

Obtener el state:

```js
const state = store.getState();
```

### Actions

Datos importantes:

* Se envían usando el método `dispatch()` del store.
* Son la única fuente de información del store.
* Son objetos planos de JavaScript.

```js
store.dispatch({
  type: "ADD_SONG",
  payload: "despacito"
});
```

* **type**: Nombre de la acción. Este dato es obligatorio.
* **payload** (puede llamarse diferente): contiene la data de envío. Se recomienda siempre escribila como un objeto.

### Reducers 

Datos importantes:

* Es una [función pura](#funciones-puras).
* Puede haber más de un reducer en una aplicación pero solo debe haber un store.
* Devuelve el siguiente estado.

Qué no deben hacer los reducers:

* Modificar los argumentos recibidos
* Llamar a APIs (u otras tareas secundarias)
* Llamar a funciones no puras como Date.now(), Math.random()

```js
const reducer = function(state, action) {
  swtich(action.type) {
    case "ADD_SONG":
      return [...state, action.payload]
    default:
      return state
  }
}
```

`store.subscribe()` es una función que sirve como un listener para saber cuándo el store cambio y saber cuándo hay que volver a renderizar las vistas.

## Flujo de eventos de Redux

<div align="center">
  <img src="img/como-funciona-redux.png">
  <small><p>Flujo de eventos de una Aplicación con Redux</p></small>
</div>

* Se establece un **state** (estado) inicial con el que se crea originalmente el store mediante el método `createStore` de redux.
  
* El **state inicial** define los contenidos que se muestran en la **UI** mediante `store.getState()` y la una función de `render()`.
  
* Mediante los elementos de la UI se dispara un evento que se captura mediante un listener (como onsubmit) y que invoca al **store.dispatch()** con una acción específica.
  
* El reducer recibe la acción (type y payload) enviada mediante el `store.dispatch()` y genera un nuevo estado que remplazará al estado inicial (o anterior).
  
* El cambio del estado es detectado por el **store** y se ejecuta `store.subscribe(handle)` con la función (handle) que manejará lo que sucede cuando ha cambiado el estado.
  
* En la función (handle) recibida por `store.subscribe(handle)` se invoca la actualización de la UI a partir del nuevo estado creado.
  
* Queda establecido el **nuevo estado** (state) y queda de nuevo atento el evento (listener) en la UI.

## 3 Principios de Redux

1. **Única fuente de verdad**:
El estado de toda tu aplicación esta almacenado en un árbol guardado en un único store lo que hace mas fácil el proceso de depuración.  

   Por cada aplicación (especialmente las de tipo single page), deberías tener un solo store, excepto si tienes múltiples páginas, donde cada página por conveniencia pudiera manejar su propia store.

2. **Solo Lectura**:
La única forma de modificar el estado es emitiendo una [acción](#actions), un objeto que describe qué ocurrió.

3. **Los cambios se realizan con funciones puras**:
Los reduces son [funciones puras](#funciones-puras) que toman el estado anterior y una acción, y devuelven un nuevo estado.

## Funciones Puras

Las funciones puras son un concepto de programación funcional que hace que el código sea más legible. 

**Tienen las siguientes condiciones**:

1. Dados los mismos datos de entrada, deben retornar el mismo resultado sin importar el número de veces que se llame.

   **Ejemplo**: Una función que realiza una suma siempre va a retornar el mismo resultado si se ingresan los mismos números como entrada.

   **Ejemplo 2**: Las funciones Math.random() o Date.now() siempre retornan un resultado diferente y, por ende, no pueden ser consideradas como funcionales.

2. No debe tener objetos secundarios.

## Instalando Redux

```
npm install redux
```

Para integrar **Redux** con **React** es necesario instalar **React-Redux**.

```
npm install react-redux
```

## Redux en React

### Provider

Provider es un **high order component** (hoc) que nos provee **react-redux** el cual nos sirve para heredar elementos a los componentes hijos.

```js
import { Provider } from "react-redux";
```

Y para usarlo

```js
<Provider store={store}>
  <Componente />
</Provider>
```

### Connect

Para poder recibir los datos del store que se envían en el provider se va a usar `connect`.

Para usar connect, primero se tiene que importar.

```js
import { connect } from "react-redux";
```

Luego se cambia el export del componente.

```js
function mapStateToProps(state, props) {
  return {
    categories: state.data.categories
  }
}

export default connect(mapStateToProps)(Componente);
```

### Dispatch

Al utilizar el método [connect](#connect) enviamos de forma automática dispatch para ser utilizado en el componente.

```js
this.props.dispatch({
})
```

Solo los smartcomponents se deben conectar con redux

## Recursos Complementarios
* [Diapositivas del Curso](docs/redux.pdf)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>

## Normalizando Datos

La normalización tiene como objetivo evitar la redundancia de datos y haceer que acceder a esos datos sea más fácil.

<div align="center">
  <img src="img/normalizado-vs-no-normalizado.png">
  <small><p>Datos Normalizados vs Datos no Normalizados</p></small>
</div>

La normalización permite que cada entidad esté separada de tal manera las iteraciones se realicen a nivel de entidad y no tener que estar revisando todas una entidad padre para realizar una operación en una entidad hijo.

Por ejemplo, en el caso de la foto anterior, si se desea buscar un media en todas las *medias* de las *categories*, habría que iterar en cada *playlist* de cada *category* por lo cual habría que hacer una doble iteración.

Con la normalización de datos, se formaría un array de *medias* y los *playlists* solo guardarían el id de cada *media* de tal manera que solo habría que realizar una iteración de querer realizar una operación en todos los *medias*.

Para normalizar datos se va a usar [normalizr](https://github.com/paularmstrong/normalizr)

```bash
$ npm install normalizr
```

Considerando quu se tiene la siguiente estructura como dato de entrada:

```json
{
  "categories": [
    {
      "id": "1",
      "description": "Lo mejor de la semana",
      "title": "Destacados",
      "playlist": [
        {
          "title": "¿Qué es responsive Design?",
          "author": "LeonidasEsteban",
          "type": "video",
          "cover": "./images/covers/responsive.jpg",
          "src": "http://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4",
          "id": "1"
        }
      ]
    }
  ]
}
```

```jsx
import api from 'api.json';
import { normalize, schema } from 'normalizr';

// schema.Entity(key, definición de mi esquema, opciones);

// Entidad hijo
const media = new schema.Entity('media', {}, {
  //se indica cuál es el atributo de id
  idAttribute: 'id', 
  //se asocia el id de la entidad padre
  processStrategy: (value, parent, key) => ({...value, category: parent.id}) 
});

const category = new schema.Entity('categories', {
  //se indica que playlist es una entidad de media
  playlist: new schema.Array(media)
});

// Entidad principal
const categories = { categories: new schema.Array(category) };

//normalize(datos a normalizar, entidad principal)
const normalizedData = normalize(api, categories);

export default normalizedData;
```

## Enlaces de Interés
* [Curso de Redux](https://platzi.com/clases/redux/)
* [Redux Devtools Extension](https://github.com/zalmoxisus/redux-devtools-extension)
* [React Redux](http://github.com/reactjs/react-redux)
* [normalizr](https://github.com/paularmstrong/normalizr)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>