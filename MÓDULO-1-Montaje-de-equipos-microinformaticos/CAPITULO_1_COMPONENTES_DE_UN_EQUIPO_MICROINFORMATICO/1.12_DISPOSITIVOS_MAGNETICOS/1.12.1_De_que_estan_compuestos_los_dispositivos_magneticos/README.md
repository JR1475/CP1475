# Resumen generado por IA

Este documento contiene un resumen del punto [1.12.1], generado con inteligencia artificial.

# 1.12 DISPOSITIVOS MAGNÉTICOS - 1.12.1 ¿De qué están compuestos los dispositivos magnéticos?

## Introducción

Los dispositivos magnéticos representan una de las tecnologías de almacenamiento de datos más duraderas y evolutivas en la historia de la informática. Como señala el documento original: "Los dispositivos magnéticos (discos duros, disquetes, cintas, etc.) están formados por un sustrato al que en su superficie se ha depositado algún material magnetizable." En 2024, aunque los SSD están ganando terreno, los dispositivos magnéticos siguen siendo fundamentales en muchos escenarios, especialmente para almacenamiento de gran capacidad y asequible.

## 1. Composición Básica

### 1.1 Estructura Fundamental

Todos los dispositivos magnéticos comparten una estructura básica común:

- **Sustrato base:** Material que proporciona la estructura física y soporte
- **Capa magnetizable:** Superficie donde se almacena la información
- **Sistema de lectura/escritura:** Cabezas que interactúan con la superficie magnetizable
- **Mecanismo de posicionamiento:** Sistema que mueve las cabezas sobre la superficie
- **Electrónica de control:** Circuitería que gestiona la lectura y escritura

**Según el documento original:**
- "El material magnetizable está agrupado en celdas. Dependiendo del tamaño de cada celda se podrá almacenar más o menos información en la misma superficie."
- "Cada celda va a representar un bit y el material en cada celda puede estar magnetizado en alguno de los dos estados estables o bien puede estar sin magnetizar."

### 1.2 Tipos de Dispositivos Magnéticos

**Según el documento original:**
- "Los dispositivos magnéticos más importantes son: Disco duro. Son los más utilizados en la actualidad. La tecnología va evolucionando hacia discos SSD. Disco flexible. El tradicional disquete ya ha quedado obsoleto. Está en desuso."
- "Cinta. Utilizados para la realización de backup en entorno empresarial. Se caracterizan por una gran capacidad de almacenamiento pero por el contrario el acceso de lectura es lento pues es un acceso secuencial."

**Actualización 2024:**
- **Discos duros (HDD):** Siguen siendo relevantes para almacenamiento masivo
- **Cintas magnéticas:** Aún utilizadas en centros de datos para backup
- **Disquetes:** Totalmente obsoletos (última producción en 2010)
- **Dispositivos híbridos (SSHD):** Combinan tecnología magnética y flash

## 2. Materiales Utilizados en Dispositivos Magnéticos

### 2.1 Sustrato Base

**Según el documento original:**
- "Los platos(el interior) normalmente están fabricados en algún material metálico como puede ser aluminio o incluso otros tipos de material como puede ser la cerámica o el vidrio."

**Actualización 2024:**
- **Aluminio:** Sigue siendo común en HDD económicos (menos denso, más económico)
- **Vidrio templado:** Utilizado en HDD de alta capacidad (mayor densidad, mayor resistencia)
- **Cerámica:** Menos común, usado en algunos HDD especializados
- **Aleaciones avanzadas:** Nuevos materiales para HDD de Helio (mejor estabilidad térmica)

### 2.2 Capa Magnetizable

**Según el documento original:**
- "Las caras externas de los platos están cubiertas de material magnetizable(oxido de hierro u otro) o bien tienen una película metálica que también es magnetizable."

**Evolución tecnológica (2024):**
- **Primera generación:** Óxido de hierro (Fe₂O₃) - baja densidad (1950-1980)
- **Partículas metálicas (MP):** Partículas de hierro en suspensión (1980-2000)
- **Película delgada:** Aleaciones de cobalto (CoCrPt) - alta densidad (2000-2010)
- **HAMR (Heat-Assisted Magnetic Recording):** Aleaciones de granos finos con capa de hierro-platino (2010-actualidad)
- **MAMR (Microwave-Assisted Magnetic Recording):** Aleaciones con capa de magnesio-óxido (2018-actualidad)

**Densidad de almacenamiento actual:**
- HDD estándar: 1-2 Tb por plato
- HDD HAMR/MAMR: 2.5-3.5 Tb por plato
- HDD empresariales (2024): Hasta 22 TB en unidades de 3.5"

## 3. Estructura de Almacenamiento

### 3.1 Organización Física

**Según el documento original:**
- "Figura 1.65. Organización del material magnetizable en un disco duro"
- "Dado que las pistas no tienen el mismo tamaño(las pistas exteriores son más grandes), los discos duros actuales tienen más sectores en las pistas externas que en las internas. Así se aprovecha mejor la superficie del plato."

**Actualización 2024:**
- **Pistas:** Círculos concéntricos en la superficie del plato
- **Sectores:** Segmentos dentro de cada pista (tamaño estándar: 4096 bytes)
- **Zonas de grabación:** Los discos modernos utilizan zonas de pista variable (SMR, CMR)
  - **CMR (Conventional Magnetic Recording):** Pistas separadas
  - **SMR (Shingled Magnetic Recording):** Pistas superpuestas como tejas
  - **HAMR (Heat-Assisted):** Uso de láser para calentar puntos específicos
  - **MAMR (Microwave-Assisted):** Uso de ondas electromagnéticas para grabación

### 3.2 Tecnologías Avanzadas

#### 3.2.1 SMR (Shingled Magnetic Recording)
- **Concepto:** Pistas superpuestas como tejas de un tejado
- **Ventaja:** Mayor densidad de almacenamiento (+25% que CMR)
- **Desventaja:** Escrituras más lentas (requiere reescritura de bloques adyacentes)
- **Uso:** HDD de consumo para almacenamiento secundario

#### 3.2.2 HAMR (Heat-Assisted Magnetic Recording)
- **Concepto:** Uso de un láser para calentar puntos específicos durante la escritura
- **Ventaja:** Permite granos magnéticos más pequeños y estables
- **Densidad:** Hasta 4 Tb por plato (vs 1.5 Tb en CMR)
- **Implementación:** Seagate Exos, Toshiba MG-M
- **Retos:** Complejidad técnica, coste elevado

#### 3.2.3 MAMR (Microwave-Assisted Magnetic Recording)
- **Concepto:** Uso de ondas electromagnéticas para facilitar la magnetización
- **Ventaja:** Menor complejidad que HAMR, mayor compatibilidad
- **Densidad:** Hasta 3.5 Tb por plato
- **Implementación:** Western Digital Ultrastar
- **Ventaja:** Menor coste de producción que HAMR

## 4. Componentes Clave de un Disco Duro Moderno

### 4.1 Platos
- **Material:** Vidrio templado en HDD de alta capacidad, aluminio en HDD económicos
- **Número:** 1-9 platos según capacidad (hasta 22 TB en 2024)
- **Recubrimiento:** Capa protectora de carbono de 2-3 nm
- **Grosor:** 0.635 mm (3.5") o 0.51 mm (2.5")

### 4.2 Cabezas de Lectura/Escritura
- **Tecnología:** Magnetoresistencia gigante (GMR) y magnetoresistencia túnel (TMR)
- **Tamaño:** Nanométrico (menos de 100 nm)
- **Funcionamiento:** 
  - **Lectura:** Detecta cambios en la resistencia eléctrica
  - **Escritura:** Genera campo magnético localizado
- **Altura de vuelo:** 0.5-2 nm sobre la superficie del plato

**Según el documento original:**
- "Las cabezas aunque parezca que están en contacto con el disco en realidad no lo están. Las cabezas vuelan sobre la superficie del disco pero sin tocarla."
- "||SABÍAS QUE... Si la cabeza llegara a tocar la superficie del disco éste se estropearía."

### 4.3 Brazo Actuador
- **Material:** Aleación ligera de aluminio o magnesio
- **Precisión:** Movimiento con precisión de nanómetros
- **Velocidad:** 0.5-1 ms para posicionamiento (5-10 ms en HDD antiguos)
- **Motor:** Motor paso a paso de alta precisión

### 4.4 Electrónica de Control
- **Procesador:** ARM o RISC especializado
- **Memoria caché:** 256 MB-1 GB en HDD modernos
- **Funciones:**
  - Control de posicionamiento
  - Procesamiento de señal
  - Corrección de errores
  - Gestión de caché
  - Soporte para tecnologías avanzadas (HAMR/MAMR)

## 5. Comparación con Tecnologías Modernas (SSD)

### 5.1 Ventajas de los Dispositivos Magnéticos

- **Costo por GB:** Significativamente menor que SSD (0.02-0.03 €/GB vs 0.07-0.10 €/GB)
- **Capacidad máxima:** Hasta 22 TB en HDD vs 8 TB en SSD (2024)
- **Vida útil para escrituras:** No limitada por ciclos de escritura como en SSD
- **Almacenamiento a largo plazo:** Mejor para datos que no se acceden frecuentemente

### 5.2 Desventajas de los Dispositivos Magnéticos

- **Velocidad:** Menor velocidad de lectura/escritura (150-250 MB/s vs 3,500-7,000 MB/s en SSD)
- **Latencia:** Mayor tiempo de acceso (5-10 ms vs 0.1 ms en SSD)
- **Resistencia:** Más sensible a golpes y vibraciones
- **Consumo energético:** Mayor consumo en operación (5-10W vs 2-5W en SSD)
- **Ruido:** Genera ruido mecánico durante la operación

### 5.3 Hibridación de Tecnologías

- **SSHD (Solid State Hybrid Drive):** Combina HDD con caché SSD integrada
- **Optane Memory (Intel):** Memoria 3D XPoint como caché para HDD
- **Caché en sistema:** Uso de SSD como caché para HDD en RAID

## 6. Tendencias y Futuro de los Dispositivos Magnéticos

### 6.1 HAMR y MAMR como Tecnologías Dominantes

- **HAMR:** Seagate planea llegar a 50 TB para 2026
- **MAMR:** Western Digital apuesta por esta tecnología para mayor escalabilidad
- **Interoperabilidad:** Compatibilidad con estándares existentes (SATA, SAS)

### 6.2 Innovaciones en Diseño

- **HDD de Helio:** Sellado con helio para reducir turbulencia y fricción
- **Platos apilados en 9 capas:** Aumento de capacidad sin incrementar tamaño físico
- **Doble actuador:** Dos brazos independientes para mayor rendimiento

### 6.3 Nuevas Aplicaciones

- **Almacenamiento frío:** Para datos que rara vez se acceden
- **Archivos de medios:** Almacenamiento de video de alta resolución
- **Backup empresarial:** Combinación con cintas magnéticas para capas de almacenamiento

## 7. Consideraciones Ambientales

### 7.1 Impacto Ambiental

**Según el documento original:**
- "Un móvil o portátil puede llegar a contener entre 500 y 1.000 componentes. Entre ellos podemos encontrar mercurio(el compuesto de algunas pilas que las hace muy contaminantes), plomo, berilio, cadmio, retardantes de llama bromados, PVC, etc."

**Actualización 2024:**
- **Metales pesados:** Los HDD contienen cobalto, platino y otros metales críticos
- **Reciclaje:** Menos del 20% de los HDD se reciclan adecuadamente
- **Contaminación:** Riesgo de liberación de metales pesados en vertederos

### 7.2 Iniciativas de Sostenibilidad

- **Programas de reciclaje:** WD, Seagate y otros fabricantes ofrecen programas de reciclaje
- **Reutilización:** HDD usados para almacenamiento secundario o NAS personales
- **Diseño para reciclaje:** Nuevos enfoques para facilitar el desmontaje y reciclaje

## Conclusión

Los dispositivos magnéticos, aunque considerados "tradicionales" en la era de los SSD, siguen siendo componentes esenciales en la infraestructura de almacenamiento moderna. Como señala el documento original, "Estos dispositivos de almacenamiento definitivo de la información han ido mejorando con el tiempo permitiendo almacenar mucha más información, con un tiempo de acceso mucho menor y velocidades de transmisión mayores conforme la tecnología ha evolucionado."

La evolución hacia tecnologías avanzadas como HAMR y MAMR está permitiendo que los HDD mantengan su relevancia al ofrecer capacidades cada vez mayores a costos asequibles. Los HDD modernos son sistemas extremadamente complejos que combinan precisión mecánica a nivel nanométrico con electrónica avanzada.

Para los profesionales de TI, comprender la composición y funcionamiento de estos dispositivos es esencial para tomar decisiones informadas sobre almacenamiento, especialmente en escenarios donde la capacidad y el costo por GB son factores críticos. La coexistencia de HDD y SSD en arquitecturas de almacenamiento híbrido representa la solución óptima para muchos entornos empresariales y personales.

Las tendencias actuales apuntan hacia una mayor especialización de los dispositivos magnéticos en roles específicos de almacenamiento, complementando en lugar de competir directamente con la tecnología SSD, asegurando así su relevancia en el ecosistema tecnológico del futuro.
