# Curso de Azure PaaS<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->
- [Qué es Paas](#qué-es-paas)
- [Cuándo usar IaaS vs PaaS](#cuándo-usar-iaas-vs-paas)
- [Escenarios habilutales de PaaS](#escenarios-habilutales-de-paas)
- [Servicio de Almacenamiento de Azure](#servicio-de-almacenamiento-de-azure)
  - [Almacenamiento Blob](#almacenamiento-blob)
    - [Contenedores y Archivos](#contenedores-y-archivos)
    - [SDK de .Net para almacenamiento Blob](#sdk-de-net-para-almacenamiento-blob)
- [Azure Storage Explorer](#azure-storage-explorer)
- [Enlaces de Interés](#enlaces-de-interés)

## Qué es Paas

PaaS significa Platform as a Service (Plataforma como servicio). Es un entorno de desarrollo e implementación completo en la nube, con recursos que permiten entregar todo, desde aplicaciones sencillas basadas en la nube hasta aplicaciones empresariales sofisticadas habilitadas para la nube

En PaaS lo que haces es dejar de preocuparte por la administración de tus servidores y empezar a preocuparte por la administración de tus servicios reduciendo la curva de mantenimiento reduce el uso de hardware

## Cuándo usar IaaS vs PaaS

**IaaS**
* Falta de aprendizaje en PaaS
* Alta perzonalización

**PaaS**
* Menos presupuesto
* Despliegue en productivo veloz
* Una arquitectura sólida
* Una estrategia multiplataforma
* Distribución de trabajo

## Escenarios habilutales de PaaS

1. **Desarrollo veloz y continuo**: Cuanto tu sitio web es visitado por muchas personas y quieres ir mejorando poco a poco la experiencia, Paas te va a permitir desplegar continuamente el código que modifiques y publicarlo con un solo paso.
2. **Analisis empresarial**: Es importante el análisis empresarial ya que vivimos en la era de la información y los datos se han convertido en el nuevo petróleo para así poder tomar decisiones mucho mas eficientes y inteligentes
3. **Complementar a nuestra oferta con servicios**: Paas es muy flexible para implementar nuevos servicios o servicios de terceros.
4. **Evolución de un sistema IaaS**: Cuando quieres modificar tu arquitectura y llevarlo a un modelo de Paas.

## Servicio de Almacenamiento de Azure

Azure Storage es un lugar de almacenamiento para tus soluciones.

**Ventajas**:
* Durabilidad
* Disponibilidad
* Escalabilidad

**Tipos de Almacenamiento**:
* Blob
* File
* Table
* Queue
* Disk

### Almacenamiento Blob

El almacenamiento blob es el que permite guardar objetos en Azure. Se puede buardar desde archivos de texto, música, cualquier tipo de cosas. 

**Usos**:
* Bóboda de archivos.
* Apoyo binario en una base de datos.
* Streaming de audio o video.
* Multimedia en sitio web.

#### Contenedores y Archivos

* **Contenedores**: Un contenedor es el equivalente a una carpeta de Windows.

Los contenedores solo pueden ser alfanuméricos, en minúsculas y con guines.

Los archivos dependen siempre de un contenedor. Si se sube un archivo sin contenedor, automáticamente se crea un contenedor con el nombre del archivo.

Tanto los contenedores como los archovos pueden ser públicos o privados.

#### SDK de .Net para almacenamiento Blob



## Azure Storage Explorer

Se puede instalar el Azure Storage Explorer desde [aqui](https://storageexplorer.com).

Para poder crear un espacio de almacenamiento se hace desde el portal de Azure:
1. Nuevo
2. Storage
3. Storage account - blob, file, table, queue

Todos los espacios de almacenamiento creados van a aparecer en ek Azure Storage Explorer al momento de ingresar con la cuenta.

Para obtener la url del archivo y poder verlo desde Internet, solo basta hacer click derecho e ir a propiedades.

Modificar propiedades de acceso:
1. Click Derecho
2. Manage Access Policies
3. o para dar acceso público se puede ingresar a Set Public Access Level.

## Enlaces de Interés
* [Curso de Azure IaaS](https://platzi.com/clases/azure-paas/)

<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>