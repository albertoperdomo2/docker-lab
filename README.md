# Docker lab
## Introducción
Este proyecto proporciona un Dockerfile y scripts para construir y ejecutar una imagen de Docker que ofrece un terminal basado en la web. El terminal web permite a los estudiantes interactuar con un entorno de línea de comandos en un contenedor Docker. Este README explicará el contenido del Dockerfile, el archivo Aptfile y cómo usar la imagen de Docker, ya sea a través de comandos de construcción y ejecución o mediante Docker Desktop.

## Contenidos
### Dockerfile
El archivo `Dockerfile` define los pasos necesarios para construir la imagen de Docker. Aquí está el desglose de lo que hace cada parte:

1. `FROM ubuntu:22.04`: Este comando especifica que nuestra imagen se basará en Ubuntu 22.04.
2. `EXPOSE 8080`: Exponemos el puerto 8080, que se utilizará para acceder al terminal basado en la web.
3. `COPY Aptfile /tmp/Aptfile`: Copiamos el archivo `Aptfile` desde el directorio de construcción local al directorio `/tmp` en la imagen de Docker.
4. `RUN apt-get update -qq && ...`: En este bloque, se actualiza la lista de paquetes y se instalan las dependencias especificadas en el archivo `Aptfile`. Esto se hace en una sola línea para minimizar las capas de la imagen.
5. `RUN curl -k "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && ...`: Instalamos la AWS Command Line Interface (CLI) descargando el archivo zip y ejecutando su instalador.
6. `RUN wget --no-check-certificate -qO - ...`: Configuramos el repositorio de HashiCorp y luego instalamos Terraform.
7. `ENTRYPOINT ["/usr/bin/ttyd", "-p", "8080", "-W", "bash"]`: Establecemos el punto de entrada para la imagen, que inicia `ttyd` (un emulador de terminal) en el puerto 8080 y ejecuta el shell Bash dentro del contenedor cuando se inicia.

### Aptfile
El archivo `Aptfile` contiene la lista de paquetes de Ubuntu que se instalarán en la imagen de Docker. Estos paquetes pueden modificarse según las necesidades del proyecto.

### Scripts de Construcción y Ejecución
- `build.sh`: Este script facilita la construcción de la imagen de Docker. Ejecute `./build.sh` para crear la imagen con la etiqueta `cloud_computing/lab:latest`.
- `run.sh`: Utilice este script para ejecutar un contenedor basado en la imagen creada anteriormente. Ejecute `./run.sh` para iniciar un contenedor llamado `webterminal` que escucha en el puerto 8080.

## Cómo usar
### Construir y ejecutar manualmente
1. Para construir la imagen de Docker, ejecute el comando siguiente desde el directorio donde se encuentra el archivo `Dockerfile`:

    ```bash
    ./build.sh
    ```

2. Una vez que la imagen se haya construido, puede ejecutar un contenedor con el siguiente comando:

   ```bash
   ./run.sh
   ```

Esto iniciará un contenedor con el terminal basado en la web. Luego, abra su navegador web y vaya a `http://localhost:8080` para acceder al terminal basado en la web.

### Usar Docker Desktop
Si está utilizando Docker Desktop en su sistema, siga estos pasos:

1. Construya la imagen como se indicó anteriormente usando `./build.sh`.
2. Ejecute un contenedor desde Docker Desktop con la imagen `cloud_computing/lab:latest` publicando el puerto 8080.
3. Luego, abra su navegador web y vaya a `http://localhost:8080` para acceder al terminal basado en la web.

Esta imagen de Docker proporciona un entorno interactivo en línea de comandos que puede ser útil para enseñar o aprender sobre herramientas de línea de comandos y tecnologías relacionadas.
