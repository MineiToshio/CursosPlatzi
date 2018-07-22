# Introducción a Terminal y Línea de Comandos

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

**Listar**

`ls` lista las capetas y archivos que hay
* `-l` lista las capetas y archivos con su información básica
* `-h` ver de forma que sea facil de entender (para humanos)
* `-a` ver archivos ocultos

`ls usr/bin` ver los binarios ejecutables tengo por el sistema
`ls usr/bin | wc -l` ver la cantidad de ejecutables (comandos)

**Ver directorio actual**

`pwd` 

Print Work Directory. Muestra el directorio donde me encuentro.

```bash
$ pwd
/home/toshio
```

**Cambiar de directorio**

`cd [ruta]`

Change Directory. Sirve para moverse entre directorios.

`cd ..` retrocede un directorio.
`cd ~` se mueve al home.

**Crear una carpeta**

`mkdir [directorio]` 

Make Directory. Crea un directorio.

**Crear archivos**

`touch [archivo]` 
* Si no existe el archivo lo va a crear.
* Si existe le cambia la fecha de modificación.

`touch {1, 2, 3}.txt` permite crear varios archivos

**Mover un archivo**

`mv [origen] [destino]`

Mueve un archivo a una ruta destino.

```bash
$ mv archivo.txt C:/
```

**Cambiar de nombre a un archivo**

`mv [archivo] [nuevo nombre]`

Este comando también se usa para renombrar un archivo.

```bash
$ mv archivo.txt nuevo.txt
```

**Eliminar archivos**

`rm [archivo]` elimina archivos o links. No funciona para eliminar un directorio.
`rm -rf [directorio]` elimina un directorio/carpeta recursivamente.

**Ayuda**

`man` 

Es el manual de la terminal, puedes utilizarlo para entender qué hace un comando y sus banderas. Con espacio pasas una página, - con b te regresas una página y con q sales del manual.

Es equivalente a --help

```bash
$ man cd
$ cd --help
```

**Copiar**

`cp [archivo/folder] [pegar]`

Copia un archivo a otro directorio.

```bash
$ cp archivo.txt C:/
```

**Navegar entre 2 directorios**

pushd y popd: te permiten navegar entre dos directorios fácilmente.

`pushd [directorio a guardar]`
`popd` me permite regresar al directorio guardado.

Si no se especifica la ruta de `pushd`, se guarda el directorio actual.

**Abrir un archivo**

`open [archivo]`

Abre el archivo especificado.

**Ver las primeras líneas de un archivo**

`more [archivo]`

Te da las primeras líneas de lo que hay en el archivo. 
* Para ver la siguiente página utilizamos espacio.
* Enter para pasar línea por línea.
* b para regresar.

`less [archivo]` 

En algunas distribuciones ya no se usa more sino less.

**Imprimir todo el contenido de un archivo**

`cat [archivo]`

Imprime todo el contenido de un archivo en pantalla.

**Ver las últimas líneas de un archivo**

`tail [archivo]` te muestra las últimas 10 líneas de un archivo. 
* `-[número]` puedes agregarle un número con el - y pedir más que 10 líneas.
* `-f:` muestra en tiempo real las ultimas lineas del archivo.


which [comando] //especifica donde se encuentra el ejecutable del comando
alias ll='[comando]': crea un alias para un comando 
top: ver todos los procesos que están corriendo en la computadora
kill -9 [proceso id]: matar un proceso
 &: espacio y amberson para dejar un proceso en background
; //con un punto y coma puedo separar procesos para que se ejecuten en una misma linea. El segundo proceso se ejecuta cuando termine el anterior.
ps -wA //ver todos los procesos que se están ejecutando y desde donde vienen
uptime //cuanto tiempo lleva prendida la computadora
| wc -l //devolver solo la cantidad de lineas
> //manda el output a un archivo
du //disk usage
-h //human
-d [numero] //nivel de profundidad. cuantos niveles de carpeta baja
ln -s [fikes/] [nombre] //crea acceso directi
-s //link simbolico. si se usa este parametro con rm solo se elimina el acceso directo.
whoami //te dice cual es el usuario que esta operando

Streams
STDIN: parametro de entrada
STDOUT: salida standar
STDERR: salida de error
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

php 1-streams.php 1> salida 2>error
//guarda la salida en un archivo salida y el error en un archivo error
//si se usa >> en vez de >, entonces el archivo se concatena en vez de sobreescribirse

php 1-streams.php 1> salida 2>&1
//el error y el output aparecen en el mismo archivo

power tools
grep -r [ruta] -e [expresion]: nos ayuda a encontrar cadenas de caracteres dentro de todos los archivos de la ruta que le demos, con expresiones regulares.
-r: que sea recursivo
-n: numero de linea donde se encuentra la palabra en el archivo
-e: expresion regular
-i: no importa si es mayuscula o minuscula
find [ruta] -name [nombre]: busca en base al nombre y la metadata, dentro del directorio que le digamos.
-name: el nombre del archivo (*.js devuelve todos los archivos que terminan con .js)
-type: el tipo
date: fecha actual
time: tiempo del procesador
date; [proceso]; date //ver cuanto se demora en ejecutar un proceso
curl: emula un navegador. No es un browser como tal, hay uno para terminal pero este solo emula los requests (peticiones) y los trae.
> [nombre]: descarga el archivo con el nombre que le has dado.
-o: igual que el anterior
zip [nombre.zip] [archivo a comprimir]: agrega o reemplaza las entradas de un archivo zip de la lista, que puede incluir el nombre especial para comprimir la entrada.
upzip [archivo]: descomprime un .zip
-vl: no descomprime sino que ve lo que hay adentro
tar: es un comando similar a zip, junta varios archivos en uno solo sin comprimirlos. Después se le dicta un algoritmo de compresión, que es zip.
cfz [archivo.tar.gz]: junta y comprime 
xfz [archivo .tar.gz]: descomprime

Pipe //Sirve para encadenar el standard output de un comando con el standard input de otro comando
| wc -l //cantidad de lineas
| grep [patron] //devuelve las lineas que cumplen 
| more //muestra la lista por paginas

crontab //programa la ejecucion de scripts
-l //muestra la lista de crontab
-e //editar el crontab. con esto se pueden agregar más scripts
Columnas:
- minuto 0-59
- hora 0-23
- dia mes 1-31
- mes 1-12
- dia semana: 0-7 (0 y 7 domingo)
- script/comando

Ejemplo 1 col (min)
1
1,10,18
*/5
1-10
*

*/15 4 * * * script.sh
0 3 * * 1 scr

Permisos

F/---/---/---
-: dir/link/file
---: owner
---: group
---: enyone

r–: permiso de lectura
rw-: permiso de lectura y escritura
rwx: permiso de lectura, escritura y ejecución

Los permisos tiene valores numéricos: r = 4, w = 2, x = 1. Entonces para otorgar permisos debemos darle un número que sea la suma de cada una de estas tres letras.

r--: 4
rw-: 6
r-x: 5
--x: 1
-wx: 3
rwx: 7

---/---/---
666: rw-rw-rw
750: rwxr-x---

Recuerda que cuando haces ls -l, cuando aparezca el listado, podrás ver al comienzo de cada línea cuáles son los permisos. En primer lugar aparecen los permisos del owner (tú), después los del grupo, y finalmente los de todo el mundo.

chmod [numero] [archivo] //cambiar los permisos
sudo //usar como super user


\#! [ruta ejecutable] //vuelve un archivo como ejecutable