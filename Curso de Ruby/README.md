# Curso de Responsive Design<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Introducción](#introducción)
- [Instalación](#instalación)
- [Variables](#variables)
- [Integer y Flotantes](#integer-y-flotantes)
- [Strings](#strings)
- [Symbols](#symbols)
- [Arrays](#arrays)
- [Hashes](#hashes)
- [Condicionales](#condicionales)
- [Enlaces de Interés](#enlaces-de-interés)

## Introducción

Ruby es un lenguaje de programación creado por Matz en 1995, es open source y fue popularizado por Rails en 2005. Este lenguaje es dinámico, interpretado y orientado a objetos (todo es un objeto). Su objetivo es la felicidad y productividad del desarrollador.

**Ventajas**

* Comunidad muy grande
* Muchas librerías
* Constantes actualizaciones
* Lenguaje maduro

**Desventajas**

* Interpretado puede significar lento
* Alto uso de memoria
* No paralelismo
* Ha venido decreciendo en popularidad

## Instalación

1. Descargar el instalador desde aquí https://rubyinstaller.org.
2. Aceptar la licencia.
3. Escoger la carpeta de instalación.
4. Usar UTF-8 como external encoding.
5. Continuar la instalación con los valores por defecto.
6. Se abrirá una ventaja de consola. Apretar Enter.

Para comprobar si Ruby se instaló correctamente:
1. Ir a la consola.
2. irb
3. RUBY_VERSION 
4. exit
5. ruby -v

## Variables

Deben empezar con un letra minúscula o un guión bajo (_), se recomienda el uso de la convención "snake_case" con el fin de identificarlas fácilmente y no puede contener palabras reservadas del lenguaje.

En Ruby, todas las variables son tratadas como objetos. De ese modo, toda las variables tienen métodos.

Algunos métodos son:

* `x.class` (Para preguntar de qué clase es la variable).
* `x.methods` (Para enlistar los métodos que puede usar la variable).
* `x.odd?` (Para verificar si la variable es impar, devuelve un booleano).
* `x.even?` ( Para verificar si la variable es par, devuelve un booleano).

Cuando un método termina en interrogante (?) va a devolver un booleano (True o False).

## Integer y Flotantes

**Operadores**

X = 5

* `Suma` X + 5
* `Resta` x - 6
* `División` X / 7
* `Multiplicación` X * 4
* `Módulo` X % 3
* `Potencia` X ** 2

Cuando hay una operación aritmética entre enteros resulta entero, pero cuando hay una operación aritmética entre entero y un flotante resulta un flotante (Decimal).

## Strings

Un string se puede definir de las siguientes forma:

* `s = "hola"`
* `s = 'hola'`
* `s = %q(hola)`
* `s = %Q(hola)`

**Interpolación**

```ruby
/*Permite interpolación*/
saludo = %Q(Hola #{nombre})
saludo = "Hola #{nombre}"

/*NO permite interpolación*/
saludo = %q(Hola #{nombre})
saludo = 'Hola #{nombre}'
```

**Métodos**

* `"hola".upcase` (Devuelve una copia de la cadena en mayúsculas)
* `"hola".downcase` ( Devuelve una copia de la cadena en minusculas)
* `"hola".length` (Devuelve la cantidad de caracteres de la cadena)
* `"HoLa".swapcase` (Devuelve una copia de la cadena con caracteres alfabéticos en mayúsculas convertidos a minúsculas y viceversa)
* `"hola".include? "h"` (Devuelve true si el carácter asignado entre está incluido en nuestra cadena o variable)
* `" hola".strip` (Devuelve una copia de la cadena con caracteres alfabéticos en mayúsculas convertidos a minúsculas y minúsculas convertidos a mayúsculas)
* `"".empty` (Devuelve true si la cadena está vacia)
* `"Hola ruby".gsup("ruby", "mundo")` (Devuelve una copia de la cadena con todas las apariciones de patrón sustituidas por el segundo argumento)
* `gsub!` (Para modificar la variable en ves de devolver una copia)

**Operadores**

* `"Hola" + "Mundo"` Concatena 2 strings.
* `"Hola" * n` Multiplica un string n cantidad de veces.

## Symbols

Los symbols son un tipo de dato especial que utiliza Ruby para declarar constantes, esto existe para evitar que se generen más objetos y por lo tanto, no generar espacio de memoria adicional.

Para declarar un símbolo se utilizan los dos puntos

`color = :rojo`

## Arrays

Un array o arreglo es un tipo de datos especial donde vas a poder almacenar múltiples objetos en una sola variable.

Ejemplo:
`letras = ["q", "w", "e", "r", "t", "y"]`

Algo interesante de Ruby es que podemos utilizar números negativos para acceder a las posiciones desde el último elemento del array.

Los arreglos en Ruby no tienen un tipo específico, esto quiere decir que dentro de un array podemos tener diferentes tipos de datos en cada elemento.

Ejemplo:
`arreglo = [4, 4.6, "string", :symbol, [1, 4, 6]]`

Si se usa un índice fuera del rango, el valor va a devolver nil.

**Métodos**

* `letras.include? "y"` Devuelve true si incluye dicho elemento
* `letras.first` Devuelve el primer elemento
* `letras.last` Devuelve el último elemento
* `letras.count { |x| x == "y" }` Nos retorna la cantidad de elementos que cumplen dicha condición
* `[1,2,3,4,5].map { |x| x*2 }` Nos retorna un arreglo modificado según la condición
* `[1,2,3,4,5].select { |x| x.even? }` Nos retorna un arreglo con los elementos seleccionados según la condición
* `[1,2,3,4,5].min` Nos va a retornar el elemento más pequeño
* `[1,2,3,4,5].max` Nos va a retornar el elemento más grande
* `[1,2,3,4,5].sum` Retorna la suma de todos los elementos del arreglo
* `"Hola Mundo".split(" ")` Nos retorna un arreglo con la cadena dentro separada por el elemento dentro del paréntesis
* `["a", "b" ,"c"].join("-")` Retorna los elementos de una matriz en una cadena separada por el elemento dentro del paréntesis
* `letras.sort` Nos retorna una copia ordenada del arreglo

## Hashes

Hashes, también conocidos como arrays asociativos, mapas o diccionarios, son parecidos a los arrays en que son una colección indexada de referencias a objetos. Sin embargo, mientras que en los arrays los índices son números, en los hashes se puede indexar con objetos de cualquier tipo.

Cuando se almacena un valor en un array, se dan dos objetos: el índice y el valor. Luego, se puede obtener dicho valor, gracias al índice.

Los hashes se pueden declarar de 2 formas:

````ruby
capitales = { "Colombia" => "Bogotá", "Perú" => "Lima" }

capitales["Mexico"] = "Ciudad de Mexico"
````

## Condicionales

```ruby
role = :superadmin

if role == :admin
  puts "pantalla de admin"
elsif role == :superadmin
  puts "pantalla de superadmin"
else
  puts "pantalla de login"
end
```

**Métodos**

* `hash.size` Retorna la cantidad de parejas guardadas en el hash
* `hash.empty?` Indica si el hash está vacío
* `hash.has_value? "Washington"` Verifica si el hash tiene el valor
* `hash.has_key? "Washington"` Verifica si el hash tiene ese key
* `hash.invert` Intercambia los valores por las llaves
* `hash.merge({"Marte" => "Musk"})` Junta 2 hashes
* `hash.transform_values { |x| x.downcase }` Transforma todos los valores en base a una regla determinada
* `hash.map { |k,v| "La capital de #{k} es #{v}" }` Ejecuta un comando a todas los registros
* `[["pepito", 13], ["sutanito", 14]].to_h` Convierte un arreglo a hash

## Enlaces de Interés
* [Curso de Ruby](https://platzi.com/clases/ruby/)
* [Ruby Installer](https://rubyinstaller.org)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>