# Introducción a SQL con PostgreSQL
SQL (Structured Query Language) es un lenguaje estándar de consulta de bases de datos relacionales. Se utiliza para interactuar con las bases de datos y realizar tareas como insertar, actualizar y eliminar datos, así como consultar y extraer datos de una base de datos.

PostgreSQL es un sistema de gestión de bases de datos de código abierto que soporta SQL. Es una opción popular para el desarrollo de aplicaciones empresariales y científicas, y ofrece características avanzadas como compatibilidad con SQL completo, indexación, transacciones y replicación de datos. Además, se encuentra entre los motores de bases de datos más populares y demandados: https://db-engines.com/en/ranking

## Descripción
Este repositorio contiene el material necesario para seguir la parte práctica del curso. Está diseñado para seguir como parte del curso sincrónico, aunque también se pueden realizar las prácticas de manera individual.

## Prerrequisitos
Para utilizar este repositorio se necesita tener instaladas las siguientes herramientas:
* Docker
* docker-compose

### Instalación en Windows
Seguir las instrucciones del sitio oficial:
* Instalar Docker: https://docs.docker.com/desktop/install/windows-install/

### Instalación en Ubuntu
Seguir las instrucciones del sitio oficial:
* Instalar Docker: https://docs.docker.com/engine/install/ubuntu/
Luego, ejecutar los siguientes comandos en una terminal:
```sh
# Agregar el usuario actual al grupo `docker`
sudo usermod -aG docker $USER

# Instalar docker-compose
sudo apt-get install -y docker-compose
```
Los cambios serán efectivos al reiniciar la terminal

## Cómo iniciar el ambiente de pruebas
1. Abrir este repositorio con Visual Studio Code o el IDE de preferencia
2. Iniciar una terminal en la raíz de este repositorio
3. (opcional) Modificar las variables de entorno en el archivo `.env`
3. Ejecutar el siguiente comando:
```sh
docker-compose up -d
```
4. En un navegador web, dirigirse a la dirección: `http://localhost:5050/`
5. Iniciar sesión con las credenciales de `pgadmin`
6. Ir a la opción `Servers > Register > Server`: 
![register server](img/create_server.png?raw=true)
7. Dar un nombre a la conexión: 
![connection name](img/create_server_name.png?raw=true)
7. Ingresar los detalles de la conexión: 
![server details](img/create_server_details.png?raw=true)
7. ¡Listo! Ahora deberías encontrar la conexión disponible: 
![database created](img/create_server_result.png?raw=true)
8. Para ejecutar las instrucciones en SQL debes expandir `postgres > Databases > dvdrental > Schemas > Tables`, luego hacer `clic derecho` en cualquier tabla y seleccionar la opción `Query Tool`: 
![query tool](img/query_tool.png?raw=true)

## Detener el ambiente de pruebas
1. Ejecutar el siguiente comando:
```sh
docker-compose down
```