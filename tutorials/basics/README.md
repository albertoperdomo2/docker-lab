# Tutorial de Terminal Linux para Principiantes
Este tutorial está diseñado para ayudar a los estudiantes a familiarizarse con las operaciones y tareas básicas en un terminal de Linux.

## ¿Qué es un Terminal?
Un terminal, también conocido como línea de comandos o interfaz de consola, es una interfaz basada en texto para interactuar con su sistema operativo.

## Actividad 1: Introducción a la Terminal
### Objetivos
- Familiarizarse con la interfaz de la terminal.
- Aprender a abrir y cerrar la terminal.

### Tareas
1. **Abrir la Terminal**: En la mayoría de los entornos de escritorio Linux, puedes abrir la terminal buscando "terminal" en el menú de aplicaciones o presionando `Ctrl + Alt + T`.
2. **Explorar la Interfaz**: Observa la interfaz de la terminal. Notarás un prompt, que generalmente termina en `$` o `#`, dependiendo de si eres un usuario normal o el superusuario (root).
3. **Cerrar la Terminal**: Puedes cerrar la terminal haciendo clic en el botón de cerrar o escribiendo `exit` y presionando Enter.

## Actividad 2: Navegación Básica
### Objetivos
- Aprender a navegar por los directorios.
- Entender la estructura de directorios de Linux.

### Tareas
1. **Ver el Directorio Actual**: Escribe `pwd` y presiona Enter. Esto te mostrará tu directorio actual.
2. **Listar Contenido de un Directorio**: Usa `ls` para ver los archivos y carpetas en tu directorio actual.
3. **Cambiar de Directorio**: Utiliza `cd [nombre_del_directorio]` para moverte a otro directorio. Por ejemplo, `cd Documentos`. Para volver atrás, usa `cd ..` y para ir a tu directorio personal, simplemente escribe `cd`.

## Actividad 3: Manipulación de Archivos y Directorios
### Objetivos
- Aprender a crear, mover, renombrar y eliminar archivos y directorios.

### Tareas
1. **Crear un Directorio**: Usa `mkdir [nombre_del_directorio]` para crear un nuevo directorio.
2. **Crear un Archivo Vacío**: Escribe `touch [nombre_del_archivo]` para crear un archivo vacío.
3. **Mover/Renombrar un Archivo**: `mv [nombre_original] [nuevo_nombre]` sirve para renombrar o mover un archivo.
4. **Copiar un Archivo**: Copia archivos con `cp [archivo_original] [nuevo_archivo]`.
5. **Eliminar Archivos y Directorios**: Usa `rm [nombre_del_archivo]` para eliminar archivos y `rm -r [nombre_del_directorio]` para eliminar directorios.

## Actividad 4: Edición de Texto Básica
### Objetivos
- Introducción a editores de texto en la terminal.

### Tareas
1. **Usar Vim**: Vim es un editor de texto simple. Escribe `vim [nombre_del_archivo]` para abrir o crear un archivo con Vim.
2. **Editar y Guardar**: Pulsa `i` para `insert mode` y escribe algo de texto. Para guardar, escribe `:w`, luego Enter, y para salir, `:q`.
3. **Visualizar Contenido de Archivos**: Usa `cat [nombre_del_archivo]` para ver el contenido de un archivo directamente en la terminal.

## Actividad 5: Uso Básico de Comandos
### Objetivos
- Comprender el uso de comandos comunes y su sintaxis.

### Tareas
1. **Ver la Fecha y Hora**: Escribe `date`.
2. **Ver el Uso del Disco**: Usa `df` para ver el espacio de disco disponible y `du` para el espacio usado por un directorio.
3. **Ver Procesos Actuales**: Escribe `top` para ver los procesos en ejecución.

## Actividad 6: Redirección y Tuberías
### Objetivos
- Aprender sobre la redirección y las tuberías.

### Tareas
1. **Redirección de Salida**: Usa `echo "Hola Mundo" > hola.txt` para redirigir la salida a un archivo.
2. **Uso de Tuberías**: Combina comandos usando `|`, como en `ls -l | less` para ver una lista larga de archivos página por página o `cat hola.txt | grep "Mundo"` para filtrar.

## Actividad 7: Permisos de Archivos
### Objetivos
- Entender y modificar los permisos de los archivos.

### Tareas
1. **Ver Permisos**: Usa `ls -l` para ver los permisos de los archivos.
2. **Cambiar Permisos**: Modifica permisos con `chmod`. Por ejemplo, `chmod 755 [archivo]` para hacerlo ejecutable.

## Actividad 8: Gestión de Paquetes
### Objetivos
- Aprender a instalar y eliminar software, por ejemplo `ruby-full`.

### Tareas
1. **Actualizar la Lista de Paquetes**: Ejecuta `sudo apt update`.
2. **Instalar un Paquete**: Instala software con `sudo apt install [nombre_del_paquete]`.
3. **Eliminar un Paquete**: Usa `sudo apt remove [nombre_del_paquete]`.

## Actividad 9: Personalización de la Terminal
### Objetivos
- Personalizar la apariencia y comportamiento de la terminal.

### Tareas
1. **Editar Bashrc**: Usa `vim ~/.bashrc` para abrir el archivo de configuración.
2. **Añadir Alias**: Añade alias como `alias ll='ls -l'` y luego guarda y cierra el archivo.
3. **Aplicar Cambios**: Escribe `source ~/.bashrc` para aplicar los cambios.

## Actividad 10: Scripts Básicos en Bash
### Objetivos
- Crear y ejecutar scripts básicos.

### Tareas
1. **Crear un Script**: Escribe `vim script.sh` y agrega comandos como `echo "Hola Mundo"`.
2. **Hacer el Script Ejecutable**: Usa `chmod +x script.sh`.
3. **Ejecutar el Script**: Escribe `./script.sh`.
