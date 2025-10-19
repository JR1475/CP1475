# Resumen generado por IA

Este documento contiene un resumen del punto [3.2.1], generado con inteligencia artificial.

# 3.2 PROCESO DE ARRANQUE DE UN ORDENADOR
## 3.2.1 CUANDO PULSAMOS EL BOTÓN DE ENCENDIDO

### Introducción

El proceso de arranque de un ordenador comienza cuando pulsamos el botón de encendido y sigue una secuencia específica de pasos para cargar el sistema operativo. Como señala el documento: "No es igual un arranque del ordenador cuando está apagado, que un reseteo. Al resetear un equipo parte de la BIOS ya está cargada en la RAM y obviamente hay fases que se pueden obviar puesto que ya han sido comprobadas."

### 1. Secuencia de Arranque

#### 1.1 Suministro de Corriente

**Según el documento:**
- "Cuando pulsamos el botón de encendido situado en la parte frontal del ordenador lo que hacemos es permitir que la corriente llegue a la placa base y también al microprocesador, lectores ópticos, discos duros y demás dispositivos conectados."

#### 1.2 La BIOS

**Según el documento:**
- "El microprocesador se inicia y carga la BIOS en memoria o directamente lee la ROM(EEPROM) y la ejecuta desde ahí. La BIOS es un programa(un software) cuya principal finalidad es cargar el sistema operativo en memoria."

#### 1.3 El POST (Power On Self Test)

**Según el documento:**
- "Posteriormente se empieza a ejecutar el POST. POST es el acrónimo de Power On Self Test(Autotest de arranque)."
- "La finalidad es comprobar que el sistema está preparado para funcionar."

**Tareas principales del POST:**
- Verificar la RAM y recuento de la memoria
- Verificar la propia BIOS
- Verificar dispositivos y buses de sistema
- Ejecutar programas específicos como la SCSI-BIOS, Vídeo BIOS, etc.
- Seleccionar el dispositivo desde el cual va a arrancar el sistema operativo
- Asignar canales DMA e IRQ

#### 1.4 Búsqueda del Sector de Arranque (MBR)

**Según el documento:**
- "La BIOS va buscando el dispositivo de arranque según la secuencia de búsqueda que esta predeterminada en la misma (esta secuencia se puede modificar en la BIOS, haciendo que arranque primero desde el disco duro, lector de DVD...)."
- "El sector de arranque es el primer sector de todo disco. Cada sector contiene 512 bytes y el primer sector o sector 0 es el sector de arranque del disco."

#### 1.5 Carga del Boot Manager

**Según el documento:**
- "Normalmente en esos 512 bytes se encuentra un pequeño programa (Boot Manager) que realiza la carga del sistema operativo."
- "El Boot Manager es un pequeño programita que permite cargar el sistema operativo."

#### 1.6 Carga del Sistema Operativo

**Según el documento:**
- "Una vez que se empieza a cargar el sistema operativo lo primero que se carga es el núcleo o kernel del mismo."
- "Es la parte que realiza las operaciones más básicas del sistema operativo."
- "Una vez cargado el núcleo se comienzan a activar los demás procesos que realizan las operaciones de nuestro sistema como las funciones de red, funciones de sonido, funciones de visualización, escritorio, etc."

### Conclusión

El proceso de arranque es una secuencia bien definida que garantiza que el sistema se inicialice correctamente. Como señala el documento: "La BIOS es un programa cuya principal finalidad es cargar el sistema operativo en memoria." Comprender este proceso es fundamental para diagnosticar problemas de arranque y para configurar adecuadamente el sistema, especialmente cuando se modifican parámetros en la BIOS o se cambia la secuencia de arranque para instalar nuevos sistemas operativos.
