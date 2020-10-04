# Fundamentos de TypeScript

## Tabla de Contenido
- [Fundamentos de TypeScript](#fundamentos-de-typescript)
- [Que es TypeScript](#que-es-typescript)
- [Porque usar TypeScript](#porque-usar-typescript)
- [Compilador de TypeScript](#compilador-de-typescript)
- [Archivo de configuración tsconfig.json](#archivo-de-configuraci%C3%B3n-tsconfigjson)
- [Tipos de datos](#tipos-de-datos)
- [Unión de tipos](#uni%C3%B3n-de-tipos)
- [Alias de tipos](#alias-de-tipos)
- [Tipos literales](#tipos-literales)
- [Aserciones de tipo](#aserciones-de-tipo)
- [Funciones en TypesScript](#funciones-en-typesscript)
- [Interfaces](#interfaces)
- [Clases](#clases)
- [Herencia de Clases y miembros protegidos](#herencia-de-clases-y-miembros-protegidos)


### Que es TypeScript

Es un superconjunto tipado de javascript, que compila a javascript.

**Lenguaje de programación tipado:** Posee un conjunto de tipos para poder usarlos con las variables, pudiendo personalizarlos o extenderlos.

**Lenguaje de alto nivel:** Entendible por humanos y posee un alto nivel de abstracción del código máquina.

**Genera como resultado código JavaScript**: Emite código javascript compatible con browsers y otras herramientas de javascript.

**Código abierto.**

**Desarrollo desde cualquier sistema.**

**El código puede ejecutarse en cualquier navegador o plataforma que soporte javascript.**

### Porque usar TypeScript

- Programación orientada a objetos
- Potenciar tu código JavaScript
- Mayor productividad
- Poderoso sistema de tipos
- Compila a ES5, ES6 y más
- Proyecto muy activo/Open source
- Actualizaciones periódicas
- Comunidad creciente
- Puede prevenir cerca del 15% de bugs
- Puede usar TypeScript para backend

### Compilador de TypeScript

**Instalación**

`npm install -g typescript`

Verificar versión

`tsc —version o tsc -v`

### Archivo de configuración tsconfig.json

- Especifica la raiz de un proyecto TypeScript
- Permite configurar opciones para el compilador

**Configuración de tsconfig.json**

`tsc --init` Crear el archivo de configuración.

### Tipos de datos

**Tipos primitivos**

- Number: Se puede definir valores de *punto flotante*, valores *numericos* pero desde EcmaScript 2015 se incluyen valores *hexadecimales*, *binarios* y *octales*.
- Boolean
- String
- Array
- Tuple: Las tuplas permiten expresar un arreglo con un número fijo de elementos. Los tipos de datos son conocidos.

    ```tsx
    // Declaración de una tupla
    let user: [number, string, boolean];
    user = [1, 'Ariel', true];

    //Declarar un arreglo de tuplas
    let arregloTuplas: [number, string][] = [];
    arregloTuplas.push([1, 'Ariel']);
    arregloTuplas.push([2, 'Ayala']);
    ```

- Enum

    Los enumerados permiten definir un conjunto de constantes con nombre.

    Tiene la ventaja de adaptarse al contexto de la aplicación.

    ```tsx
    enum Country {
    	Bolivia = 'bol',
    	Colombia = 'col',
    	Mexico = 'mex',
    	EEUU = 'usa'
    }
    const country: Country = Coutry.Colombia;
    ```

- Any
- Void
- Null
- Undefined
- Never

    Representa el tipo de valor que nunca ocurre

    - Funciones que lanzan excepciones
    - Funciones que nunca retornan un valor
- Object

**StricNullChecks**

Se utiliza para verificar asignaciones de valores null en el código.

Ejemplo: `tsc -watch src/main.ts —strictNullChecks`

Otra forma es configurar el *tsconfing.json*, los siguientes parámetros:

*"strict": true*

*"strictNullChecks": true*

### Unión de tipos

Se puede definir una variable con múltiples tipos de datos: *Union Type*. 

Se usa el símbolo de pipe ('|') entre los tipos.

```tsx
// 10, '10'
let idUser: number | string;
idUser = 10;
idUser = '10';

// Buscar username dado un ID
function getUserNameById(id: number | string) {
	//Logica de negocio
	return 'textoPorEjemplo'
}

getUserNameById(20);
getUserNameById('20');
```

### Alias de tipos

Permite crear un alias como nuevo nombre para un tipo, el alias se puede aplicar también a un conjunto o combinación de tipos. Se usa la palabra reservada `type`.

```tsx
type IdUser = number | string;
let idUser: IdUser;
type Username = string;

idUser = 10;
idUser = '10';

function getUserNameById(id: number | string): Username {
	//Logica de negocio
	return 'textoPorEjemplo'
}
```

### Tipos literales

Una variable con un tipo literal puede contener únicamente una cadena del conjunto. Se usan cadenas como 'tipos', combinados con el símbolo de pipe ('|') entre ellos.

```tsx
// 100x100, 500x500, 1000x1000
type Square = '100x100' | '500x500' | '1000x1000';
// let smallPicture : SquareSize = '200x200'; //Error
let smallPicture : SquareSize = '100x100'; 
let smallPicture : SquareSize = '500x500'; 
let smallPicture : SquareSize = '1000x1000'; 
```

### Aserciones de tipo

Permite convertir tipos de datos en algo que nosotros mejor conocemos. 

Se parece al casting de tipos en otros lenguajes.

Usa dos sintaxis: *<Angle Bracket>* y *(variable as tipo)*.

```tsx
// <tipo> // Angle Bracket syntax
let username: any;
username: 'Ariel';

//tenemos una cadena, TS confia en mi.
let message: string = (<string>username).length > 5 ? 
											'Welcome' + username :	
											'Username is too short';
console.log('message', message);
```

```tsx
let usernameWithId: any = 'ariel 1';
// Como obtener el username ?
username = (string>usernameWithId).substring(0, 10);
console.log('Username', username);
```

```tsx
// Sintaxis "as"
message = (username as string).length > 5 ? 
											'Welcome' + username :	
											'Username is too short';
console.log('message', message);

```

### Funciones en TypesScript

- Los parámetros en la funciones son tipados .
- Se pueden definir parámetros opcionales.
- El tipo de retorno puede ser un tipo básico, enum, alias, tipo literal o combinación de ellos.

```tsx
type SquareSize = '100X100' | '500X500' | '1000X1000'

// Usando TypeScript, definimos tipos de parametros
function createPicture(title: string, date: string, size: SquareSize) {
	// Se crea la fotografia
	console.log(Picture created, title, date, size):
}

// Parametros opciones en funciones
function createPicture(title?: string, date?: string, size?: SquareSize) {
	// Se crea la fotografia
	console.log(Picture created, title, date, size):
}

// Flat array functions
let createPicture = (title: string, date: string, size: SquareSize): object => {
	return {
		title,
		date,
		size
	}
};
```

### Interfaces

Constituyen una forma poderosa de definir "contratos", tanto para tu proyecto, como para el código externo del mismo.

**Interfaces - Propiedades opciones**

```tsx
interface User {
	readonly id: number,
	username: string,
	isPro: boolean
}
```

Extensión de interfaces

```tsx
interface Entity {
	id: number;
	title: string;
}
interface Album extends Entity {
	
}
```

### Clases

A partir de ECMAScript 215 es posible construir clases y hacer uso del paradigma de la POO en JavaScript. TypeScript permite aplica estas técnicas sin tener que esperar por otra versión.

```tsx
class Picture {
	// Propiedades
	public id: number;
	public title: string;
	public orientation: PhotoOrientation

	constructor(id: number, title: string, orientation: PhotoOrientation) {
		this.id = id;
		this.title = string;
		this.orientation = orientation;
	}

	//Comportamiento
	public toString() {
		return `[id: ${this.id}, 
						title: ${this.title},
						orientation: ${this.orientation}]`
	}
}

class Album {
	public id: number;
	public title: string;
	public pirctures: Picture[];

	constructor(id: number, title: string) {
		this.id: id;
		this.title: title;
		this.pictures: []
	}

	public addPicture(picture: Picture) {
		this.pictures.push(picture);
	}
}

const album: Album = new Album(1, 'Personal Pictures');
const picture: Picture = new Picture(1, 'Platzi session', PhotoOrientation.Square);
album.addPicture(picture);
console.log(album);
```

**Clases públicas y privadas**

TypeScript define un modificador de acceso público por defecto para los miembros de clase.

También es posible marcar un miembro como público usando la palabra reservada *public*.

```tsx
//Accediendo a los miembros públicos
picture.id = 100; // public
picture.title = 'Another title'; // public
album.title = 'Personal Activities';
```

TypeScript define una manera propia de de declarar o marcar como privado usando la palabra reservada *private*.

TypeScript también soporta (a partir de la versión 3.8) la nueva sintaxis JavaScript para miembros privados: #atributo

**Métodos get y set**

TypeScript soportar los metodos  accesores set y get como una forma de interceptar los accesos a los miembros privados de un objeto.

```tsx
class Picture {
	// Propiedades
	private _id: number;
	private _title: string;
	private _orientation: PhotoOrientation

	constructor(id: number, title: string, orientation: PhotoOrientation) {
		this._id = id;
		this._title = string;
		this._orientation = orientation;
	}

get id() {
	return this._id;
}

set id(id: number) {
	this._id = id;
}

get title() {
	return this._title;
}

set id(title: string) {
	this._title = title;
}

get title() {
	return this._orientation;
}

set id(o: PhotoOrientation) {
	this._orientation = o;
}

	//Comportamiento
	public toString() {
		return `[id: ${this.id}, 
						title: ${this.title},
						orientation: ${this.orientation}]`
	}
}
```

### Herencia de Clases y miembros protegidos

Se puede implementar la habilidad de extender código de clases a  través de la **herencia**.

```tsx
class Item {
	protected _id: number;
	protected _title: string;

	constructor(id: number, title: string) {
		this._id : id;
		this._title: title;
	}
	
	get id() {
		return this._id;
	}
	
	set id(id: number) {
		this._id = id;
	}

	get title() {
		return this._title;
	}

	set id(title: string) {
		this._title = title;
	}

}

class Picture extends Item {
	private orientation: PhotoOrientation;

	constructor(id: number, title: string, orientation: PhotoOrientation) {
		super(id, title); // Constructor de la superclase
		this.orientation: orientation;
	}
}
```

**Clases abstractas**

Son la base de donde  otras clases podrían derivarse. A diferencia de una interfaz, una clase abstracta puede implementar funciones para sus instancias.

**Propiedades estáticas y propiedades de solo lectura**

Al igual que las interfaces, podemos usar la palabra reservada readonly para marcar el miembro de una clase como solo lectura.