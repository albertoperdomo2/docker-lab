# Tutorial Básico de Terminal para Linux
## Introducción
Este tutorial está diseñado para ayudar a los estudiantes a familiarizarse con las operaciones y tareas básicas en un terminal de Linux.

## ¿Qué es un Terminal?
Un terminal, también conocido como línea de comandos o interfaz de consola, es una interfaz basada en texto para interactuar con su sistema operativo.

## Abrir el Terminal
Para abrir el terminal en Ubuntu, puedes usar la combinación de teclas Ctrl + Alt + T o buscar Terminal en tus aplicaciones.

## Comandos Básicos
1. pwd (Print Working Directory)
Muestra el directorio actual en el que te encuentras.
```
pwd
```

2. ls (List)
Lista los archivos y directorios en el directorio actual.
```
ls
```

Para ver archivos ocultos y detalles adicionales, usa `ls -la`.

3. cd (Change Directory)
Cambia el directorio actual.
```
cd /ruta/del/directorio
```
Usa `cd ..` para volver al directorio padre.

4. mkdir (Make Directory)
Crea un nuevo directorio.
```
mkdir nombre_del_directorio
```

5. rmdir (Remove Directory)
Elimina un directorio (debe estar vacío).
```
rmdir nombre_del_directorio
```

6. touch
Crea un nuevo archivo vacío.
```
touch nombre_del_archivo
```

7. rm (Remove)
Elimina archivos o directorios.
```
rm nombre_del_archivo
```

Para eliminar un directorio y su contenido, usa `rm -r`.

8. nano, vim, emacs
Editores de texto en el terminal. Puedes abrir o editar archivos con ellos.
```
vim nombre_del_archivo
```

9. cat (Concatenate)
Muestra el contenido de un archivo.
```
cat nombre_del_archivo
```

10. sudo (SuperUser DO)
Ejecuta comandos con privilegios de superusuario.
```
sudo comando
```

## Gestión de Paquetes con apt
Ubuntu utiliza apt para la gestión de paquetes.

### Actualizar Lista de Paquetes
```
sudo apt update
```

### Instalar un Paquete
```
sudo apt install nombre_del_paquete
```

### Eliminar un Paquete
```
sudo apt remove nombre_del_paquete
```

## Redirección y pipes
Usa `>` para redirigir la salida de un comando a un archivo, y `|` para pasar la salida de un comando a otro.

### Ejemplo de Redirección
echo "Hola Mundo" > hola.txt

### Ejemplo de pipe
cat hola.txt | grep Hola

## Permisos de Archivos
Usa chmod para cambiar los permisos de un archivo o directorio.

### Cambiar Permisos
```
chmod 755 nombre_del_archivo
```

## Ver Procesos
Usa `top` o `htop` (si está instalado) para ver los procesos en ejecución. Tambien, para ver procesos sirve `ps aux`. 
