<p  align="center">
<img  src="https://www.postgresql.org/media/img/about/press/elephant.png"  width="40px">
<br>
<b>Ambientes de instalación y configuración de postgres</b>
</p>

 - Docker <b>(Recomendada)</b>
 - Servicio en la nube - *Neon server*.
 - Local <b>(No recomendada)</b>.

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
