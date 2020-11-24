# Curso de Swarm
## Tabla de contenido
- [Curso de Swarm](#curso-de-swarm)
  - [Tabla de contenido](#tabla-de-contenido)
  - [Preparando tus aplicaciones para Docker Swarm: los 12 factores](#preparando-tus-aplicaciones-para-docker-swarm-los-12-factores)
  - [Instalar Docker Swarm](#instalar-docker-swarm)
  - [Fundamentos de Docker Swarm: servicios](#fundamentos-de-docker-swarm-servicios)
  - [Escalación de servicios](#escalación-de-servicios)
  - [Reverse Proxy](#reverse-proxy)
## Preparando tus aplicaciones para Docker Swarm: los 12 factores
1. **Codebase**: Usar un repositorio de código GIT. Tiene que haber una paridad de 1 a 1 con el código de la aplicación.
2. **Dependencias**: Las dependencias tienen que estar declaradas en un archivo versionable. También deben estar empaquetadas en la aplicación para no depender del *host*.
3. **Configuración**: La configuración debe venir dentro de la aplicación y no en otro servidor.
4. **Backing services**: Los servicios que necesita la aplicación, se deben tratar como externos que se comunican.
5. **Build, release and run**: Las aplicaciones en *run* no deben depender de alguna etapa previa.
6. **Processes**: Se debe poder ejecutar sin depender de algún estado en el contexto de la aplicación. La app debe poder hacer su trabajo como una unidad atómica.
7. **Port binding**: La aplicación debe poder exponerse a sí misma sin depender de otra.
8. **Concurrency**: Debe poder correrse con varias aplicaciones en paralelo.
9. **Disposability**: La aplicación debe poder una señal de apagarse y encenderse en cualquier momento.
10. **Dev/Prod Parity**: La entorno en *dev* debe ser lo más parecido al de producción.
11. **Logs**: Los logs deben tratarse como flujo de bytes. Cumplir con STD OUTPUT.
12. **Admin Processes**: La gestión debe poder correrse como un proceso dentro de la aplicación sin tener que entrar al contenedor.

## Instalar Docker Swarm

Docker Swarm no es otro paquete sino una forma de ejecutar Docker.
| COMANDO  | DESCRIPCIÓN |
| :--- | :--- |
| `docker swarm init` | Para crear un nuevo init.|
| `docker swarm join --token <token> ip:puerto` | Para unir un nodo al Swarm |
| `docker swarm join-token manager` | Para agregar otro manager |
| `docker node ls` | lista los nodos disponibles.|
| `docker node inspect self` | para ver infromación detallada del nodo | 
| `docker node inspect --preaty self` | para ver lo mismo pero de manera más presentable | 
| `docker node leave` | para abandonar el Docker Swarm.|
| `docker info` | Para mostrar información del Docker. |

## Fundamentos de Docker Swarm: servicios

Algunos comandos ya no funcionan igual que en Docker, se requiere aprender la nueva sintaxis.

| COMANDO  | DESCRIPCIÓN |
| :--- | :--- |
| `docker service create --name pinger alpine ping www.google.com` | Ejemplo de un servicio llamado "pinger" corriendo en un contenedor con la imagen base de alpine. |
| `docker service ls` | para ver los servicios corriendo |
| `docker service rm pinger` | Para eliminar un servicio, tarda un poco en lo que elimina el contenedor. |
| `docker swarm init --advertise-addr <IP>` | Para crear un Swarm en la IP que se anuncia. |
| `docker node ls` | para mostrar los nodos unidos al swarm (Sólo puede correr en los manager). |

- [Para laboratorios gratuitos](https://labs.play-with-docker.com/)

## Escalación de servicios

| COMANDO  | DESCRIPCIÓN |
| :--- | :--- |
|`docker service scale pinger=5` | Escala a 5 réplicas del mismo servicio |
|`docker service ps pinger` | Para ver todos los servicios replicados en los diferentes nodos. |
| `docker service update --args "ping www.amazon.com" pinger` | Actualiza en caliente los argumentos de un servicio |
| `docker service rollback pinger` | Vuelve al estado anterior |
| `docker service update --replicas=20 pinger` |  Actualizar las replicas de un servicio |
| `docker service update --update-parallelism 4 --update-order start-first pinger` | Actualizar paralelismo y orden dela configuracióndeupdateen el servicio pinger. |
| `docker service update --update-failure-action rollback --update-max-failure-ratio 0.5 pinger` |  Actualizar accion en fallo y radio maximo de falla dela configuracióndeupdateen el servicio pinger |
|`docker service update --rollback-parallelism 0 pinger` |Actualizar paralelismo dela configuracion de rollback en el servicio de pinger. |

## Reverse Proxy


> docker service create --name proxy --constraint=node.role==manager -p80:80 -p9090:8080 --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock --network proxy-net traefik:1.5 --docker --docker.swarmmode --docker.domain=domain.ca --docker.watch --api
