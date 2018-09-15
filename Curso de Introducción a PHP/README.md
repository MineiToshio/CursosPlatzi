# Curso de Introducción a PHP<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [¿Qué es PHP?](#qué-es-php)
- [XAMPP](#xampp)
- [Sintaxsis de PHP](#sintaxsis-de-php)
- [Variables](#variables)
- [Tipos de datos](#tipos-de-datos)
  - [Tipos escalares](#tipos-escalares)
    - [boolean](#boolean)
    - [Integer](#integer)
    - [float o double](#float-o-double)
    - [string](#string)
  - [Tipos compuestos](#tipos-compuestos)
    - [array](#array)
    - [object](#object)
    - [callable](#callable)
    - [iterable](#iterable)
  - [Tipos especiales](#tipos-especiales)
    - [resource](#resource)
    - [NULL](#null)
- [Arreglos](#arreglos)
- [Condicionales](#condicionales)
- [Ciclos](#ciclos)
  - [Do while](#do-while)
  - [While](#while)
  - [For](#for)
  - [Foreach](#foreach)
- [Operadores](#operadores)
  - [Operadores aritméticos](#operadores-aritméticos)
  - [Operadores de asignación](#operadores-de-asignación)
  - [Operadores de comparación](#operadores-de-comparación)
  - [Operadores de incremento/decremento](#operadores-de-incrementodecremento)
  - [Operadores lógicos](#operadores-lógicos)
  - [Operadores para strings](#operadores-para-strings)
  - [Operadores para arrays](#operadores-para-arrays)
- [Continue](#continue)
- [Break](#break)
- [Funciones](#funciones)
- [Agregando archivos externos](#agregando-archivos-externos)
- [Programación Orientada a Objetos](#programación-orientada-a-objetos)
  - [Constructor](#constructor)
  - [Herencia](#herencia)
- [Interfaces](#interfaces)
- [Namespaces](#namespaces)
- [Enlaces de Interés](#enlaces-de-interés)

## ¿Qué es PHP?

PHP es un lenguaje de programación de propósito general de alto nivel que fue diseñado especialmente para el desarrollo de aplicaciones web.

* Es un lenguaje interpretado, necesitas un interprete de php en la pc para ejecutarlo.
* Es un lenguaje multiplataforma (Win, linux, MacOS).
* Es open source, el codigo fuente esta disponible!
* Tienes muchas integraciones.

**¿Qué NO es PHP?**

* No es un lenguaje compilado, por lo cual siempre tendrás que llevar juntos tu código y tu interprete.
* No esta diseñado para realizar aplicaciones de escritorio.
* Para trabajar con PHP instalaremos un entorno de desarrollo llamado XAMPP, no es un entorno pensado para producción.

## XAMPP

Es un entorno para poder desarrollar en PHP.

* **X**: Cualquier sistema operativo.
* **A**: Apache
* **M**: MariaBD
* **P**: PHP/Perl

Para instalar XAMPP solo hay que ir a la [página de Apache](https://www.apachefriends.org) y descargar el instalador.

Al finalizar la instalación, abrir XAMPP e iniciar el servidor de Apache y MySQL.

Si al iniciar el servidor de Apache sale un error por que el **puerto está siendo usado**, se puede cambiar de la siguiente manera:
1. Click en Config de Apache.
2. Click en httpd.conf.
3. Cambiar Listen 80
4. Cambiar ServerName localhost:80

## Sintaxsis de PHP

Siempre que usemos PHP usaremos lo siguiente: 

```php
<?php 
  echo 'hello PHP';
?>
``` 

Todo lo que pongamos dentro de esto será lo que el servidor va a interpretar como código php, lo que esté fuera lo ignorará.

Si queremos escribir código php en nuestra vista HTML tendremos que cambiarle la extensión al archivo por **.php** porque nuestro servidor esta configurado a solo interpretar archivos PHP. Solo las partes dentro de `<?php ?>` van a ser interpretadas y su código fuente no será visible desde el navegador.

Todas las sentencias de código se separarán con un `;` (punto y coma).

## Variables

Una variable puede ser una pequeña cajita en la que puedes almacenar un valor y este lo pueden usar para realizar alguna operación.

Para declararla usaremos el símbolo de **$** y en seguida el nombre, este puede ser un _ o una letra.

```php
<?php 
  $number = 1;
  $name = 'Sergio';
?>
```

PHP **no es estáticamente tipado**, es decir que no tenemos que decirle qué tipo de dato es esa variable. Además, es débilmente tipado porque podemos fácilmente cambiar el tipo de dato, es decir PHP ejecuta una conversión de datos interna.

Al momento de trabajar con PHP una cosa muy importante es hacer debugging a nuestras variables, para ello utilizamos la función `var_dump();` pasándole por parámetro la variable a revisar.

```php
<?php
  $name = 'Sergio';
  var_dump($name)
?>
```

En PHP tenemos dos tipos de cadenas, las que son con **comillas simples** y las de **comillas dobles**. La diferencia entre estas dos cadenas es que la de comillas simples recibe de forma literal lo que le escribas mientras que la de comillas dobles intenta interpretar cualquier variable dentro de ella.


```php
<?php
  $name = 'Sergio';
  
  //Comillas Dobles
  $hello = "Hola $name";

  //Comillas Simples
  $hello2 = 'Hola ' . $name;
?>
```

## Tipos de datos

PHP cuenta con muchos tipos de datos, sin embargo, en este momento nos vamos a enfocar en los más importantes y utilizados que son boolean, integer, float, string, array y NULL.

### Tipos escalares

#### boolean

Representa solamente un valor verdadero o falso. 

Si quieres conocer más de este tipo de dato da click [aquí](http://php.net/manual/es/language.types.boolean.php)

**Valores válidos**: true (verdadero) false (falso)

```php
<?php
  $a = true; 
  $b = false; 
?>
```

#### Integer

Representa un número entero positivo, negativo o 0. 

Si quieres conocer más de este tipo de dato da click [aquí](http://php.net/manual/es/language.types.integer.php)

```php
<?php
  $a = -123;
  $b = 0;
  $c = 7763;
?>
```

#### float o double

Representa un número de punto flotante, existen problemas de precisión con los números flotantes debido a la naturaleza binaria de las computadoras.

Si quieres conocer más de este tipo de dato da click [aquí](http://php.net/manual/es/language.types.float.php)

```php
<?php
  $a = 12.24; 
  $b = 1.5e3; 
  $c = 7E-10;
?> 
```

#### string

* Representa una cadena de caracteres.
* Existen 4 formas de representar una cadena. 
 
Las 2 principales son usando comillas simples o comillas dobles.
1. Usando comillas simples donde el texto será exactamente como se escribe.
2. Usando comillas dobles permite usar caracteres de escape y además expanden los nombres de las variables, es decir sustituye el valor de las variables dentro de las cadenas.

Hay 2 formas adicionales llamadas **Heredoc** y **Nowdoc** que sirven para crear cadenas de múltiples líneas.

Si quieres conocer más de este tipo de dato da click [aquí](http://php.net/manual/es/language.types.string.php#language.types.string.details).

```php
<?php
  $a = "Hola"; 
  $b = 'Mundo'; 
?>
```

### Tipos compuestos

#### array

Representa una colección de valores, aunque por defecto PHP usara índices numéricos, la realidad es que la estructura se representa como un mapa que colecciona pares llave-valor. La sintaxis para definir un arreglo será a partir de corchetes cuadrados, aunque en versiones anteriores de PHP era necesario usar la función array(). Las llaves pueden ser enteros o cadenas y los valores pueden ser de cualquier tipo de PHP, incluso de tipo array. 

Si quieres conocer más de este tipo de dato da click [aquí](http://php.net/manual/es/language.types.array.php)

```php
<?php
  $array = array(
    "curso1" => "php",
    "curso2" => "js",
  );

  // a partir de PHP 5.4
  $array = [
    "curso1" => "php",
    "curso2" => "js",
  ];

  // índices numéricos
  $array = [
    "php",
    "js",
  ];
?>
```

#### object

Representa una instancia de una clase. Este tema lo veremos más a fondo en la clase de Programación Orientada a Objetos.

```php
<?php
  class Car
  {
    function move()
    {
      echo "Going forward..."; 
    }
  }

  $myCar = new Car();
  $myCar->move();
?>
```

#### callable

Es un tipo de dato especial que representa a algo que puede ser “llamado”, por ejemplo una función o un método.

```php
<?php
  // Variable que guarda un callable
  $firstOfArray = function(array $array) {
    if (count($array) == 0) { return null; }
    return $array[0];
  };

  // Este es nuestro arreglo
  $values = [3, 2, 1];

  // Usamos nuestro callable y se imprime el valor 3
  echo $firstOfArray($values);
?>
```

#### iterable

A partir de PHP 7.1 iterable es un pseudo tipo de datos que puede ser recorrido.

```php
<?php
  function foo(iterable $iterable) {
    foreach ($iterable as $valor) {
      // ...
    } 
  }
?>
```

### Tipos especiales

#### resource

Es un tipo de dato especial que representa un recurso externo, por ejemplo un archivo externo a tu aplicación.

```php
<?php
  $res = fopen("c:\\dir\\file.txt", "r");
?>
```

#### NULL

Es un valor especial que se usa para representar una variable sin valor. 

Si quieres conocer más de este tipo de dato da click [aquí](http://php.net/manual/es/language.types.null.php)

```php
<?php
  $a = null; 
?>
```

## Arreglos

Las variables que almacenan más de un dato se conocen como arreglos y su sintaxis se va a indicar con [ ] (corchetes).

```php
<?php
  $jobs = [
    'PHP Dev',
    'Python Dev'.
    'Devops'
  ];
?>
```

PHP utiliza índices para localizar a los elementos dentro de la variable. Los índices empiezan de cero.

```php
<?php
  echo $jobs[0];
  // imprime PHP Dev
?>
```

La estructura de arreglos en PHP es conocida como mapa, lo que quiere decir que tiene una composición de llave valor. Además, un arreglo puede contener más arreglos y cada uno de ellos seguirá la misma estructura.

```php
<?php
  $jobs = [
    [
      'title' => 'PHP Dev',
    ],
    [
      'title' => 'Python Dev'.
    ],
    [
      'title' => 'Devops'
    ]
  ];

  // imprime PHP Dev
  echo $jobs[0]['title'];
?>
```

Algo que debes saber es que en PHP podrás almacenar diferentes tipos de datos en un mismo arreglo.

## Condicionales

Las condiciones nos permiten tomar decisiones en el código, si se cumple la condición entonces se ejecutarán ciertas instrucciones sino se cumple se ejecutarán otras. Estas se denotan por la instrucción **if else**.

```php
$var1 = 1;

if($var1 > 0) {
  echo 'es mayor que 2';
} 
else {
  echo 'no es mayor que 2';
}
```

## Ciclos

Los ciclos o bucles son de total importancia cuando desarrollamos software pues nos permiten repetir un bloque de acciones y en consecuencia re-utilizar mejor nuestro código.

### Do while

```php
$idx = 0;
do {
  echo $idx;
  $idx++;
} while($idx < 3);
```

 El ciclo do while garantiza que el código interno se ejecutará al menos 1 vez.

 ### While

 ```php
 $idx = 0;
 while ($idx < 3) {
  echo $idx;
  $idx++;
}
 ```

 En el ciclo while si la condición es falsa desde un inicio, es posible que el ciclo nunca se ejecute.

### For

```php
for($idx = 0; $idx < 3; $idx++) {
  echo $idx;
}
```

### Foreach

El ciclo foreach nos brinda una solución simple para iterar sobre los valores de un arreglo, la sintaxis es la siguiente:

```php
$array = ['uno', 'dos', 'tres']
foreach ($array as $valor) {
  echo $valor;
}
```

En esta sintaxis nos encontramos con 4 partes:
* La palabra reservada foreach simplemente indica el inicio de nuestro bloque.
* Dentro de paréntesis se escribe el nombre del arreglo que vamos a estar iterando, este arreglo debe estar definido previamente, en este ejemplo es $arreglo.
* La palabra "as" seguido de un nombre de variable que usaremos para acceder al elemento del arreglo que estamos accediendo, esta variable no debe existir previamente y solo la podrán usar dentro de este bloque. En el ejemplo es $valor.
* Entre llaves "{ }" están todas las acciones que queremos repetir, en el momento en que se ejecute el ciclo la variable que definimos para iterar (en el ejemplo $valor) ya existe y podrá ser usada en esta sección, piensa que el valor de esta variable estará cambiando en cada iteración.

Suponiendo que en el ejemplo anterior, el ciclo se repetirá 3 veces y en cada iteración la variable $valor contendrá el elemento del arreglo correspondiente, es decir, en la primera iteración $valor será igual a ‘uno’, en la segunda $valor será igual a ‘dos’ y en la tercera $valor será igual a ‘tres’.

Existe una sintaxis alternativa que nos permite no solo conocer el valor, también nos permitirá conocer la llave, de este modo tendremos acceso tanto a la llave como al valor del elemento del arreglo:

```php
foreach ($array as $llave => $valor) {
  //sentencias que pueden usar $llave y $valor
}
```

## Operadores

### Operadores aritméticos

Funcionan para realizar operaciones aritméticas.

<div align="center">
  <img src="img/operadores-aritmeticos.jpg">
  <small><p>Operadores Aritméticos</p></small>
</div>

### Operadores de asignación

El operador principal de asignación es el símbolo = (igual). Es importante tener en cuenta que este operador no sirve para comparar, normalmente del lado izquierdo del operador tendremos una variable, y este operador sirve para asignar el resultado de lo que se encuentre a la derecha a dicha variable.

```php
$variable = 5;
```

Lo que tenemos en la derecha puede ser un valor, otra variable, o el resultado de una operación o función.

También existen otros operadores de asignación que se combinan con operadores aritméticos o para strings y nos permiten simplificar algunas sentencias dentro de PHP. Estos son ejemplos de cómo funcionan:

```php
$a += $b
$a = $a + $b

$a -= $b
$a = $a - $b

$a *= $b
$a = $a * $b

$a /= $b
$a = $a / $b

$a %= $b
$a = $a % $b

$a .= $b
$a = $a . $b
```

### Operadores de comparación

Nos permiten comparar valores.

<div align="center">
  <img src="img/operadores-comparacion.jpg">
  <small><p>Operadores de Comparación</p></small>
</div>

### Operadores de incremento/decremento

Permiten incrementar o decrementar un valor en 1.

<div align="center">
  <img src="img/operadores-incremento-decremento.jpg">
  <small><p>Operadores de Incremento / Decremento</p></small>
</div>

Es muy importante entender cómo afecta el lugar donde se establece el operador, ejemplo:

```php
$a = 1;
echo $a++;
echo $a;
echo ++$a;
echo $a;
```

imprime:

```
1
2
3
3
```

### Operadores lógicos

Nos permiten combinar resultados de comparaciones.

<div align="center">
  <img src="img/operadores-logicos.jpg">
  <small><p>Operadores Lógicos</p></small>
</div>

### Operadores para strings

Existen 2 operadores para strings el . (punto) que nos permite concatenar cadenas, y el .= que ya fue visto anteriormente y nos permite simplificar la sintaxis de concatenar algo a una misma cadena, ejemplo:

```php
$var1 = ‘Hola ’ . ‘ php’;
$var1 .= ‘!!!’;
echo $var1;
```

imprime

```
Hola php!!!
```

### Operadores para arrays

<div align="center">
  <img src="img/operadores-arrays.jpg">
  <small><p>Operadores Arrays</p></small>
</div>

## Continue

La sentencia `continue`hará que se itere a la siguiente línea del arreglo. 

```php
for($idx = 0; $idx < 10; $idx++) {
  if($continuar) {
    continue;
  }
}
```

Si se ejecuta **continue**, entonces se pasa a la siguiente iteración del for.

Y la sentencia break que hará que el ciclo se termine.

## Break

La sentencia **break** hace que el ciclo se termine.

```php
for($idx = 0; $idx < 10; $idx++) {
  if($saltar) {
    break;
  }
}
```

Si se actiba el break, entonces se termina el ciclo for.

## Funciones

Las funciones en PHP se denotan por la palabra reservada function seguida por el nombre de la **función**, las funciones nos servirán para llamar y reutilizar código en nuestros proyectos.

Cuando trabajemos con funciones es muy importante cuidar el scope (alcance) de las variables pues, algunas podrían entrar en su scope y otras no.

Las funciones en PHP pueden o no regresar un dato particular. Si deseamos hacerlo podemos indicarlo con la palabra reservada **return**.

```php
function printJob() {
  //Contenido de la función
}
```

## Agregando archivos externos

Podemos usar archivos de la siguiente manera:

**1. include**

Include hace que un archivo externo se agregue dentro del archivo que estamos usando.

```php
include('jobs.php');
```

Si el archivo no se encuentra, entonces mostrará un warnning.

**2. require**

A diferencia de include, require muestra un error si no encuentra en archivo.

```php
require('jobs.php');
```

**3. include_once**

Es como include, pero solo agrega el archivo una sola vez independiente de las veces que se agregue.

```php
include_once('jobs.php');
```

**3. require_once**

Es como require, pero solo agrega el archivo una sola vez independiente de las veces que se agregue.

```php
require_once('jobs.php');
```

## Programación Orientada a Objetos

La programación orientada a objetos nos ayudará a estructurar mejor nuestros programas. PHP, a partir de su versión 5, tiene implementaciones orientadas a objetos, lo que lo hace tener código más reutilizable y mantenible.

Una clase es una plantilla o definición de algo. Y una instancia es la representación concreta de la clase.

Encapsulamiento será el nivel de visibilidad que queramos darle a alguna variable, para ello podemos utilizar los modificadores de acceso **private**, **public** y **protected**.

* Public: Todos pueden tener acceso.
* Private: El acceso es solo dentro de la clase.
* Protected: El acceso es solo dentro de la clase y los que heredan de la clase.

Con la palabra reservada **this** estaremos haciendo referencia a la variable que pertenece a la clase.

```php
class Job {
  private $title;
  public $description;
  public $visible;
  public $months;

  public function setTitle($title) {
    $this->title = $title;
  }

  public function getTitle() {
    return $this->title;
  }
}
```

Para instanciar una clase se haría de la siguiente manera:

```php
$job1 = new Job();
$job1->setTitle('PHP Developer');
$job1->description = 'This is an awesome job';
$job1->visible = true;
$job1->months = 16;
```

### Constructor

El método constructor es una clase que se llama al instanciar una clase. 

```php
class Job {
  private $title;
  public $description;

  public function __construct($title, $description) {
    $this->setTitle($title);
    $this->description = $description;
  }
}

$job = new Job('título', 'descripcion');
```

### Herencia

La herencia permite que ciertas clases tengan características de una clase padre. Esta clase se llamará hijo.

Es muy conveniente utilizar **require_once** cuando queremos utilizar herencia e incluir clases que están en otros archivos.

```php
//BaseElement.php
class BaseElement {
  private $title;
  public $description;
  public $visible = true;
  public $months;
}
```

De este modo se declare una clase hijo.

```php
//Job.php
require_once('BaseElement.php');

class Job extends BaseElement {
}
```

La herencia en PHP será de forma sencilla es decir solo que podrá hacer herencia de una sola clase.

Dentro de nuestra clase hijo podemos sobrescribir algún método del padre, esto es un concepto que conocemos como **polimorfismo**. Lo que polimorfismo quiere decir es que tendremos un método que va a funcionar de acuerdo con su contexto donde es llamado.

```php
class BaseElement {
  public function getText() {
    return  "Text";
  }
}

class Job extends BaseElement {
  public function getText() {
    return  "Text from jobs";
  }
}
```

De este modo, cuando se instancie un objeto con la clase Job y se llame al método getText(), entonces se usa el método de la clase Job.

Si se desea acceder al constructor del padre desde la clase hijo, se puede hacer de la aiguiente forma:

```php
public function __construct($title, $description) {
  parent::__construct($newTitle, $description);
}
```

## Interfaces

Las interfaces se pueden ver como un contrato o un acuerdo en el que se pueden estandarizar ciertas cosas.

La palabra reservada que utilizaremos para declarar una interfaz será **interface**. Y la que nos indicará que estamos usando una interfaz en una clase será **implements**.

```php
interface Printable {
  public function getDescription();
}
```

Para usar la interface, se ha de la siguiente forma:

```php
require_once('Printable.php');

class BaseElement implements Printable {
  public function getDescription() {
    return $this->description;
  }
}
```

Usando **Type Hinting** estableceremos el tipo de dato que esperamos ya sea una clase o un tipo de dato específico.

```php
function printDescription(Printable $job) {
  echo $job->getDescription();
}
```

En el caso de las interfaces, sí podemos implementar varias al mismo tiempo.

## Namespaces

Esta es una forma de mantener únicos los nombres de los archivos en el mismo directorio.

Esto nos permite tener mejor organizado el proyecto.

Para declarar un espacio de nombres privado se utiliza la palabra reservada **namespace**.

```php
namespace App\Models;

class Project {

}
```

Un standard es usar namespaces conforme a la estructura de carpetas en la que se encuentran los archivos.

Para usar un archivo de otro namespace, se puede hacer de la siguiente forma:

```php
use App\Models\Job;
use App\Models\Project;
use App\Models\Printable;

//A partir de php7 
use App\Models\{Job, Project, Printable};
```

Otra forma de hacerlo es al siguiente:

```php
$project = new Lib\Project();
```

## Enlaces de Interés
* [Curso de Introducción a PHP](https://platzi.com/clases/php)
* [Github del Curso](https://github.com/hectorbenitez/curso-introduccion-php)
* [XAMPP](https://www.apachefriends.org)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>
