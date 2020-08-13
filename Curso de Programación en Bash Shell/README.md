# Curso de Programación en Bash Shell
## Tabla de contenido
- [Curso de Programación en Bash Shell](#curso-de-programación-en-bash-shell)
  - [Tabla de contenido](#tabla-de-contenido)
  - [Componentes de Linux, Tipos de Shell y Comandos de información](#componentes-de-linux-tipos-de-shell-y-comandos-de-información)
  - [Bash Scripting](#bash-scripting)
    - [Preparación del archivo `~/.vimrc`](#preparación-del-archivo-vimrc)
  - [Declaración de Variables y Alcance en Bash Shell](#declaración-de-variables-y-alcance-en-bash-shell)
    - [Variables de entorno](#variables-de-entorno)
    - [Variables de usuario](#variables-de-usuario)
  - [Argumentos](#argumentos)
    - [Script con Argumentos](#script-con-argumentos)
    - [Sustitución de Comandos en variables](#sustitución-de-comandos-en-variables)
  - [Debug en Script](#debug-en-script)
  - [Capturar información usuario](#capturar-información-usuario)
  - [Expresiones Regulares](#expresiones-regulares)
  - [Validar información](#validar-información)
  - [Operadores relacionales](#operadores-relacionales)
## Componentes de Linux, Tipos de Shell y Comandos de información

Linux tiene 3 partes principales:

- **Kernel**: Es el núcleo del Sistema Operativo y se gestionan los recursos de hardware como la memoria, el procesamiento y los dispositivos periféricos conectados al computador.
- **Shell**: Es el interprete, un programa con una interfaz de usuario permitiendo ejecutar las aplicaciones en un lenguaje de alto nivel y procesarlas en un lenguaje de bajo nivel para manipular y controlar aplicaciones y programas como nuestro proyecto.
- **Aplicaciones**: Son las aplicaciones con las que interactuamos día a día.

Tipos de Shells:
- SH
- KSH
- CSH
- BASH

Algunos comandos para conocer información sobre el resto de comandos:

- `man [comando]`
- `info [comando]`

## Bash Scripting

La idea básica de generar programas en *bash* es poder ejecutar múltiples comandos de forma secuencial en muchas ocasiones para automatizar una tarea en especifico. Estos comandos son colocados en un archivo de textos de manera secuencial para poder ejecutarlos a posterioridad.

Un archivo `.vimrc` podremos configurar de mejor manera nuestro editor VIM.

### Preparación del archivo `~/.vimrc`

```vim
set showmode
set autoindent
set tabstop=4
set expandtab
syntax on
```

## Declaración de Variables y Alcance en Bash Shell

### Variables de entorno
Ayudan a obtener infromacion del sistema, almacenar informacion temporal y modificar su informacion. Existen 2 tipos:

- **Variables Globales**: Son visibles desde el *shell* que lo creo o desde cuaquier hijo de esa *shell*.
- **Variables Locales**: Son visibles solo desde el *shell* que la creo.
- **Variable Persistente**: Para crear una de estas es necesario introducirla en el archivo `/etc/profile` pero en el caso de los derivados debian si revisamos un poco el script nos damos cuenta que llama a otro archivo llamado `/etc/bash.bashrc` en el cual podemos crear las variables de entorno persistentes.

Por eso no funciona llamar la variable declarada en `/etc/profile` desde un shell

### Variables de usuario
Son las variables que se corren dentro de un script como en cualquier programa de computadora C, C++ o Java.

- **Variable global**: Se puede usar desde otro script siempre y cuando sea llamado desde el script que contiene la variable.
- **Variable local**: Solo tiene alcance en el script que la creo.

## Argumentos
### Script con Argumentos
Hay algunos identificadores para cuando ejecutamos un script con argumentos:

| Identificador | Descripción |
| :------------ | :---------- |
| `$0` | Se refiere al nombre del Script. |
| `$1` al `${10}` | Se refiere al número de argumento. Si es más de uno lo colocamos dentro de llaves. |
| `$#` | Es útil para conocer el número de argumentos enviados. |
| `$*` | Con este podemos conocer todos los argumentos enviados. |

### Sustitución de Comandos en variables
Para la sustitución de comandos es importante tener en cuenta que el resultado servirá para realizar otras tareas de otras sentencias de nuestro programa.

Las dos maneras de hacerlo:

1. Usando el backtick caracter. (`)
2. Usando el signo de dólar con el formato `$(comando)`

## Debug en Script
Hay dos opciones para realizar el debug en `bash`:

- `bash -v`: Te muestra el script y sus valores evaluados.
- `bash -x`: Te muestra el script. valores evaluados y especifica cuales son entradas y salidas.

## Capturar información usuario
Para poder capturar información tenemos dos formas dentro de un programa Bash.

- Utilizando en conjunto con el comando `echo`.
- Utilizando directamente el comando `read`.

Unas de las opciones más utilizadas para Read

- `-p`: Permite ingresar una frase o *prompt* antes de pedir el dato.
- `-s`: Modo Sigiloso. No muestra ningún caracter en la terminal, útil para contraseñas o información sensible.
- `-n [num]`: Permite leer como máximo n caracteres.
- `-r`: Toma el botón de retroceso o backspace como un caracter y no borra ningún otro caracter previamente escrito.

Ejemplo:

`read -ps "Ingrese su contraseña: " pass`

## Expresiones Regulares

Son cadenas de caracteres que definen un patrón de búsqueda que se valida frente a una información específica para asegurar que cumpla la validación definida.

| Expresión | Descripción |
| :------: | :---------- |
| `^` | Inicio de la expresión regular. |
| `$` | Final de la expresión regular. |
| `*` | Cero o más ocurrencias de la expresión. |
| `+` | Representa una o más ocurrencias de la expresión. |
| `{n}` | "n" veces de una expresión. |
| `[ ]` | Representa un conjunto de caracteres, por ejemplo: `[a-z]` representa las letras del abecedario de la "a" a la "z". |

Tomando en cuenta estos criterios se realizará un programa que valida la siguiente información:

Número de Identificación de un tamaño de 10 números. 
> 1717836520

País de Origen denotado por dos letras en un rango específico. 
> EC, CO, US

Fecha de Nacimiento en el formato yyyyMMDD.
> 20181222

Primero se definirá las expresiones regulares y se solicitará la información del usuario:

```bash
# !/bin/bash
# Capturing user input and validating stuff on it

id_regex='^[0-9]{10}$'
country_regex='^EC|CO|US|MX$'
birth_regex='^(19|20)([0-9]{2})(0[1-9]|1[1-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])$'

echo "Expresiones regulares"
read -p "ID: " u_id
read -p "Country of origin [EC, CO, US, MX]: " u_country
read -p "Birth date [yyyyMMDD]: " u_bdate
echo""

```

Luego se validará cada expresión regular comenzando con la identificación, para lo cual para cada validación se utilizará la sentencia condicional if y para comparar la expresión se debe utilizar el siguiente formato especial `if [[ $variable =~ $expresionRegular ]]` como se muestra a continuación.

```bash
# Validación ID
if [[ $u_id =~ $id_regex ]]; then
	echo -e "ID ($u_id) - status:\t\t\tAPPROVED"
else
	echo -e "ID ($u_id) - status:\t\t\t\tDENIED (check format)"
fi

# Validación País
if [[ $u_country =~ $country_regex ]]; then
	echo -e "Country of origin ($u_country) - status:\t\tAPPROVED"
else
	echo -e "Country of origin ($u_country) - status:\t\tDENIED (check format)"
fi

# Validación Nacimiento
if [[ $u_bdate =~ $birth_regex ]]; then
	echo -e "Birth date ($u_bdate) - status:\t\t\tAPPROVED"
else
	echo -e "Birth date ($u_bdate) - status:\t\t\tDENIED (check format)"
fi

echo""
```

Se realizará la ejecución de la aplicación con los dos escenarios el correcto y el incorrecto como se muestra a continuación:

```bash
ID: 1987345026
Country of origin [EC, CO, US, MX]: CO
Birth date [yyyyMMDD]: 20010230

ID (1987345026) - status:			APPROVED
Country of origin (CO) - status:		APPROVED
Birth date (20010230) - status:			APPROVED
```

## Validar información

Para el proceso de validación de información tenemos dos maneras de hacerlo:
- Para validar tamaños se utiliza el siguiente comando: `read -n <numero_caracteres>`
- Para validar el tipo de datos se utilizan las expresiones regulares.

## Operadores relacionales
| Operador | Función |
| :------: | :------ |
| `-eq` | Igual a |
| `-ne` | No es igual a |
| `-gt` | Mayor a |
| `-ge` | Mayor o igual a |
| `-lt` | Menor a |
| `-le` | Menor o igual a |

