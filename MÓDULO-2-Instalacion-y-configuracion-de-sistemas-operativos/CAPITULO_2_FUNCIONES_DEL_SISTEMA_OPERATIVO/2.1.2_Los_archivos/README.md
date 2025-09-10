# Resumen generado por IA

Este documento contiene un resumen del punto [2.1.2], generado con inteligencia artificial.

# 2.1.2 Los archivos

## Definición y concepto fundamental

Los archivos son **los objetos encargados de contener los datos** en un sistema informático. Constituyen un mecanismo de abstracción esencial que permite almacenar información en el disco y recuperarla posteriormente sin que el usuario deba preocuparse por la forma física de almacenamiento ni del funcionamiento real de los dispositivos de almacenamiento.

El sistema operativo proporciona una visión uniforme para todos los sistemas de almacenamiento, definiendo una unidad lógica denominada **archivo**, que es un conjunto de información relacionada definida por su creador. Los archivos siempre contienen información binaria, pero según su tipo y formato, la interpretación será diferente:
- Líneas de código o instrucciones (programas ejecutables)
- Caracteres (archivos de texto)
- Píxeles (formatos gráficos)
- Notas musicales (archivos MIDI)
- Registros (archivos de bases de datos)
- Entre otros tipos especializados

## Características esenciales

### Permanencia
Los archivos almacenan información de forma permanente (no volátil), trascendiendo a la duración de los procesos que los utilizan o generan. Esto cumple con las condiciones esenciales para el almacenamiento a largo plazo:
- Debe ser posible almacenar una cantidad muy grande de información
- La información debe sobrevivir a la conclusión del proceso que la utiliza
- Debe ser posible que varios procesos tengan acceso concurrente a la información

### Referenciación
Los archivos son referenciados principalmente por su nombre, pero también poseen múltiples propiedades o atributos que los caracterizan:
- Tipo de archivo
- Fecha y hora de creación
- Fecha y hora de última modificación
- Tamaño (espacio que ocupan)
- Nombre o identificador del creador
- Permisos de acceso

## Atributos de los archivos

Los archivos poseen diversos atributos que determinan su comportamiento y características:

- **H (Hidden/Oculto)**: Indica si el archivo está oculto. Los archivos ocultos no se visualizan en listados normales del directorio.
  
- **R (Read Only/Solo lectura)**: Indica si el archivo es de solo lectura o permite también su escritura.
  
- **A (Archivo)**: Se suele cambiar cuando se modifica el archivo. Su mayor utilidad es determinar qué archivos se modificaron desde la última copia de seguridad.
  
- **Fecha y Hora**: Almacenan la fecha y hora de creación o modificación del archivo.
  
- **Tamaño**: Almacena el espacio que ocupa el archivo en el sistema de almacenamiento.

En sistemas como Linux, existen atributos adicionales para indicar la pertenencia del archivo a un determinado usuario o grupo, y los permisos específicos sobre dicho archivo (lectura, escritura, ejecución).

## Nomenclatura de archivos

Las reglas para nombrar los archivos varían según el sistema de archivos:

- En general, los sistemas operativos permiten cadenas de hasta ocho caracteres como nombre de archivo, aunque sistemas modernos como Linux y últimas versiones de Windows permiten mayor longitud.
  
- Algunos sistemas distinguen entre mayúsculas y minúsculas en los nombres de archivos/directorios (como Linux), mientras que otros no (como Windows).
  
- Los nombres de archivos no pueden contener determinados caracteres prohibidos: `\`, `/`, `:`, `*`, `?`, `^`, `<`, `>`, `|`.
  
- El nombre de un archivo no puede repetirse en la misma ubicación (carpeta o directorio).

## Tipos de archivos

Existen diversos tipos de archivos según su función y contenido:

- **Archivos de datos**: Contienen información específica para aplicaciones (documentos, imágenes, videos, etc.)
  
- **Archivos ejecutables**: Contienen programas que pueden ser ejecutados por el sistema
  
- **Archivos de sistema**: Elementos que utiliza el sistema operativo, normalmente ocultos (con extensiones como sys, ini, dll en Windows)
  
- **Archivos de configuración**: Almacenan parámetros y ajustes de programas o del sistema

Algunos ejemplos de extensiones comunes:
- `.txt` - Archivos de texto plano
- `.docx` - Documentos de procesador de textos
- `.xlsx` - Hojas de cálculo
- `.jpg`, `.png` - Imágenes
- `.mp3`, `.wav` - Audio
- `.mp4`, `.avi` - Video

## Operaciones comunes con archivos

Los usuarios y aplicaciones realizan diversas operaciones fundamentales con los archivos:

1. **Creación**: Añadir un nuevo archivo al sistema de archivos.
   
2. **Apertura**: Localizar e identificar un archivo existente para trabajar con él.
   
3. **Cierre**: Finalizar el acceso a un archivo después de trabajar con él.
   
4. **Lectura**: Obtener datos desde un archivo.
   
5. **Escritura**: Almacenar datos en un archivo.
   
6. **Cambio de nombre (Renombrado)**: Modificar el identificador del archivo.
   
7. **Copia**: Duplicar un archivo en otra ubicación.
   
8. **Movimiento**: Transferir un archivo de una ubicación a otra.
   
9. **Eliminación**: Borrar un archivo del sistema de archivos.
   
10. **Propiedades**: Consultar y modificar atributos del archivo.

## Sistemas de archivos modernos

Los sistemas de archivos han evolucionado significativamente:

- **ext3fs**: Sistema eficiente y flexible, permite hasta 256 caracteres en nombres de archivos, volumen máximo de 32 TB y archivo máximo de 2 TB. Distingue entre mayúsculas y minúsculas y dispone de registro de diario.
  
- **ext4fs**: Compatible con ext3, permite hasta 256 caracteres en nombres, volumen máximo de 1 EB (exabyte) y archivo máximo de 16 TB. También distingue entre mayúsculas y minúsculas y tiene registro de diario.

## Carpetas y archivos del sistema

Las carpetas y archivos del sistema son elementos críticos que utiliza el sistema operativo. Normalmente están ocultos y es esencial que no sean eliminados ni modificados directamente por el usuario, ya que podrían causar que el sistema operativo o aplicaciones dejen de funcionar correctamente.

Ejemplos importantes:
- **System Volume Information**: Carpeta en la raíz de las unidades de disco, oculta, que genera un error de "Acceso Denegado" si se intenta acceder.
- Archivos con extensiones `.sys`, `.ini`, `.dll` en sistemas Windows
- Archivos de configuración del sistema operativo

Estos elementos son fundamentales para el correcto funcionamiento del sistema y deben manejarse con precaución, preferiblemente mediante herramientas oficiales proporcionadas por el sistema operativo.
