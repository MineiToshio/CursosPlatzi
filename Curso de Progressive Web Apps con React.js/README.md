# Curso de Progressive Web Apps con React.js<!-- omit in toc -->

## Tabla de Contenido<!-- omit in toc -->

## ¿Qué es una PWA?

No hay una definición concreta sobre que es una PWA. Lo mejor es entender como es el panorama actual.

**¿Cómo es la web hoy?**

* Spoiler Alert: No funciona muy bien en mobile.
* Más del 50% de nuestros usuarios está en mobile.
* Tenemos malas conexiones en los dispositivos móviles, conexiones tipo 3G y LTE no son particularmente confiables. Esto genera que un sitio promedio tarda 14 segundos en cargar en mobile.
* La UX no es solamente el diseño de nuestra app, tiene que ver con que tan rápido funciona nuestra aplicación en el mundo real, con un teléfono que tiene una conexión mala.

Hay estudios que demuestran la importancia de lograr que tu sitio funcione rápidamente en dispositivos móviles:
* 50% de los usuarios se van de un sitio que tarda más de 3 segundos en cargar.
* Cada segundo de demora nos cuesta un 5-10% de nuestras ventas.

**Ventajas**:
* Mejor Experiencia de Usuario
* Estar en la Home Screen
* No hay apps Stores
* Dar soporte Offline.

**¿Qué es una PWA?**
Un estándar de calidad, de como debería ser la web pensada primera para mobile.

## Progressive Web App vs. Native App

**Similitudes**
* Trabajar Offline
* Recibir notificaciones
* Ser instaladas en la HomeScreen

**Diferencias**:

**Las Apps Nativas:**
* Acceso de mejor calidad a las funcionalidades nativas de Android y iOS
* Mayor libertad para crear apps avanzadas
* Mejor performance
* Mejores funcionalidades específicas de cada plataforma

**Las PWAs:**
* Mejor desempeño en SEO
* Más sencillo conseguir y convertir usuarios
* Son mejores para sitios de medios, noticias o aplicaciones virales
* Costos de producción menores
* Facilidad para conseguir usuarios

Al momento de decidir deberíamos hacernos la siguiente pregunta:

**¿Podemos crear una experiencia de usuario dramáticamente SUPERIOR con una app nativa?**

## Creación del Proyecto

Crear el proyecto usando `create-react-app`.

```bash
create-react-app platzi-recetas
```

Luego, instalar **react-helmet**, **react-router-dom** y **serve**

```bash
npm i react-helmet react-router-dom serve
```

Finalmente, agregar los scripts en el package.json.

```json
"scripts": {
  "dev": "react-scripts start",
  "start": "serve ./build -s -p ${PORT:-4000}",
  "build": "react-scripts build",
  "test": "react-scripts test --env=jsdom",
  "eject": "react-scripts eject"
}
```

## Enlaces de Interés
* [Curso de Progressive Web Apps con React.js](https://platzi.com/clases/pwa-react-js)
* [Repositorio del Curso](https://github.com/Aerolab/platzi-pwa)
* [Pwastats](pwastats.com)
* [Wpostats](wpostats.com)
  
<div align="right">
  <small><a href="#tabla-de-contenido">🡡 volver al inicio</a></small>
</div>