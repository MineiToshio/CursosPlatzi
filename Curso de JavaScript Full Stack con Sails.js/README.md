# Curso de JavaScript Full Stack con Sails.js<!-- omit in toc -->

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

## Enlaces de Interés
* https://platzi.com/clases/javascript-pro/
* https://ration.io/
* https://github.com/mikermcneil/ration