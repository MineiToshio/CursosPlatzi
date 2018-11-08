# Curso de Azure IaaS<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Características del portal de Azure](#características-del-portal-de-azure)
- [Cálculo y monitoreo de costos en Azure](#cálculo-y-monitoreo-de-costos-en-azure)
- [IaaS](#iaas)
  - [Escenarios en los que podemos movernos con IaaS:](#escenarios-en-los-que-podemos-movernos-con-iaas)
  - [Ventajas de IaaS:](#ventajas-de-iaas)
- [Maquinas Virtuales](#maquinas-virtuales)
  - [Configuración básica para crear una Máquina Virtual](#configuración-básica-para-crear-una-máquina-virtual)
- [Instalar un Servidor IIS (Windows)](#instalar-un-servidor-iis-windows)
  - [Habilitar el acceso a IIS de forma remota](#habilitar-el-acceso-a-iis-de-forma-remota)
- [Instalar un Servidor Apache (Linux)](#instalar-un-servidor-apache-linux)
  - [Habilitar el acceso a Apache de forma remota](#habilitar-el-acceso-a-apache-de-forma-remota)
- [Redes Virtuales](#redes-virtuales)
- [Enlaces de Interés](#enlaces-de-interés)

## Características del portal de Azure

Cosas que debes saber de la configuración de la interfaz de Azure:

* La configuración del dashbord de la interfaz de Azure es muy importante antes de comenzar, ya que podemos tener anclado todo lo necesario para nuestro proyecto.
* Puedes configurar cosas como: El idioma, el color de la interfaz para tu comodidad visual y las opciones de notificaciones.
* El portal va a cumulando las columnas a la derecha, lo que significa que no van desapareciendo, únicamente se van recorriendo.
* Azure tiene una terminal de comandos integrada por defecto, no es necesario utilizar ninguna terminal extra.
* Los grupos de recursos de Azure permiten segmentar los recursos según los diferentes clientes que podamos tener.

## Cálculo y monitoreo de costos en Azure

Como desarrolladores, es difícil tener en el panorama temas de costos, generalmente esta parte la dejamos en manos del equipo administrativo, pero es muy importante que se cuide el balanceo entre el negocio y lo que estamos creando.

Para poder ver el consumo en costos, se puede ir a la pestaña **Cost Management + Billing**.

Azure también ofrece una [calculadora de costos](https://azure.microsoft.com/en-us/pricing/calculator/) con la cual puedes estimar el costo promedio de Azure.

## IaaS

* IaaS es la puerta de entrada para cualquier plataforma en la nube, es decir, si ya tenemos un centro de datos y queremos brincar a una plataforma en la nube, la mejor opción es a través de IaaS.
* Podríamos definir IaaS también como una administración de nuestros servidores.
* Se tiene control absoluto del Sistema Operativo.
* Si queremos dedicarnos específicamente a una sola solución es demasiado robusto.
* Con IaaS se puede hacer respaldos de las máquinas virtuales, así como también regresar a los cambios anteriores si es que cometemos algún error en las configuraciones.

### Escenarios en los que podemos movernos con IaaS:

1. Desarrollo y pruebas. Es una buena forma de no tocar el hardware de nuestros equipos para poder probar o romper cosas.
2. Almacenamiento, copias de seguridad y recuperación. Una máquina virtual va a ser tan grande como nuestro presupuesto quiera
3. Informática de alto rendimiento.
4. Análisis de macrodatos. Este escenario nos sirve para temas como Machine Learning y Minería de Datos o Big Data.
5. Hospedaje.

### Ventajas de IaaS:

1. Continuidad de un modelo bajo premisa.
2. Elimina los gastos corrientes.
3. Elimina la estabilidad y compatibilidad.
4. Facilidad de personalización.
5. Te permite enfocarte en una actividad principal.

## Maquinas Virtuales

Cosas importantes que debemos saber de las Máquinas Virtuales en Azure:

* Podemos olvidarnos de detalles de sobrecarga de hardware para poder concentrarnos en el proyecto que estemos trabajando.
* Podemos olvidarnos del ancho de banda que depende de nuestro proveedor de internet.
* Azure notifica cualquier tipo de situación que pueda afectar a los servidores con los que estemos trabajando o si requieren mantenimiento, con un par de semanas o incluso un mes de anticipación.
* Los especialistas en infraestructura ya no tienen que estar pendientes de nada que tenga qué ver con hardware, lo único que se tiene que tomar en cuenta es la memoria RAM, ya que de ésta, tendremos nosotros el control total.
* Debemos calcular muy bien el tamaño de las Máquinas Virtuales.
* Las Máquinas Virtuales no solamente tienen Sistemas Operativos basados en tecnologías de Microsoft, sino también en tecnologías de distribuciones GNU** (Linux).**

**Importante**:

Aprender a manejar las Máquinas Virtuales de la manera más adecuada nos permite dos cosas:
1. Un buen desempeño del escenario que estemos calculando.
2. Invertir en Azure únicamente lo que necesitamos invertir.

**Pasos para crear una Máquina Virtual**:

1. Seleccionar la imagen.
2. Establecer los parámetros de configuración.
3. Comenzar a utilizar.

### Configuración básica para crear una Máquina Virtual

¿Qué debemos considerar para poder crear una **Máquina Virtual**?

* Elegir el Sistema Operativo según la distribución que necesitemos.
* Nombre de la variable con la que vamos a identificar a la Máquina Virtual.
* Elegir el tipo de disco duro. Este paso es muy importante. Puede ser un disco duro de estado sólido o uno mecánico, donde el de estado sólido va a funcionar mejor, pero va a generar un mayor costo.
* Si se requiere conectarse por medio de escritorio remoto o SDCH, es necesario crear un usuario y contraseña.
* Tener un grupo de recursos donde podamos englobar todo lo necesario para nuestras Máquinas Virtuales.
* Configurar la ubicación ya que es importante para la velocidad de acceso de las Máquinas Virtuales desde donde estemos trabajando.
* Tener una licencia en el caso de ser requerido.
* El tamaño de la Máquina Virtual es determinante para nuestras soluciones. Azure muestra la relación entre precio y tamaño para que podamos hacer nuestros cálculos.
* Considerar configuraciones como: Discos administrados, configuración de red, extensiones, alta disponibilidad y monitoreo.
* Azure tiene un paso adicional al final que nos va a permitir validar todo lo que hayamos hecho para configurar nuestra Máquina Virtual.

Una vez creada la máquina virtual, solo se debe de hacer click en **connect** para poder conectarse a la misma. Si es Windows se hará por Escritorio Remoto y si es Linux por ssh.

## Instalar un Servidor IIS (Windows)

1. Ir al Escritorio Remoto
2. Entrar al Server Manager
3. Entrar al Asistente
4. Role-based or feature based instalation
5. Seleccionar el servidor en donde se va a trabajar
6. Activar **Web Server (IIS)**. Next.
7. Seleccionar configuraciones particulares. Next
8. Seleccionar las caractarísticas que el servidor web va a habilitar. Next
9. Install

Para verificar que el IIS está habilitado, abrir un explorador e ingresar a **http://localhost**.

### Habilitar el acceso a IIS de forma remota

1. Ir al portal de Azure.
2. Ir a Intefaces de red.
3. Ir al servidor.
4. Escoger el grupo de seguridad de red.
5. Ir a Reglas de seguridad de entrada.
6. Agregar IIS, Intervalo de puertos 80.
7. Agregar WebServer, Intervalo de puertos 8080.

Nota: La prioridad son la jerarquia de tareas que va a tener.

Para probar que funcione, abrir en un explorador y entrar a la dirección de IP pública.

Los archivos de la página web se encuentran en **C:/inepub/wwwroot**.

## Instalar un Servidor Apache (Linux)

1. Abrir el bash de Ubuntu.
2. Conectarse por SSH a terminal: `ssh usuario@ip`.
3. Poner el password de la máquina virtual.
4. Ir a modo de super usuario: `sudo su`.
5. `apt-get install apache2`.
6. Continuar: Y.
7. Reiniciar el servicio: `service apache2 restart`.
8. `exit`.

Para verificar si la instalación se realizó satisfactoriamente, podemos navegar a la carpeta que se creó para esta configuración.

Ir a la carpeta de var y verificar que exista la carpeta **www**.

```bash
cd ..
cd ..
cd var
```

Dentro www hay una carpeta **html** en donde se encuentra el sitio en donde se va a desplegar.

Nota: si sale un error de **permission denied**, se puede dar permiso al comando anterior con el comando `sudo !!`.

### Habilitar el acceso a Apache de forma remota

1. Ir al portal de Azure.
2. Ir a Intefaces de red.
3. Ir al servidor.
4. Escoger el grupo de seguridad de red.
5. Ir a Reglas de seguridad de entrada.
6. Agregar Apache, Intervalo de puertos 80.
7. Agregar WebServer, Intervalo de puertos 8080.

Para probar que funcione, abrir en un explorador y entrar a la dirección de IP pública.

## Redes Virtuales

**¿Qué es una Red Virtual?**

La comunicación entre máquinas, ya sea bajo premisa o en nube es una parte fundamental de cualquier centro de datos esto permite que las máquinas dentro de una pequeña red se puedan hablar entre sí y también garantiza una seguridad externa. Esto son las Redes Virtuales.

Es una forma en la que nosotros podemos englobar cierto grupo de máquinas seleccionadas para poder trabajar de forma particular, segura y muy cómoda entre los usuarios.

Las Redes Virtuales garantizan que nadie más, dentro de los parámetros establecidos en ellas pueda acceder a los recursos compartidos en estas máquinas, dando así una mayor comodidad a las compañías y también garantizando buena disponibilidad dentro de los elementos.

**¿Por qué debemos considerar crear una Red Virtual?**

* Para crear nubes híbridas: las nubes híbridas es un servidor en la nube y otro de manear local.
* Para establecer sub redes con IPs públicas o privadas.
* Para utilizar grupos de seguridad de red.

**3 tipos de Redes Virtuales**:

1. Site to site. Cuando estamos con nuestros centro de datos bajo premisa, vamos a poder conectar una computadora con otra sin ningún problema en una Red Virtual.
2. Point to site. Nos podemos conectar desde una computadora ubicada en un lugar al centro de datos, puede ser el que se tenga bajo premisa o el que esté en la nube.
3. Express Route. Garantiza una seguridad mucho más amplia. Aquí el tema es que hay que contratar un servidor de un tercero para garantizar que la conexión sea completamente segura dentro de la Red Virtual.

**Escenarios para VPN**:

* Nube híbrida o privada.
* Control empresarial e identificación de acceso.
* Administración y monitoreo.
* Requerimientos avanzados de conectividad.

## Enlaces de Interés
* [Curso de Azure IaaS](https://platzi.com/clases/azure/)
* [Portal de Azure](https://portal.azure.com)
* [Calculadora de Costos](https://azure.microsoft.com/en-us/pricing/calculator/)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>