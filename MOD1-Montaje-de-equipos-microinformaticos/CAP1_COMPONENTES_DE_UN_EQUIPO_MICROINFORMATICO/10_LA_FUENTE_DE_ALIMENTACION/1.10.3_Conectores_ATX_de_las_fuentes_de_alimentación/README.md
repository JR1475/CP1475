# Resumen generado por IA

Este documento contiene un resumen del punto [1.10.3], generado con inteligencia artificial.

# 1.10.3 Conectores ATX de las fuentes de alimentación

## Introducción

Los conectores ATX son componentes críticos que permiten la correcta distribución de energía entre la fuente de alimentación y los demás componentes del sistema. Como señala el documento original: "Existen dos tipos de conectores ATX, el de 20 o 24 pines y el de 12V con 4 u 8 pines." En 2024, estos conectores han evolucionado significativamente para satisfacer las demandas de potencia de los componentes modernos, mientras que se han introducido nuevos tipos de conectores para tecnologías especializadas.

## 1. Conector ATX Principal (24 Pines)

### 1.1 Características Básicas

**Según el documento original:**
- "Conector ATX 20+4: Este conector es el que proporciona energía a la placa base. Suele conectarse un macho que viene de la fuente de alimentación al conector hembra situado en la placa base. Es un conector de 20 ó 24 pines."
- "Las placas que tienen un conector hembra de 24 contactos admiten un conector macho de 20 contactos si estos se colocan en los pines 1 y 13."

**Actualización 2024:**
- **Diseño:** 24 pines (20+4) en la mayoría de fuentes modernas
- **Compatibilidad:** Totalmente compatible con placas que requieren 20 pines (desconectando los 4 pines adicionales)
- **Bloqueo seguro:** Diseños mejorados que evitan desconexiones accidentales
- **Calibre de cables:** Mayor en fuentes premium para reducir la caída de voltaje

### 1.2 Esquema de Voltajes y Colores

**Según el documento original:**
- "El color y voltaje de los cables de los conectores ATX son los siguientes"
- "Como se puede observar el conector ATX de 20 pines es igual que el de 24, nada más que al primero se le añadieron 4 pines más, uno de cada voltaje (12 voltios, 5 voltios, 3,3 voltios) y uno de masa."

**Esquema detallado (2024):**

| Pin | Color | Voltaje | Función |
|-----|-------|---------|---------|
| 1 | Naranja | +3.3V | Alimentación 3.3V |
| 2 | Naranja | +3.3V | Alimentación 3.3V |
| 3 | Negro | GND | Tierra |
| 4 | Rojo | +5V | Alimentación 5V |
| 5 | Negro | GND | Tierra |
| 6 | Rojo | +5V | Alimentación 5V |
| 7 | Negro | GND | Tierra |
| 8 | Gris | Power OK | Señal de "Power OK" |
| 9 | Morado | +5VSB | Standby 5V (siempre activo) |
| 10 | Amarillo | +12V | Alimentación 12V |
| 11 | Naranja | +3.3V | Alimentación 3.3V |
| 12 | Azul | -12V | Alimentación -12V (rara vez usado) |
| 13 | Negro | GND | Tierra |
| 14 | Verde | PS_ON# | Señal de encendido (activa baja) |
| 15 | Negro | GND | Tierra |
| 16 | Negro | GND | Tierra |
| 17 | Negro | GND | Tierra |
| 18 | Blanco | -5V | Alimentación -5V (obsoleto) |
| 19 | Rojo | +5V | Alimentación 5V |
| 20 | Negro | GND | Tierra |
| **21** | **Negro** | **GND** | **Tierra (pines adicionales)** |
| **22** | **Negro** | **GND** | **Tierra (pines adicionales)** |
| **23** | **Amarillo** | **+12V** | **Alimentación 12V (pines adicionales)** |
| **24** | **Azul** | **+3.3V** | **Alimentación 3.3V (pines adicionales)** |

**Notas importantes:**
- Los pines 21-24 son los "4 pines adicionales" que convierten un conector de 20 pines en uno de 24 pines
- El voltaje -5V (pin 18) y -12V (pin 12) son prácticamente obsoletos en sistemas modernos
- El +5VSB (pin 9) permite funciones como Wake-on-LAN y carga de dispositivos USB en modo standby

## 2. Conector ATX 12V para CPU (4+4/8 Pines)

### 2.1 Características Básicas

**Según el documento original:**
- "Conector ATX 12V 4/8: Los conectores ATX de 12 voltios se utilizan para alimentar al procesador. Existe una clavija hembra en la placa base y una macho que viene de la fuente de alimentación. Se pueden encontrar clavijas de 4 y 8 pines. Los 8 pines aportarán una energía extra."

**Actualización 2024:**
- **Diseño:** 4+4 pines (separables en dos conectores de 4 pines)
- **Compatibilidad:** Funciona como conector de 4 pines en placas antiguas o como 8 pines en placas modernas
- **Calibre de cables:** Mayor en fuentes premium (16-18 AWG vs 18-20 AWG en fuentes económicas)
- **Bloqueo magnético:** En fuentes premium para evitar desconexiones

### 2.2 Esquema de Voltajes

| Pin | Color | Voltaje | Función |
|-----|-------|---------|---------|
| 1 | Amarillo | +12V | Alimentación 12V |
| 2 | Amarillo | +12V | Alimentación 12V |
| 3 | Amarillo | +12V | Alimentación 12V |
| 4 | Amarillo | +12V | Alimentación 12V |
| 5 | Negro | GND | Tierra |
| 6 | Negro | GND | Tierra |
| 7 | Negro | GND | Tierra |
| 8 | Negro | GND | Tierra |

**Importante:** Los conectores de 8 pines proporcionan hasta 336W de potencia (12V × 28A), frente a los 168W de los conectores de 4 pines.

### 2.3 Conectores EPS12V Especializados

- **EPS12V 4+4+4:** Para servidores y workstations extremas (ej: placas base HEDT)
- **ATX 12VO:** Nuevo estándar de Intel que simplifica la distribución de energía (solo 12V)
- **10 pines:** En algunas placas X670E/B650E de AMD para soporte de overclocking extremo

## 3. Conectores PCIe para GPU

### 3.1 Conectores PCIe Estándar (6+2 Pines)

**Según el documento original:** No menciona específicamente los conectores PCIe, ya que son una innovación posterior.

**Actualización 2024:**
- **Diseño:** 6+2 pines (separables en 6 pines o combinables en 8 pines)
- **Potencia máxima:** 
  - 6 pines: 75W
  - 8 pines: 150W
  - 12 pines: 600W (con el nuevo conector 12VHPWR)
- **Diseño seguro:** Incompatibilidad física con conectores ATX 12V desde 2015

**Esquema de voltajes:**
- Pines 1-3: Tierra (Negro)
- Pines 4-6: +12V (Amarillo)
- Pines 7-9: Tierra (Negro)
- Pines 10-12: +12V (Amarillo) - solo en conectores 12 pines

### 3.2 Conector 12VHPWR (16 Pines)

**Innovación reciente (2022-2024):**
- **Introducido con:** NVIDIA RTX 4090 y futuras GPUs
- **Diseño:** 12VHPWR (16 pines) con conector único
- **Potencia máxima:** 600W (12V × 50A)
- **Características:**
  - Monitoreo inteligente de potencia
  - Protección avanzada contra sobrecargas
  - Diseño compacto para mejor gestión de cables

**Adaptadores:**
- Incluido con la RTX 4090: Adaptador de 4 conectores 8 pines a 12VHPWR
- Limitaciones: Máximo 450W con el adaptador (vs 600W nativo)

## 4. Conectores SATA y Molex

### 4.1 Conectores SATA

**Según el documento original:**
- "Conectores SATA. Cuantos más conectores SATA traiga la fuente mejor. De esa forma no habrá que utilizar adaptadores. Actualmente todos los discos duros y lectores ópticos son SATA."

**Actualización 2024:**
- **Diseño:** Conector en forma de "L" para evitar inserción incorrecta
- **Voltajes proporcionados:**
  - +3.3V (naranja)
  - +5V (rojo)
  - +12V (amarillo)
  - Tierra (negro × 3)
- **Ventaja sobre Molex:** Menor tamaño, mejor flujo de aire, soporte para hot-plug

**Esquema:**
```
O O O O O O O O O O O O
| | | | | | | | | | | |
3 3 5 5 1 1 T T T G G G
. . V V 2 2 i i i N N N
3 3       V V r r r D D D
V V       o o o o o
l l       l l l l l
t t       t t t t t
a a       a a a a a
g g       g g g g g
e e       e e e e e
  1       2 3 4 5 6
```

### 4.2 Conectores Molex (4 Pines)

**Situación actual:**
- **Prácticamente obsoleto** en fuentes modernas
- **Reemplazado por:** Conectores SATA y conectores específicos para ventiladores
- **Último uso común:** Alimentación de ventiladores de 120mm/140mm en sistemas antiguos

**Esquema de voltajes:**
- Rojo: +5V
- Amarillo: +12V
- Negro × 2: Tierra

**Advertencia:** Los conectores Molex están siendo eliminados de las fuentes modernas para reducir el desorden de cables.

## 5. Conectores para Ventiladores (CPU_FAN, SYS_FAN)

### 5.1 Conectores de 3 Pines

**Según el documento original:**
- "El ensamblaje del ventilador tiene un conector de alimentación de 3 pines (normalmente en las placas viene marcado como CPU FAN)."

**Características:**
- **Voltaje:** +12V
- **Control:** Velocidad fija o controlada por voltaje (no PWM)
- **Pinout:**
  - Pin 1: Tierra
  - Pin 2: +12V
  - Pin 3: Señal de RPM (tacómetro)

### 5.2 Conectores de 4 Pines (PWM)

**Innovación moderna:**
- **PWM (Pulse Width Modulation):** Control preciso de velocidad
- **Ventaja:** Mayor rango de control y menor ruido
- **Pinout:**
  - Pin 1: Tierra
  - Pin 2: +12V
  - Pin 3: Señal de RPM
  - Pin 4: Señal PWM

**Compatibilidad:**
- Los conectores de 4 pines son compatibles con ventiladores de 3 pines (sin control PWM)
- Los conectores de 3 pines no pueden utilizar el control PWM

### 5.3 Conectores ARGB/RGB

**Tecnología emergente:**
- **ARGB (Addressable RGB):** 5V, 3 pines (5V, Datos, Tierra)
- **RGB:** 12V, 4 pines (12V, R, G, B)
- **Características:**
  - Control individual de LEDs en ARGB
  - Soporte para sincronización con múltiples dispositivos
  - Integración con software de sistema

## 6. Tendencias y Futuro de los Conectores

### 6.1 Estándar ATX12VO

- **Introducido por:** Intel en 2020
- **Concepto:** Simplificación de la distribución de energía (solo 12V)
- **Ventajas:**
  - Mayor eficiencia energética
  - Menor complejidad en la placa base
  - Reducción de componentes en la fuente
- **Desafíos:** Requiere nuevas placas base y fuentes de alimentación

### 6.2 Conectores Digitales

- **Monitoreo inteligente:** Sensores en los conectores para detección de fallos
- **Comunicación bidireccional:** Intercambio de información entre componentes
- **Protección avanzada:** Detección de sobrecargas en tiempo real

### 6.3 Diseños Modulares y Personalizables

- **Conectores magnéticos:** Para fácil conexión/desconexión
- **Cables personalizables:** Opciones de colores y longitudes
- **Sistemas de gestión de cables integrados:** Para mejor flujo de aire

## 7. Precauciones Importantes

### 7.1 Advertencias Críticas

**Según el documento original:**
- "||RECUERDA: No confundir el conector ATX 12V 8 pines con el descrito abajo PCIe 6+2. Aunque son parecidos si se intercambiasen pueden dañar la tarjeta gráfica y la placa base. Los conectores recientes ya han eliminado este problema siendo imposible conectar un PCIe 8 pines en un ATX 12V 8 pines hembra y viceversa.||"

**Actualización 2024:**
- **Conector 12VHPWR:** 
  - Nunca usar adaptadores para exceder los 450W
  - Verificar compatibilidad con la fuente de alimentación
  - Asegurar una conexión firme para evitar arcos eléctricos
- **Conectores ATX 12V:**
  - Asegurar que el conector esté completamente insertado
  - No forzar la conexión (puede dañar los pines)

### 7.2 Buenas Prácticas

- **Verificar polaridad:** Especialmente en conectores LED y RGB
- **No forzar conexiones:** Los conectores SATA y PCIe tienen forma específica para evitar inserción incorrecta
- **Gestión de cables:** Evitar tensión en los conectores
- **Verificar compatibilidad:** Antes de conectar, confirmar que el conector es adecuado para el dispositivo

## Conclusión

Los conectores ATX han evolucionado significativamente desde los diseños básicos de 20/24 pines y 4/8 pines para CPU mencionados en el documento original. En 2024, la diversidad de conectores refleja las demandas crecientes de los componentes modernos, especialmente en términos de potencia y control inteligente.

Como señala el documento: "Los conectores recientes ya han eliminado este problema siendo imposible conectar un PCIe 8 pines en un ATX 12V 8 pines hembra y viceversa." Esta tendencia hacia diseños más seguros y específicos continúa con innovaciones como el conector 12VHPWR, que incluye características de seguridad avanzadas para manejar las altas potencias de las GPUs modernas.

La elección de una fuente con los conectores adecuados es crucial para garantizar la estabilidad y seguridad del sistema. Los usuarios deben prestar especial atención a:
- La compatibilidad entre conectores y dispositivos
- Las limitaciones de potencia de cada conector
- Las buenas prácticas de instalación para evitar daños

Las tendencias actuales apuntan hacia una mayor estandarización (como ATX12VO), conectores más inteligentes con monitoreo integrado y diseños que priorizan la seguridad y la facilidad de uso. Para los usuarios y profesionales de TI, comprender estos conectores es esencial para construir sistemas estables, eficientes y seguros que aprovechen al máximo las capacidades de los componentes modernos.
