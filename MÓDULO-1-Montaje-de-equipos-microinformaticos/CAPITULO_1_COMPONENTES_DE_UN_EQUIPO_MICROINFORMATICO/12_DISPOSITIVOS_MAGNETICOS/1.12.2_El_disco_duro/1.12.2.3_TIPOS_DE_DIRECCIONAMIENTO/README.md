# Resumen generado por IA

Este documento contiene un resumen del punto [1.12.2.3], generado con inteligencia artificial.

# 1.12.2.3 TIPOS DE DIRECCIONAMIENTO

## Introducción

El direccionamiento es el sistema mediante el cual el sistema operativo localiza y accede a los datos almacenados en un disco duro. Como señala el documento original: "CHS(Cylinder – Head – Sector). Actualmente este sistema no se usa pues fue el primer sistema de direccionamiento que se uso. Mediante la información del cilindro, la cabeza y el sector se pueden conocer la posición de un dato en un disco."

## 1. Tipos Principales de Direccionamiento

### 1.1 CHS (Cylinder-Head-Sector)

**Definición:**
- Sistema de direccionamiento físico que identifica cada sector mediante tres coordenadas:
  - **Cilindro:** Conjunto de pistas en la misma posición radial en todos los platos
  - **Cabeza:** Identifica la cara del plato (superior o inferior)
  - **Sector:** Posición dentro de la pista

**Características:**
- Era el primer sistema de direccionamiento utilizado en discos duros
- Limitación de capacidad máxima: 504 GB (debido a restricciones técnicas)
- Requiere conocer la geometría física del disco
- Dado que "las pistas no tienen el mismo tamaño (las pistas exteriores son más grandes), los discos duros actuales tienen más sectores en las pistas externas que en las internas"

**Desventajas:**
- Ineficiencia en el uso del espacio en discos modernos
- Limitación de capacidad
- Complejidad en la gestión de la geometría física

### 1.2 LBA (Logical Block Address)

**Definición:**
- "Este sistema consiste en dividir el disco en sectores y darle a cada sector un número entero único. Actualmente es el que se está utilizando y es un sistema de direccionamiento lógico de bloques." (Documento original)

**Características:**
- Sistema de direccionamiento lógico que asigna un número secuencial único a cada sector
- Abstrae la geometría física del disco para el sistema operativo
- Soporta discos de capacidad mucho mayor que CHS
- Permite una gestión más eficiente del espacio de almacenamiento

**Ventajas:**
- No tiene limitaciones de capacidad teóricas
- Simplicidad en el direccionamiento
- Mejor aprovechamiento del espacio de almacenamiento
- Independencia de la geometría física real del disco

## 2. Evolución y Sistemas Modernos

### 2.1 GPT (GUID Partition Table)

- **Sustituye al MBR** en sistemas UEFI
- **Soporta discos mayores de 2 TB**
- **Permite más de 4 particiones primarias**
- **Incluye copia de seguridad** de la tabla de particiones
- Incorpora verificación criptográfica (Secure Boot)

### 2.2 Zoned Storage (para discos SMR)

- Estándar para organizar discos con tecnología SMR (Shingled Magnetic Recording)
- Divide el disco en zonas con diferentes características
- Optimiza el rendimiento en escrituras para discos SMR
- Soporte nativo en sistemas operativos modernos (Linux, Windows)

## Conclusión

Como indica el documento: "Actualmente es el [LBA] el que se está utilizando y es un sistema de direccionamiento lógico de bloques." La transición de CHS a LBA fue un avance fundamental que permitió superar las limitaciones de capacidad de los primeros discos duros.

En la actualidad, LBA sigue siendo el sistema de direccionamiento subyacente en los discos duros modernos, aunque se ha complementado con tecnologías avanzadas como GPT para sistemas UEFI y Zoned Storage para discos SMR, que mejoran la gestión de discos de alta capacidad y optimizan el rendimiento en tecnologías de grabación avanzadas.
