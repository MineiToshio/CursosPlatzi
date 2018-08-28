# Curso de MEAN<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [¿Qué es MEAN?](#qué-es-mean)
- [Angular](#angular)
  - [TypeScript:](#typescript)
  - [Developer Experience de Angular:](#developer-experience-de-angular)
  - [Instalación y Configuración de Entorno](#instalación-y-configuración-de-entorno)
  - [Angular Material](#angular-material)
  - [Estructura de los Archivos](#estructura-de-los-archivos)
  - [Componentes](#componentes)
  - [Modelos](#modelos)
  - [Angular Moment](#angular-moment)
- [Enlaces de Interés](#enlaces-de-interés)

## ¿Qué es MEAN?

MEAN es uno de los Stacks tecnológicos más utilizados para crear Single Page Applications:

* **MongoDb** para la base de datos.
* **Express** como framework backend corriendo en Node.js.
* **Angular** para el frontend.
* **Node.js** es nuestro servidor web, encargado de escuchar las peticiones de los usuarios y responderle con los datos que requieran.
  * Configurar sus rutas
  * Proteger los recursos
  * Servir archivos estáticos

Estas tecnologías son muy sencillas de combinar: todo está escrito en JavaScript, incluso la base de datos guarda colecciones con objetos en JSON.

<div align="center">
  <img src="img/mean-stack.jpg">
  <small><p>Stack de MEAN</p></small>
</div>

## Angular

* Es un framework para Frontend.
* Tiene la opción actualmente de correrlo desde el Backend y poder reutilizar el código.
* Nos permite organizar los archivos que vamos a tener y de separar las responsabilidades de cada archivo. Nos permite separar en componentes reutilizables nuestra aplicación.
* Este framework, de lo que más se va a tratar es de componentes. Los componentes son unidades visuales reutilizables y con cierto comportamiento definido.
* Otra cosa que nos va a solucionar Angular, es el routing, es decir, el sistema de ruteo.
* Angular nos va a dar también los services. son maneras de conectarnos con el Backend, desde ahí vamos a pedir ciertos datos que necesita el Frontend para mostrar en la pantalla.
* Angular ofrece un sistema de templates. Cada componente va a tener asociado un template o vista que va a ser la estructura HTML que tenga.
* Desde Angular es posible que podamos definir nuestras propias etiquetas para definir los componentes reutilizables.
* Otra cosa que nos permite Angular son los modules o módulos. Son librerías enteras con componentes y directivas ya armadas o preestablecidas. Un ejemplo es Material Angular que es la que vamos a estar utilizando para nuestro proyecto del curso.
* CLI = Command Line Interface o Interfaz de Línea de Comandos.
* Google está detrás de Angular. Son los desarrolladores de Google quienes le dan soporte a esta librería Open Source.
* Angular es muy adaptado y tiene una comunidad muy grande alrededor.

### TypeScript:

* Es un super set de JavaScript. nos va a ayudar a expandir un poco las capacidades de JavaScript, va incorporar un chequeo de tipos para corrección de errores.
* Es una tecnología ideal para trabajo en proyectos en equipo.

### Developer Experience de Angular:

Uno de los puntos a favor es que cada vez que hagamos cambios en nuestros archivos se van a ver reflejados en nuestro navegador de forma automática sin tener que recompilar a mano y sin tener que refrescar.

### Instalación y Configuración de Entorno

Instalar el CLI de Angular

```bash
$ npm i -g @angular/cli
```

Para crear un proyecto, ir a la carpeta y escribir lo siguiente:

```bash
$ ng new [proyecto]
```

Para correr la aplicación:

```bash
$ ng serve
```

### Angular Material

Angular Material son componentes basados en Material Design para Angular.

**Paso 1: Instalar las dependencias**

```bash
$ npm i @angular/material @angular/cdk
```

Para instalar las animaciones de Angular Material:

```bash
$ npm i @angular/animations
```

**Paso 2: Configurar las animaciones**

Para habilitar las animaciones, se debe de importar el paquete en la aplicación:

```js
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';

@NgModule({
  // ...
  imports: [BrowserAnimationsModule],
  // ...
})
export class AppModule { }
```

**Paso 3: Importar los módulos de los componentes**

Para importar los módulos, se va a crear un archivo llamado **material.module.ts**. Ahí se van a agregar todos los módulos que se desean importar.

```js
import { NgModule } from '@angular/core';
import { MatButtonModule, MatCheckboxModule } from '@angular/material';

const modules = [
  MatButtonModule,
  MatCheckboxModule
]

@NgModule({
  imports: modules,
  exports: modules
})

export class MaterialModule {}
```

Luego, se va a importar el archivo creado en el módulo principal de la aplicación.

```js
import { MaterialModule } from './material.module';

@NgModule({
  //...
  imports: [
    MaterialModule
  ]
  //...
})

export class AppModule { }
```

**Paso 4: Incluir un theme**

El theme se va a encargar de aplicar todos los estilos básicos a la aplicación. Para esto, solo se debe de agregar el theme en el archivo **styles.css**.

```js
@import "~@angular/material/prebuilt-themes/indigo-pink.css";
```

**Paso 5: Soporte de gestos**

Algunos componentes requieren HammerJS para realizar gestos en los dispositivos táctiles. 

```bash
$ npm i hammerjs
```

Luego de instalarlos, solo se debe de importar en el módulo principal (ej. `app.module.ts`).

```js
import 'hammerjs';
```

**Paso 6: Agregar íconos de material**

Para usar los íconos de Material Design, se debe de agregar la fuente de el **index.html**.

```html
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
```

### Estructura de los Archivos

Existen dos maneras de organizar la estructura de los archivos dentro de nuestro proyecto:

1. Siguiendo la funcionalidad de cada uno de los archivos.
2. Tenemos ciertos modelos, ciertas pantallas, ciertos componentes o ciertos servicios. Podemos ir almacenando todo en una carpeta según el tipo.

### Componentes

Para crear un componente, se va a crear un archivo con la siguiente nomenclatura: **mi-componente.component.ts**.

```js
import { Component } from '@angular/core';

@Component({
  selector: 'app-mi-componente',
  templateUrl: './mi-componente.component.html'
})

export class MiComponenteComponent {}
```

El html del componente se va a escribir en `mi-componente.component.html`.

```html
<div>hola mundo</div>
```

Para usar el componente, se debe de importar dentro del componente principal.

```js
import { MiComponenteComponent } from './mi-componente.component';

@NgModule({
  //...
  declarations: [
    MiComponenteComponent
  ]
  //...
})

export class AppModule { }
```

Luego se puede usar en el html de la siguiente manera:

```js
<app-mi-componente></app-mi-componente>
```

### Modelos

Los modelos se van a escribir en un archivo aparte. Por ejemplo: **question.model.ts**.

```js
export class Question {
  title: string;
  description: string;
  createdAt?: Date;
  icon?: string;

  constructor(
    title: string,
    description: string,
    createdAt?: Date,
    icon?: string
  ) {
    this.title = title;
    this.description = description;
    this.createdAt = createdAt;
    this.icon = icon;
  }
}
```

Para consumir el modelo dentro del componente, hacerlo de la siguiente manera:

```js
import { Question } from './question.model';

//...

export class QuestionDetailComponent {
  question: Question = new Question(
    'Esta es una nueva pregunta sobre Android',
    'Miren, tengo una dura con una aplicación que estoy escribiendo para Android',
    new Date,
    'devicon-android-plain'
  );
}
```

### Angular Moment

**ngx-moment** es una librería que nos permite saber la temporalidad de las acciones en las aplicaciones.

```bash
$ npm i moment ngx-moment
```

Luego de instalarlo, se debe de impotar en el módulo de la aplicación:

```js
import { MomentModule } from 'ngx-moment';

@NgModule({
  imports: [
    MomentModule
  ]
})
```

Se usa en el html por medio de los pipes:

```html
 <div>{{question.createdAt | amTimeAgo}}</div>
```

Si se quiere cambiar el idioma a español, primero se debe de importar el idioma en el app component.

```js
import 'moment/locale/es';
```

Y para consumirlo se hace de la siguiente forma:

```html
 <small>{{question.createdAt | amLocale:'es' | amTimeAgo}}</small>
```


## Enlaces de Interés
* [Curso de MEAN](https://platzi.com/clases/mean/)
* [Angular](https://angular.io/)
* [Angular Material](https://material.angular.io/)
* [Dev Icon](http://konpa.github.io/devicon/)
* [Ngx Moment](https://github.com/urish/ngx-moment)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>