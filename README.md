# Script de cambio de fondo de pantalla
Este script es una herramienta que permite cambiar automáticamente el fondo de pantalla en un sistema basado en Unix.

## Funcionamiento
El script se ejecuta en el terminal y realiza las siguientes acciones:
1. Verifica si el directorio especificado existe.
2. Lee todas las imágenes en el directorio y selecciona aquellas con extensiones de imagen válidas.
3. Elige una imagen al azar de la lista de imágenes válidas.
4. Elimina el archivo de fondo de pantalla anterior (si existe).
5. Crea un enlace simbólico desde la imagen seleccionada hasta el archivo de fondo de pantalla.

## Uso
Para usar este script, siga los siguientes pasos:
1. Descargue el script de este repositorio.
2. Asegúrese de tener permisos de ejecución en el script: `chmod +x wallpaper.sh`
3. Ejecute el script: `./wallpaper.sh`

Nota: El directorio por defecto es `/home/hecdelatorre/Pictures/r-wallpapers`, pero puede ser modificado para apuntar a otro directorio de imágenes.

## Requisitos
- Sistema operativo basado en Unix
- Comandos `rm` y `ln` disponibles en el sistema.
