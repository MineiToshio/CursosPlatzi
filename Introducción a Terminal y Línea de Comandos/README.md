# Introducción a Terminal y Línea de Comandos <!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
- [Comandos](#comandos)
- [Lista de comandos](#lista-de-comandos)
  - [Listar](#listar)
  - [Ver directorio actual](#ver-directorio-actual)
  - [Cambiar de directorio](#cambiar-de-directorio)
  - [Crear una carpeta](#crear-una-carpeta)
  - [Crear archivos](#crear-archivos)
  - [Mover un archivo](#mover-un-archivo)
  - [Cambiar de nombre a un archivo](#cambiar-de-nombre-a-un-archivo)
  - [Eliminar archivos](#eliminar-archivos)
  - [Ayuda](#ayuda)
  - [Copiar](#copiar)
  - [Navegar entre 2 directorios](#navegar-entre-2-directorios)
  - [Abrir un archivo](#abrir-un-archivo)
  - [Ver las primeras líneas de un archivo](#ver-las-primeras-líneas-de-un-archivo)
  - [Imprimir todo el contenido de un archivo](#imprimir-todo-el-contenido-de-un-archivo)
  - [Ver las últimas líneas de un archivo](#ver-las-últimas-líneas-de-un-archivo)
  - [Ver ruta ejecutable de un comando](#ver-ruta-ejecutable-de-un-comando)
  - [Alias para comandos](#alias-para-comandos)
  - [Ver los procesos que están corriendo](#ver-los-procesos-que-están-corriendo)
  - [Matar procesos](#matar-procesos)
  - [Ejecutar en 2do plano (background)](#ejecutar-en-2do-plano-background)
  - [Ejecutar varios procesos](#ejecutar-varios-procesos)
  - [Mostrar cantidad de procesos](#mostrar-cantidad-de-procesos)
  - [Tiempo de prendida de la computadora](#tiempo-de-prendida-de-la-computadora)
  - [Uso del disco](#uso-del-disco)
  - [Links](#links)
  - [Nombre de usuario](#nombre-de-usuario)
- [Streams](#streams)
- [Power Tools](#power-tools)
  - [Buscar cadenas de caracteres](#buscar-cadenas-de-caracteres)
  - [Buscar archivos](#buscar-archivos)
  - [Fecha actual](#fecha-actual)
  - [Tiempo del procesador](#tiempo-del-procesador)
  - [Tiempo de ejecución de un proceso](#tiempo-de-ejecución-de-un-proceso)
  - [Emular un navegador](#emular-un-navegador)
  - [Comprimir archivos](#comprimir-archivos)
- [Pipe](#pipe)
- [Crontab](#crontab)
- [Permisos](#permisos)
  - [Ejecutar como super user](#ejecutar-como-super-user)
- [Convertir archivos a ejecutable](#convertir-archivos-a-ejecutable)
- [Enlaces de Interés](#enlaces-de-interés)

## Introducción

La línea de comandos te permite hacer de todo: configuraciones, editar texto, compilar código y utilizar las herramientas que existen dentro de tu sistema operativo.

Todos los comandos se pueden buscar con el comando `man`.

**Shorcuts**
* `Control + L` Limpiar la pantalla
* `Control + R` Buscar comandos usados anteriormente

**Ventajas**

* `Ahorras memoria` puesto que no hay una interfaz gráfica
* `Ahorras tiempo` pues hace más sentillo el trabajo.

## Comandos

Los comandos, en su mayor parte, no son realmente más que pequeños programas incorporados en el sistema operativo.

Los `flags` (o banderas) sirven para decirle al comando cómo queremos que realice la acción en particular.

**Puntos a tener en cuenta**

* Los comandos se pueden poner todos con un solo `-`. Por ejemplo, estos dos comandos hacen lo mismo:
    ```bash
    $ ls -l -h 
    $ ls -lh 
    ```
* El punto `.` es el directorio actual.
* El doble punto `..` es el directorio padre.
* El sombrerito de eñe `~` sirve para ir a mi carpeta personal (home).

## Lista de comandos

### Listar

`ls` lista las capetas y archivos que hay
* `-l` lista las capetas y archivos con su información básica
* `-h` ver de forma que sea facil de entender (para humanos)
* `-a` ver archivos ocultos

`ls usr/bin` ver los binarios ejecutables tengo por el sistema
`ls usr/bin | wc -l` ver la cantidad de ejecutables (comandos)

### Ver directorio actual

`pwd` 

Print Work Directory. Muestra el directorio donde me encuentro.

```bash
$ pwd
output: /home/toshio
```

### Cambiar de directorio

`cd [ruta]`

Change Directory. Sirve para moverse entre directorios.

`cd ..` retrocede un directorio.
`cd ~` se mueve al home.

### Crear una carpeta

`mkdir [directorio]` 

Make Directory. Crea un directorio.

### Crear archivos

`touch [archivo]` 
* Si no existe el archivo lo va a crear.
* Si existe le cambia la fecha de modificación.

`touch {1, 2, 3}.txt` permite crear varios archivos

### Mover un archivo

`mv [origen] [destino]`

Mueve un archivo a una ruta destino.

```bash
$ mv archivo.txt C:/
```

### Cambiar de nombre a un archivo

`mv [archivo] [nuevo nombre]`

Este comando también se usa para renombrar un archivo.

```bash
$ mv archivo.txt nuevo.txt
```

### Eliminar archivos

`rm [archivo]` elimina archivos o links. No funciona para eliminar un directorio.
`rm -rf [directorio]` elimina un directorio/carpeta recursivamente.

### Ayuda

`man` 

Es el manual de la terminal, puedes utilizarlo para entender qué hace un comando y sus banderas. Con espacio pasas una página, - con b te regresas una página y con q sales del manual.

Es equivalente a --help

```bash
$ man cd
$ cd --help
```

### Copiar

`cp [archivo/folder] [pegar]`

Copia un archivo a otro directorio.

```bash
$ cp archivo.txt C:/
```

### Navegar entre 2 directorios

pushd y popd: te permiten navegar entre dos directorios fácilmente.

`pushd [directorio a guardar]`
`popd` me permite regresar al directorio guardado.

Si no se especifica la ruta de `pushd`, se guarda el directorio actual.

### Abrir un archivo

`open [archivo]`

Abre el archivo especificado.

### Ver las primeras líneas de un archivo

`more [archivo]`

Te da las primeras líneas de lo que hay en el archivo. 
* Para ver la siguiente página utilizamos espacio.
* Enter para pasar línea por línea.
* b para regresar.

`less [archivo]` 

En algunas distribuciones ya no se usa more sino less.

### Imprimir todo el contenido de un archivo

`cat [archivo]`

Imprime todo el contenido de un archivo en pantalla.

### Ver las últimas líneas de un archivo

`tail [archivo]` te muestra las últimas 10 líneas de un archivo. 
* `-[número]` puedes agregarle un número con el - y pedir más que 10 líneas.
* `-f:` muestra en tiempo real las ultimas lineas del archivo.

### Ver ruta ejecutable de un comando

`which [comando]` 

Especifica donde se encuentra el ejecutable del comando

```bash
$ which ls
output: /usr/bin/ls
```

### Alias para comandos

`alias [comando_alias]='[comando]'`

Crea un alias para un comando definido. 

```bash
$ alias ll='ls -lh'
```
En este ejemplo se está creando el comando `ll` que ejecutará `ls -lh`. 

Todo lo que se agregue después del alias se agrega automáticamente luego del comando.

```bash
$ ll -a
$ ls -lh -a
```

En el ejemplo, los 2 comandos hacen lo mismo.

Cada vez que abrimos la terminal se ejecuta un programa llamado `.bash_profile` que es una serie de comandos que da de alta unas variables.

En el `.bash_profile` se guardan los alias.

### Ver los procesos que están corriendo

`top`

Ver todos los procesos que están corriendo en la computadora de manera interactiva. Es decir, la lista de procesos se va actualizando.

`ps -wA` 

Muestra todos los procesos que se están ejecutando y desde donde vienen. Este comando no es interactivo.

### Matar procesos

`kill -9 [proceso id]`

Mata un proceso.

### Ejecutar en 2do plano (background)

` &` espacio y amberson para dejar un proceso en background. Esto quiere decir que el usuario va a seguir teniendo el control de la terminal.

```bash
$ npm start &
output: [1] 23954 (Id del proceso)
```

### Ejecutar varios procesos

`;` con un punto y coma puedo separar procesos para que se ejecuten en una misma linea. El segundo proceso se ejecuta cuando termine el anterior.

```bash
$ ls; echo "hola"
```

### Mostrar cantidad de procesos

`ps -wA | wc -l`

Muestra la cantidad de procesos que se están ejecutando actualmente.

### Tiempo de prendida de la computadora

`uptime` 

* Muestra cuánto tiempo lleva prendida la computadora
* Cuántos usuarios se han logueado
* La carga promedio

### Uso del disco

`du` muestra la cantidad de espacio usado por los archivos en un directorio. 
* `-h` muestra el output de una manera que se pueda leer mejor.
* `-d [numero]` nivel de profundidad. Cuántos niveles baja de carpeta.

### Links

`ln -s [ruta del directorio] [alias]` Crea un alias que apunta a un directorio.
* `-s` link simbolico. Si se usa este parámetro con `rm` solo se elimina el acceso directo.

```bash
ls -s C:/carpeta alias_file 
cd alias_file
```

La terminal está interpretando `cd C:/carpeta`.

### Nombre de usuario

`whoami` 

Te dice cual es el usuario que esta operando

## Streams

Los streams son una forma de enviar datos a un comando y recibir un output de salida.

* `STDIN` Standard Input. Parametro de entrada.
* `STDOUT` Standard Output. Es la salida por defecto.
* `STDERR` Standard Error. Es la salida en caso suceda un error.

```php
<?php 
echo "número: ";
$d = trim(fread(STDIN, 100));
$i = 0;

while(true) {
  if(++$i % $d == 0) {
    fwrite(STDOUT, sprintf("El %d es múltiplo de %d.\n", $i, $d));
  } else {
    fwrite(STDERR,
    sprintf("Error, El %d NO es múltiplo de %d \n", $i, $d));
  }
  sleep(1);
}
?>
```

```bash
php 1-streams.php 1> salida.log 2> error.log
```
* `>` manda el output a un archivo
* Se guarda la salida en un archivo salida y el error en un archivo error
* Si se usa `>>` en vez de `>`, entonces el archivo se concatena en vez de sobreescribirse

```bash
php 1-streams.php 1> salida.log 2>&1
```
El error y el output aparecen en el mismo archivo

## Power Tools

### Buscar cadenas de caracteres

`grep -r [ruta] -e [expresion]` nos ayuda a encontrar cadenas de caracteres dentro de todos los archivos de la ruta que le demos, con expresiones regulares.
* -r: que sea recursivo
* -n: numero de linea donde se encuentra la palabra en el archivo
* -e: expresion regular
* -i: no importa si es mayuscula o minuscula
* -v: muestra solo los resultados que no cumplen con el patrón.

### Buscar archivos

`find [ruta] -name [nombre]` busca en base al nombre y la metadata dentro del directorio que le digamos.
* -name: el nombre del archivo (*.js devuelve todos los archivos que terminan con .js)
* -type: el tipo

### Fecha actual

`date`

Muestra la fecha actual.

### Tiempo del procesador

`time` 

Muestra tiempo del procesador

### Tiempo de ejecución de un proceso

`date; [proceso]; date` 

Con este comando se puede evaluar cuánto se demora en ejecutar un proceso

### Emular un navegador

`curl [url]` emula un navegador.
* `> [nombre]` descarga el archivo con el nombre que le has dado.
* `-o [nombre]` igual que el anterior

### Comprimir archivos

`zip [nombre.zip] [archivo a comprimir]`: agrega o reemplaza las entradas de un archivo zip de la lista, que puede incluir el nombre especial para comprimir la entrada.

`upzip [archivo]` descomprime un .zip
* `-vl` no descomprime sino que ve lo que hay adentro

`tar` es un comando similar a zip, junta varios archivos en uno solo sin comprimirlos. Después se le dicta un algoritmo de compresión, que es zip.
* `cfz [archivo.tar.gz]` junta y comprime 
* `xfz [archivo .tar.gz]` descomprime

## Pipe

Sirve para encadenar el standard output de un comando con el standard input de otro comando. Pa esto se usa `|`.

* `| wc -l` muestra cantidad de lineas del output.
```bash
$ ls -l | wc -l
```
* `| grep [patrón]` devuelve las lineas que cumplen con el patrón.
```bash
$ cat peliculas.csv | grep Thriller
```
* `| more` muestra la lista de resultados por paginas.
```bash
$ cat peliculas.csv | more
```

## Crontab

`crontab` permite programar la ejecución de scripts.
* `-l` muestra la lista de crontab
* `-e` editar la tabla crontab. Con esto se pueden agregar más scripts

```bash
0   16  *   *   *    $Home/src/cronjobs/daily.sh
0   *   *   *   *    $Home/src/cronjobs/hourly.sh
*   *   *   *   *    $Home/src/cronjobs/minutely.sh
```

Columnas:
- minuto 0-59
- hora 0-23
- dia mes 1-31
- mes 1-12
- dia semana: 0-7 (0 y 7 domingo)
- script/comando

**Ejemplo 1 para la columna minuto**
`1` Se ejecuta en el minuto 1
`1,10,18` Se ejecuta en el minuto 1, 10 y 18
`*/5` Se ejecuta cada 5 minutos
`1-10` Se ejecuta los primeros 10 minutos de cada hora
`*` Se ejecuta cada minuto

**Ejemplo 2**
```bash
*/15 4 * * * script.sh
```

Ejecuta script.sh 
* todos los días de la semana
* todos los meses
* todos los días del mes
* a las 4 am
* cada 15 minutos

**Ejemplo 3**
```bash
0 3 * * 1 script.sh
```

Ejecuta script.sh 
* solo si es lunes
* todos los meses
* todos los días del mes
* a las 3 am
* en el minuto cero

**Nota**: al momento de editar la tabla de crontab, asegurarse que se vea ordenado las columnas.

## Permisos

Podemos ver los permisos que tiene un archivo con `ls -l`.

```
$ ls -l
drwxr-xr-x 1 Sergio 197609   0 Jul  9 16:43 'a.txt'
```

Los permisos se muestran en el primer bloque del resultado. En el ejemplo anterior sería `drwxr-xr-x`.

Los permisos se pueden separar de la siguiente manera:

```
F/---/---/---
-: dir/link/file
---: permisos del owner (yo)
---: permisos del gropo
---: permisos de todo el mundo
```

Tipos de permisos:
* `r-–` permiso de lectura
* `rw-` permiso de lectura y escritura
* `rwx` permiso de lectura, escritura y ejecución

Los permisos tiene valores numéricos: 
* r = 4
* w = 2
* x = 1

Para otorgar permisos debemos darle un número que sea la suma de cada una de estas tres letras:

```
---: 0
--x: 1
-r-: 2
-wx: 3
r--: 4
r-x: 5
rw-: 6
rwx: 7
````

Para asignar los permisos se debe de dar el número tanto para el owner, el grupo y el público.
```
---/---/---
666: rw-rw-rw-
750: rwxr-x---`
```

**Cambiar permisos**

`chmod [numero] [archivo]` 

Permite cambiar los permisos a un archivo.

```bash
$ chmod 750 archivo.txt
```

### Ejecutar como super user

`sudo [script/comando]`

Ejecuta un comando como super usuario.

## Convertir archivos a ejecutable

`#! [ruta del ejecutable]` 

Vuelve un archivo como ejecutable, estamos especificando quién va a ejecutar el comando que sigue.

`#!` necesariamente debe incluirse al inicio del archivo. En la primera línea. 

```php
#! /usr/local/bin/php
<?php
date_default_timezone_set("America/Bogota");
printf("%s\n", data("Y-m-d H:i:s"));
```
En este caso, estamos indicando a `/usr/local/bin/php` que ejecute el comando que está en las líneas posteriores.

De este modo cuando ejecutamos `ejemplo.php` se ejecuta automáticamente y ya no hay que indicar quién se va a encargar de su ejecución.

## Enlaces de Interés
* https://platzi.com/clases/terminal/