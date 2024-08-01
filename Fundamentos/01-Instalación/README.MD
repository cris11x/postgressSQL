<p  align="center">
<img  src="https://www.postgresql.org/media/img/about/press/elephant.png"  width="40px">
<br>
<b>Ambientes de instalación y configuración de postgres</b>
</p>

 - Docker <b>(Recomendada)</b>
 - Servicio en la nube - *Neon server*.
 - Instalación Fisica en equipo <b>(No recomendada)</b>.

<hr>
<p  align="left">
<img  src="https://upload.wikimedia.org/wikipedia/commons/7/79/Docker_%28container_engine%29_logo.png"  width="200px">
<br>
<b>Instalación y configuración en DOCKER (RECOMENDADA)</b>
</p>

1. Docker Desktop : https://www.docker.com/products/docker-desktop/
2. Descargar Imagenes de docker.
```
docker pull postgres:15.3
docker pull dpage/pgadmin4
```
3. Configuración para levantar ambos contenedores instalados.

**Ubicación del archivo:** "01-Docker/sql/**docker-compose.yml**"

4. En la terminal ubicarnos en la carpeta donde esta el archivo <b>"docker-compose.yml"</b> y escribir el siguiente comando.
```
docker compose up -d
```
Ejecutado el comando debe estar corriendo ambas imagenes.

5. En el caso de cambiar el puerto de postgres o de pgadmin, se debe editar el puerto en el archivo de configuración "01-Docker/sql/**docker-compose.yml**" bajar ambos contenedores con el comando:
```
docker compose down
```
despues volver al levantar el contenedor con el comando:
```
docker compose up -d
```
<hr>
<p  align="left">
<img  src="https://neon.tech/_next/static/svgs/6da928883916f39a4848774319dcaf81.svg"  width="200px">
<br>
<b>Instalación en la nube - Neon.tech</b>
</p>

1. Neon.tech : https://www.docker.com/products/docker-desktop/
2. Registrarse o loguearse.
3. Inicialmente se debe asigniar el **nombre del proyecto**, la **versión de postgres**, el **nombre de la base de datos**, y la **región**.
4. En el dashboart en la pantalla principal, habra un string con los parametros de conexión:
```
postgresql://prueba_owner:riBGkFbL4Kn1@ep-bold-cloud-a5jjkmqk.us-east-2.aws.neon.tech/prueba?sslmode=require
 ```
 que puede ser accedidos desde un gestor de base de datos postgres.
<hr>

<p  align="left">
<img  src="https://www.postgresql.org/media/img/about/press/elephant.png"  width="60px">
<br>
<b>Instalación fisica en equipo (NO RECOMENDADO)</b>
</p>
