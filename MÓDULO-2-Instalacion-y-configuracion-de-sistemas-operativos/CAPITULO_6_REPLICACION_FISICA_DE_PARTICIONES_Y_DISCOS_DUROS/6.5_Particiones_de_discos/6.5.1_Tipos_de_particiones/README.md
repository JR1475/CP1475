# Resumen generado por IA

Este documento contiene un resumen del punto [6.5.1], generado con inteligencia artificial.

# 6.5 PARTICIONES DE DISCOS

## 6.5.1 TIPOS DE PARTICIONES

### Introducción a las particiones

Las particiones son **la manera en que se divide el disco físico, de forma que cada una de ellas funciona como si fueran unidades separadas**. Constituyen un elemento fundamental en la organización del almacenamiento, permitiendo:

- Formatear cada partición con un sistema de archivos diferente
- Asignar letras de unidad distintas (C:, D:, etc.)
- Separar el sistema operativo de los datos del usuario
- Instalar múltiples sistemas operativos en el mismo disco

Como se menciona en la base de conocimientos:
> "Las particiones hacen que un disco duro, o una parte de él, pueda ser utilizado como medio de almacenamiento (a pesar de no ser ortodoxo, también se les puede denominar volúmenes). Constituyen la manera en que se divide el disco físico, de forma que cada una de las particiones funciona como si fuera una unidad separada."

### Tipos de particiones tradicionales (MBR)

#### 1. Particiones primarias

**Definición y características**:
- Son reconocidas por la BIOS del ordenador como capaces de iniciar el sistema operativo desde ellas
- Disponen de un sector de arranque (BOOT SECTOR) que carga el sistema operativo
- **Limitación fundamental**: Solo puede haber **cuatro particiones primarias** en un disco con esquema MBR
- En este tipo de particiones cualquier sistema operativo puede detectarlas y asignarles una unidad siempre que sea compatible el sistema de archivos

**Casos de uso**:
- La partición primaria correspondiente a la unidad C: (sistema operativo)
- Particiones para sistemas operativos adicionales en configuraciones de arranque múltiple
- Particiones para datos críticos que requieren acceso directo

#### 2. Partición extendida

**Definición y características**:
- Se forma en las áreas del disco duro que no tienen particiones primarias y que están contiguas
- **Solo puede existir una partición extendida por disco**
- Sirve como contenedor para múltiples unidades lógicas
- No soporta directamente ningún sistema de archivos (es solo un contenedor)
- Permite superar la limitación de las cuatro particiones primarias

**Funcionamiento**:
- Actúa como una partición primaria especial
- No se le asigna una letra de unidad
- Sirve exclusivamente para contener particiones lógicas

#### 3. Particiones lógicas

**Definición y características**:
- Ocupan toda o una parte de una partición extendida
- Han sido formateadas a un determinado sistema de archivos
- **Pueden existir hasta un máximo de 23 particiones lógicas** en una partición extendida
- Se les asigna una letra de unidad (D:, E:, F:, etc.)

**Ventajas**:
- Permiten crear más de cuatro particiones en un solo disco
- Flexibilidad para organizar datos sin necesidad de múltiples discos físicos
- Posibilidad de asignar diferentes sistemas de archivos a diferentes particiones

### Sistema GPT (GUID Partition Table)

#### Introducción y adopción

**Definición**:
- GPT (GUID Partition Table) es un esquema de particionado más moderno que reemplaza al tradicional MBR (Master Boot Record)
- A partir de Windows Server 2003 SP1 se empezaron a utilizar discos con GPT
- Es parte del estándar UEFI (Unified Extensible Firmware Interface)

**Adopción**:
> "A partir de Windows Server 2003 SP1 se empezaron a utilizar discos con GPT (Tabla de Particiones GUID) y están recomendados para discos con un tamaño superior a 2 TB o para equipos basados en Itanium."

#### Características principales

**1. Número de particiones aumentado**:
- **Pueden crearse hasta 128 particiones primarias** en Windows (el estándar GPT permite hasta 128 por defecto, aunque técnicamente podría soportar más)
- **No existe la limitación de cuatro particiones** como en MBR
- **No es necesario crear particiones extendidas ni unidades lógicas** gracias a este aumento en el número de particiones permitidas

**2. Soporte para discos de gran capacidad**:
- Soporta discos de hasta 9.4 ZB (zettabytes) teóricamente
- Elimina el límite de 2 TB impuesto por MBR
- Esencial para discos modernos de alta capacidad

**3. Estructura de partición**:
- Contiene una partición de sistema con Interfaz de Firmware Extensible (EFI)
- Incluye los archivos necesarios para iniciar el equipo
- Mantiene una copia de seguridad de la tabla de particiones al final del disco

**4. Verificación de integridad**:
- Incluye sumas de verificación (CRC32) para detectar corrupción en la tabla de particiones
- Mantiene una copia de respaldo de la tabla de particiones
- Proporciona mayor resistencia frente a errores de escritura

#### Ventajas sobre MBR

**1. Mayor flexibilidad**:
- Sin necesidad de particiones extendidas y lógicas
- Posibilidad de crear múltiples particiones de arranque
- Soporte para múltiples sistemas operativos sin complejidad adicional

**2. Mayor capacidad**:
- Elimina el límite de 2 TB para el primer sector de arranque
- Permite utilizar discos completos sin dejar espacio sin asignar
- Soporte nativo para discos de alta capacidad

**3. Mayor fiabilidad**:
- Detección automática de corrupción en la tabla de particiones
- Mecanismos de recuperación integrados
- Menor probabilidad de pérdida de datos por corrupción de la tabla de particiones

**4. Compatibilidad con UEFI**:
- Requerido para Secure Boot en sistemas modernos
- Soporte para arranque desde discos grandes
- Mejor integración con características de seguridad modernas

#### Requisitos y compatibilidad

**Requisitos de hardware**:
- Firmware UEFI (no funciona con BIOS tradicional)
- Para Windows 11, TPM 2.0 y Secure Boot habilitado
- Hardware compatible con UEFI (la mayoría de sistemas desde 2010 en adelante)

**Compatibilidad con sistemas operativos**:
- **Windows**: 
  - Soporte completo desde Windows 8/Server 2012
  - Limitado en Windows 7 (requiere parches)
  - No compatible con Windows XP y anteriores
- **Linux**: 
  - Soporte completo en la mayoría de distribuciones modernas
  - Requiere firmware UEFI para arranque
- **macOS**: 
  - Requiere GPT para sistemas modernos
  - Totalmente compatible

**Consideraciones para arranque**:
- Los sistemas con GPT requieren UEFI para el arranque
- En sistemas con BIOS tradicional, GPT solo puede usarse para datos (no para arranque)
- Windows requiere una partición ESP (EFI System Partition) para el arranque

### Comparativa MBR vs GPT

| Característica | MBR | GPT |
|----------------|-----|-----|
| **Número máximo de particiones primarias** | 4 | 128 (en Windows), teóricamente ilimitado |
| **Soporte para discos >2 TB** | No | Sí |
| **Mecanismos de recuperación** | Básicos | Avanzados (copia de seguridad de la tabla) |
| **Verificación de integridad** | No | Sí (sumas de verificación) |
| **Requiere UEFI** | No | Sí (para arranque) |
| **Partición de recuperación** | No | Sí (ESP - EFI System Partition) |
| **Sistemas operativos compatibles** | Todos | Modernos (Windows 8+, Linux moderno, macOS) |
| **Soporte para Secure Boot** | Limitado | Completo |
| **Tamaño máximo de disco** | 2 TB | 9.4 ZB (teórico) |

### Herramientas de gestión de particiones

#### 1. Administración de discos (Windows)
- Accesible desde "Administrador de equipos" > "Almacenamiento" > "Administración de discos"
- Permite:
  - Crear, eliminar y formatear particiones
  - Cambiar letras de unidad
  - Marcar particiones como activas
  - Convertir entre MBR y GPT (requiere eliminar todas las particiones)
  - Extender y reducir volúmenes (solo NTFS)

> "Para crear una partición, siga los pasos siguientes: [En Administración de discos] 9. En cualquier momento puede activar la partición para que arranque el sistema desde ella si selecciona 'Marcar la partición como activa' de su menú contextual."

#### 2. Herramientas de línea de comandos
- **diskpart**: Herramienta versátil para gestión avanzada de particiones
- **gdisk**: Para conversión y gestión de GPT en entornos avanzados
- ** parted**: En sistemas Linux para gestión de particiones GPT

#### 3. Herramientas de terceros
- **GParted**: Herramienta gráfica de código abierto para Linux
- **AOMEI Partition Assistant**: Para gestión avanzada en Windows
- **EaseUS Partition Master**: Para conversión MBR-GPT sin pérdida de datos

### Consideraciones prácticas

#### Conversión MBR a GPT
- Requiere eliminar todas las particiones en MBR (a menos que se use herramienta de terceros)
- Windows proporciona la herramienta `mbr2gpt` para conversión sin pérdida de datos
- Requiere sistema UEFI para arranque posterior

#### Planificación de particiones en GPT
- Reservar espacio para la partición ESP (100-500 MB)
- Considerar partición de recuperación de Windows (varía según versión)
- Planificar particiones para múltiples sistemas operativos si es necesario
- Reservar espacio para futuras expansiones

#### Limitaciones importantes
- Windows limita a 128 particiones por disco (aunque GPT permite más)
- Algunas herramientas de recuperación antiguas no soportan GPT
- En sistemas híbridos (BIOS + GPT), el arranque puede requerir CSM (Compatibility Support Module)

---

## Conclusión

Las particiones de discos han evolucionado significativamente con la introducción de GPT, eliminando las limitaciones históricas del esquema MBR. Como se destaca en la base de conocimientos:
> "Pueden crear hasta un número ilimitado de particiones primarias y, como no existe la limitación a cuatro particiones, no es necesario crear particiones extendidas ni unidades lógicas."

GPT representa un avance fundamental que:
- Elimina la limitación de cuatro particiones
- Permite trabajar con discos de gran capacidad (>2 TB)
- Proporciona mayor fiabilidad mediante mecanismos de verificación
- Es esencial para la seguridad moderna con Secure Boot
- Facilita la administración de sistemas complejos

La transición hacia GPT es inevitable dada la evolución del hardware de almacenamiento y los requisitos de seguridad modernos. Como se menciona en la base de conocimientos, GPT está "recomendado para discos con un tamaño superior a 2 TB o para equipos basados en Itanium", aunque en la práctica se ha convertido en el estándar para todos los sistemas modernos, especialmente con la adopción generalizada de UEFI y los requisitos de seguridad más estrictos en sistemas operativos recientes como Windows 11.

La comprensión de estos esquemas de particionado es fundamental para la instalación y configuración adecuada de sistemas operativos modernos, especialmente en entornos que requieren múltiples sistemas operativos o gestión avanzada de almacenamiento.
