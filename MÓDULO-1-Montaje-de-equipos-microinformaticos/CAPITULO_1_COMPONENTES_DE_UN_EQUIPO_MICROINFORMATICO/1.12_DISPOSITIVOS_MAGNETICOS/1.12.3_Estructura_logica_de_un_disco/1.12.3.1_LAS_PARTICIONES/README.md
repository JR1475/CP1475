# Resumen generado por IA

Este documento contiene un resumen del punto [1.12.3.1], generado con inteligencia artificial.

# 1.12.3 Estructura lógica de un disco - 1.12.3.1 LAS PARTICIONES

## Introducción

La estructura lógica de un disco duro se refiere a cómo se organiza y divide el espacio de almacenamiento para su uso por parte de los sistemas operativos. Como señala el documento original: "Prácticamente todos los discos incluso los dispositivos con memoria flash se pueden particionar. Una partición es una división del disco duro que puede tener un sistema de archivos independiente. Un disco puede tener varias particiones con varios sistemas de archivos."

## Particiones Clásicas (MBR)

**Características principales:**
- **MBR (Master Boot Record):** Primer sector del disco (cabeza 0, cilindro 0 y sector 1)
- **Tamaño limitado:** 512 bytes (446 bytes para código de arranque + 64 bytes para tabla de particiones + 2 bytes de firma)
- **Tipos de particiones:**
  - **Primaria:** Hasta 4 particiones por disco
  - **Extendida:** Cuenta como partición primaria, puede contener particiones lógicas
  - **Lógica:** Se crean dentro de una partición extendida

**Reglas de particionamiento:**
- Un disco solo puede tener hasta 4 particiones primarias
- Las particiones extendidas cuentan como si fueran particiones primarias
- No puede existir más de una partición extendida
- Dentro de una partición extendida pueden existir varias particiones lógicas

**Limitaciones:**
- Máximo 2 TB de capacidad por disco
- Solo 4 particiones primarias como máximo
- Sin verificación de integridad de la tabla de particiones
- Vulnerable a daños en el sector de arranque

## GPT (GUID Partition Table)

**Características principales:**
- **Estructura mejorada:** Diseñado para reemplazar a MBR
- **Soporte para discos grandes:** Hasta 9.4 ZB (zettabytes)
- **Múltiples particiones:** Soporta hasta 128 particiones en Windows (teóricamente ilimitadas)
- **Diseño robusto:**
  - Cabecera de protección en el sector 0 (para compatibilidad con MBR)
  - Tabla de particiones primaria al inicio del disco
  - Tabla de particiones de respaldo al final del disco
  - Verificación de integridad mediante CRC32

**Ventajas sobre MBR:**
- **Mayor capacidad:** Soporta discos de más de 2 TB
- **Mayor número de particiones:** Sin necesidad de particiones extendidas/lógicas
- **Mayor fiabilidad:** Copia de seguridad de la tabla de particiones
- **Identificación mejorada:** Usa GUIDs (Globally Unique Identifiers) para tipos de partición
- **Verificación de integridad:** Detecta y puede recuperar tablas de particiones dañadas

**Requisitos:**
- Sistema UEFI (Unified Extensible Firmware Interface)
- Sistema operativo compatible (Windows desde Vista 64-bit, macOS, Linux modernos)

## Comparativa MBR vs GPT

| Característica | MBR (Particiones Clásicas) | GPT |
|----------------|----------------------------|-----|
| **Capacidad máxima** | 2 TB | 9.4 ZB |
| **Número máximo de particiones** | 4 primarias (o 3+extendida) | 128+ (teóricamente ilimitadas) |
| **Estructura de particiones** | Primarias, extendidas y lógicas | Solo primarias |
| **Verificación de integridad** | No | Sí (CRC32) |
| **Copias de seguridad** | No | Sí (tabla de respaldo) |
| **Sistema de arranque** | BIOS | UEFI |
| **Sector de arranque** | 512 bytes | Estructura más compleja |
| **Identificación de particiones** | Números | GUIDs únicos |

## Conclusión

Como señala el documento: "Los sistemas operativos generalmente se instalan en particiones primarias." La evolución de los sistemas de particionamiento ha sido necesaria para satisfacer las demandas de los discos modernos de alta capacidad. Mientras que el esquema MBR con sus particiones primarias, extendidas y lógicas sigue siendo funcional para discos pequeños, GPT representa el futuro con su mayor capacidad, fiabilidad y flexibilidad.

La transición hacia GPT es especialmente relevante en la actualidad, donde los discos duros de 4 TB y superiores son comunes, superando el límite de 2 TB de MBR. Para los profesionales de TI, comprender ambas estructuras es esencial para gestionar adecuadamente el almacenamiento en sistemas modernos.
