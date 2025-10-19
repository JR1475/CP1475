# Resumen generado por IA

Este documento contiene un resumen del punto [2.2], generado con inteligencia artificial.

# 2.2 Dispositivos que Proporcionan Energía al Equipo

Los dispositivos que proporcionan energía son elementos fundamentales en cualquier sistema microinformático, ya que sin una adecuada alimentación eléctrica, ningún componente puede funcionar correctamente. En este apartado se analizarán los dos principales dispositivos de suministro energético: **la fuente de alimentación para equipos de sobremesa** y **el transformador/cargador para equipos portátiles**.

---

## 2.2.1 La Fuente de Alimentación

La **fuente de alimentación** es el componente encargado de transformar la corriente alterna (CA) de la red eléctrica en corriente continua (CC) que utilizan todos los componentes internos del equipo. Además, regula y distribuye los diferentes voltajes necesarios para el correcto funcionamiento del sistema.

### ¿Qué es una fuente de alimentación?

Es un dispositivo que **transforma la corriente alterna de la red en corriente continua** que es la que soporta un PC. Todos los componentes internos de un ordenador (disco duro, placa base, lector óptico, etc.) solo trabajan con corriente continua.

### Procesos fundamentales de una fuente de alimentación

Una fuente de alimentación realiza cuatro procesos esenciales:

1. **Transformación**: Reduce la tensión de entrada (110/220 V CA) mediante un transformador.
2. **Rectificación**: Convierte la corriente alterna en continua mediante el puente rectificador o de Graetz (formado por diodos rectificadores).
3. **Filtrado**: Suaviza la señal eliminando las oscilaciones con uno o varios condensadores.
4. **Estabilización**: Regula la salida para que las variaciones de la señal de entrada no afecten al equipo.

> **Figura 2.30. Fases de una fuente de alimentación**  
> Transformación → Rectificación → Filtrado → Estabilización

---

### Tipos de Fuentes de Alimentación

Actualmente, las fuentes más utilizadas son las **fuentes ATX**, mientras que las fuentes anteriores (AT) son muy antiguas y solo se encuentran en equipos con procesadores anteriores al Pentium MMX.

#### Evolución de las fuentes ATX

| Estándar | Año | Características principales |
|----------|-----|-----------------------------|
| ATX 1.0 | 1995 | Primer estándar ATX, conector de 20 pines |
| ATX 1.3 | 2003 | Introduce +3.3V, mejoras en eficiencia |
| ATX 2.0 | 2004 | Conector adicional de 4 pines para CPU |
| ATX 2.2 | 2008 | Conector PCIe de 6+2 pines para tarjetas gráficas |
| ATX 2.4 | 2013 | Mejoras en estabilidad y eficiencia |
| ATX 3.0 | 2022 | Soporte para PCIe 5.0, hasta 600W por conector PCIe, mejoras en eficiencia |

> **Nota**: Las fuentes ATX 3.0 son las más recientes y están diseñadas específicamente para las nuevas GPU y CPU de alto consumo.

---

### Dimensiones Estándar

Las dimensiones estándar para fuentes ATX son:
- **Ancho**: 15 cm
- **Fondo**: 14 cm
- **Alto**: 8.6 cm

> **Figura 2.31. Dimensiones fuente de alimentación**  
> Estas medidas son estándar para garantizar compatibilidad con la mayoría de las torres de ordenador.

---

### Conectores y Voltajes

Una fuente de alimentación ATX proporciona varios voltajes diferentes a través de distintos conectores:

| Conector | Voltaje | Componentes alimentados | Características |
|----------|---------|-------------------------|-----------------|
| ATX 24 pines | +3.3V, +5V, +12V | Placa base | Conector principal |
| CPU 4+4 pines | +12V | Microprocesador | Alimentación específica para CPU |
| PCIe 6+2 pines | +12V | Tarjeta gráfica | Para GPUs de alto consumo |
| SATA | +3.3V, +5V, +12V | Discos duros, SSD | Conector plano para dispositivos de almacenamiento |
| Molex 4 pines | +5V, +12V | Discos antiguos, ventiladores | En desuso, reemplazado por SATA |
| Floppy 4 pines | +5V, +12V | Unidades de disquete | Obsoleto en equipos modernos |

#### Voltajes principales:
- **+12V**: Para componentes de alto consumo (disco duro, ventiladores, GPU)
- **+5V**: Para componentes de mediano consumo (USB, periféricos)
- **+3.3V**: Para componentes sensibles (memoria RAM, chipset)
- **-12V**: Para señales RS-232 (poco utilizado en la actualidad)
- **+5VSB**: Alimentación en reposo (Wake-on-LAN, encendido remoto)

---

### Especificaciones Técnicas Importantes

#### Potencia (vatios)
- **Básico (300-400W)**: Equipos de ofimática, sin tarjeta gráfica dedicada
- **Medio (500-650W)**: Equipos gaming con GPU de gama media
- **Alto rendimiento (700-1000W+)**: Equipos gaming de alta gama, workstations

> **Importante**: En ocasiones, las actualizaciones con tarjetas muy potentes implican actualizar la fuente de alimentación a una más potente (de más vatios) para compensar la sobrecarga.

#### Eficiencia energética (Certificación 80 PLUS)
- **80 PLUS**: Eficiencia mínima del 80% a cargas típicas
- **80 PLUS Bronze**: 82% a carga típica
- **80 PLUS Silver**: 85% a carga típica
- **80 PLUS Gold**: 87% a carga típica
- **80 PLUS Platinum**: 90% a carga típica
- **80 PLUS Titanium**: 94% a carga típica

#### Protecciones esenciales
- **OVP (Over Voltage Protection)**: Protección contra sobretensión
- **UVP (Under Voltage Protection)**: Protección contra subtensión
- **OCP (Over Current Protection)**: Protección contra sobrecorriente
- **SCP (Short Circuit Protection)**: Protección contra cortocircuitos
- **OPP (Over Power Protection)**: Protección contra sobrepotencia
- **OTP (Over Temperature Protection)**: Protección contra sobrecalentamiento

---

### Problemas Comunes y Diagnóstico

#### Síntomas de fallo en la fuente
- El equipo no enciende
- Reinicios aleatorios
- Apagados inesperados
- Humo u olor a quemado
- Ruido anormal del ventilador

#### Cómo diagnosticar
1. Usar un **tester de fuentes de alimentación** para verificar los voltajes
2. Medir con **multímetro** los valores en los conectores
3. Realizar una prueba "paperclip test" para verificar si la fuente arranca
4. Inspeccionar visualmente componentes dañados (condensadores hinchados)

> **Consejo**: Si se sospecha que la fuente está dañada, no se recomienda su reparación a menos que se tenga experiencia en electrónica, ya que almacena cargas peligrosas incluso cuando está desconectada.

---

## 2.2.2 El Transformador del Portátil

El **transformador del portátil**, también conocido como **cargador** o **adaptador de corriente**, es el dispositivo externo que proporciona energía al equipo portátil y carga su batería.

### Características principales

A diferencia de las fuentes de alimentación de los equipos de sobremesa, el transformador del portátil:
- Es un dispositivo **externo** al equipo
- Proporciona **una única tensión de salida** (generalmente entre 15V y 20V)
- Incluye un **regulador de voltaje** para mantener estable la salida
- Suele tener un **indicador LED** de estado
- Incorpora **protecciones** contra sobretensión, sobrecarga y cortocircuito

> **Nota**: Internamente, el portátil tiene un circuito que divide esta única tensión en los diferentes voltajes necesarios para sus componentes (similar al proceso de una fuente ATX).

---

### Tipos de Conectores

Los conectores de los cargadores de portátiles varían según el fabricante y modelo:

| Tipo de conector | Características | Uso común |
|-----------------|----------------|-----------|
| **Conector barrel (cilíndrico)** | Forma de tubo, con diferentes diámetros | Portátiles tradicionales (HP, Dell, Lenovo antiguos) |
| **Conector rectangular** | Forma plana y rectangular | Algunos modelos de Sony y Toshiba |
| **USB-C** | Conector reversible, multifunción | Portátiles modernos (MacBook, Dell XPS, HP Spectre) |
| **Conector específico** | Diseño patentado por el fabricante | Marcas como Apple (MagSafe), Lenovo (Round Tip) |

> **Importante**: El uso de un cargador inadecuado puede dañar gravemente el portátil. Siempre verificar la compatibilidad de voltaje, amperaje y forma del conector.

---

### Especificaciones Técnicas

#### Potencia (vatios)
- **Ultrabooks (13-15")**: 45W-65W
- **Portátiles estándar (15-17")**: 65W-90W
- **Portátiles gaming/workstation**: 90W-230W

#### Tensión de salida típica
- **15V-19V**: Para la mayoría de portátiles estándar
- **20V**: Para portátiles gaming y workstations
- **12V**: Para algunos ultrabooks y Chromebooks

#### Corriente (amperios)
- Varía según la potencia: 2.25A, 3.25A, 4.5A, etc.

> **Fórmula**: Potencia (W) = Voltaje (V) × Corriente (A)

---

### Tecnologías de Carga Rápida

Muchos cargadores modernos incorporan tecnologías de carga rápida:

- **USB Power Delivery (USB-PD)**: Permite negociar diferentes voltajes (5V, 9V, 15V, 20V) para optimizar la carga
- **Qualcomm Quick Charge**: Tecnología propietaria para carga acelerada
- **Adaptive Charging** (Lenovo): Ajusta la carga según el uso del usuario para prolongar la vida de la batería
- **Battery Health Charging** (Dell): Limita la carga al 80% para reducir el estrés en la batería

---

### Problemas Comunes y Soluciones

#### Problemas frecuentes
- **Cargador no suministra energía**: Verificar enchufe, cable y conector
- **Calentamiento excesivo**: Puede indicar sobrecarga o fallo interno
- **Intermitencia en la carga**: Problema con el conector o cable
- **Error de "cargador no reconocido"**: Incompatibilidad o fallo de comunicación

#### Diagnóstico básico
1. Verificar si el LED del cargador se enciende
2. Medir la salida con un multímetro
3. Inspeccionar el cable y conector en busca de daños
4. Probar con otro cargador compatible

> **Precaución**: Nunca intentar reparar un cargador dañado sin conocimientos electrónicos, ya que contiene componentes que pueden ser peligrosos incluso cuando está desconectado.

---

### Compatibilidad y Reemplazo

Al reemplazar un cargador, es fundamental verificar:
- **Voltaje de salida**: Debe coincidir exactamente
- **Amperaje mínimo**: El nuevo cargador debe proporcionar al menos el amperaje del original
- **Polaridad**: El símbolo de polaridad debe coincidir
- **Forma del conector**: Debe ser idéntico al original

> **Ejemplo**: Si el cargador original es 19.5V ⎓ 3.34A (65W), se puede usar uno de 19.5V ⎓ 4.62A (90W), pero nunca uno de 16V ⎓ 4A o 20V ⎓ 3.25A.

---

## Conclusión

Tanto la fuente de alimentación en equipos de sobremesa como el transformador en portátiles son componentes críticos cuyo correcto funcionamiento es esencial para la estabilidad y vida útil del equipo. Conocer sus características, especificaciones y problemas comunes permite al técnico:

- Diagnosticar fallos relacionados con la alimentación
- Seleccionar componentes de reemplazo adecuados
- Recomendar actualizaciones compatibles (como cambiar a una fuente más potente al actualizar la tarjeta gráfica)
- Evitar daños por incompatibilidades o sobrecargas

En la práctica de reparación, es fundamental contar con herramientas adecuadas (como multímetro y tester de fuentes) para verificar el correcto funcionamiento de estos dispositivos antes de descartar otros componentes como causa de un fallo.
