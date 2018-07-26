# Curso de JavaScript Full Stack con Sails.js<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Las tecnologías de Sails](#las-tecnologías-de-sails)
- [Configuración de VS Code](#configuración-de-vs-code)
- [Instalar Sails](#instalar-sails)
- [Crear una aplicación con Sails](#crear-una-aplicación-con-sails)
- [Arquitectura Backend](#arquitectura-backend)
- [Comandos](#comandos)
- [Enlaces de Interés](#enlaces-de-interés)

## Las tecnologías de Sails

* [Javascript (ECMA Script 8)](https://developer.mozilla.org/bm/docs/Web/JavaScript) El lenguaje de la web.
* [NodeJS](https://nodejs.org/en/) JavaScript en el backend.
* [SailsJS](https://sailsjs.com/) Framework MVC para for NodeJS.
* [VueJS](https://vuejs.org/) Frontend Framework.
* [Stripe](https://stripe.com/) Procesador de pagos.
* [Mailgun](https://www.mailgun.com/) Automatización de emails.
* [Heroku](https://www.heroku.com/) Platform as a Service que permite correr y operar aplicaciones en la nube.

## Configuración de VS Code

Archivo de configuración:
```
{
  "terminal.integrated.shell.windows": "C:\\Program Files\\Git\\bin\\bash.exe",
  "files.exclude": {
    "**/.git": true,
    "**/.svn": true,
    "**/.hg": true,
    "**/CVS": true,
    "**/.DS_Store": true,
    "node_modules": true,
    "**/.tmp": true,
    "package-lock.json": true
  },
  "editor.formatOnPaste": true,
  "window.zoomLevel": 0,
  "files.associations": {
    ".eslintrc": "jsonc"
  }
}
```

keybindings.json (Tuerca -> Keyboard Shortcuts -> keybindings.json)
```
[
  {
    "key": "ctrl+v",
    "command": "pasteAndIndent.action",
    "when": "editorTextFocus && !editorReadonly"
  },
  { 
    "key": "ctrl+shift+v",               
    "command": "editor.action.clipboardPasteAction",
    "when": "editorTextFocus && !editorReadonly" 
  },
  {
    "key": "ctrl+v",
    "command": "-editor.action.clipboardPasteAction",
    "when": "editorTextFocus && !editorReadonly"
  }
]
```

Extensiones:

* **EJS Language Support** añade soporte para archivos .ejs
* **Less IntelliSense** soporte para archivos .less
* **ESLint** revisa errores

Además se debe de instalar ESLint globalmente

```bash
npm install eslint -g
```

## Instalar Sails

```bash
npm install sails -g
```

## Crear una aplicación con Sails

```bash
sails new [app]
```

Se van a mostrar 2 opciones:
1. **Web App** para un proyecto con auth, login y password recovery
2. **Empty** una app en Sails sin configuración.

`sails lift` para levantar el servidor y correr la aplicación. 

## Arquitectura Backend



## Comandos

* `sails new [app]` crea una app en sails
* `sails lift` levanta el servidor

## Enlaces de Interés
* [Curso de JavaScript Full Stack con Sails.js](https://platzi.com/clases/javascript-pro/)
* [Ration](https://ration.io/)
* [Github: Ration](https://github.com/mikermcneil/ration)