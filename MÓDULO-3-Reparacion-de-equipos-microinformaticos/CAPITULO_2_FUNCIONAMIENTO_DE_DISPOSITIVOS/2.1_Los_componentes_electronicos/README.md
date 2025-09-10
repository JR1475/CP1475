# Resumen generado por IA

Este documento contiene un resumen del punto [2.1], generado con inteligencia artificial.

# 2.1 Los Componentes Electrónicos

Los **componentes electrónicos** son los elementos fundamentales que forman parte de cualquier circuito eléctrico o electrónico. En un sistema microinformático, como un ordenador de sobremesa o un portátil, todos los dispositivos (placa base, tarjeta gráfica, memoria RAM, fuente de alimentación, etc.) están compuestos por una combinación de estos componentes interconectados entre sí.

Estos componentes permiten el correcto funcionamiento del equipo, ya sea almacenando energía, regulando el flujo de corriente, procesando señales o proporcionando alimentación. Su correcta identificación, comprensión y diagnóstico es esencial para realizar reparaciones efectivas y precisas.

Los componentes electrónicos se clasifican en dos grandes grupos:

- **Componentes pasivos**
- **Componentes activos**

---

## 2.1.1 Componentes Pasivos

Los **componentes pasivos** son aquellos que **no pueden controlar el flujo de corriente por sí mismos ni amplificar señales**. No requieren una fuente de alimentación externa para funcionar y no generan ganancia de potencia. Su función principal es almacenar, disipar o limitar la energía eléctrica.

Son elementos tradicionales utilizados desde los inicios de la electricidad y siguen siendo fundamentales en cualquier circuito moderno.

### Principales componentes pasivos:

| Componente | Función principal | Símbolo (esquemático) | Observaciones |
|----------|-------------------|------------------------|-------------|
| **Resistencia** | Limita el flujo de corriente y disipa energía en forma de calor. | ![Resistor](https://via.placeholder.com/15) | Se mide en **ohmios (Ω)**. Puede estar fabricada en carbono, película metálica o cerámica. |
| **Condensador** | Almacena energía eléctrica temporalmente en un campo eléctrico. | ![Capacitor](https://via.placeholder.com/15) | Esencial en fuentes de alimentación, filtros y circuitos de arranque. Puede ser cerámico, electrolítico o de tantalio. |
| **Fusible** | Protege el circuito al interrumpir el paso de corriente cuando hay un exceso (cortocircuito o sobrecarga). | ![Fusible](https://via.placeholder.com/15) | Es un "sacrificial device": se destruye para proteger el resto del sistema. |
| **Transformador** | Cambia el nivel de voltaje en corriente alterna (CA), mediante inducción electromagnética. | ![Transformador](https://via.placeholder.com/15) | No funciona con corriente continua (CC). Muy usado en cargadores y fuentes de alimentación. |
| **Cable / Conductor** | Permite el paso de corriente entre dos puntos. | — | Aunque parece simple, un mal contacto o rotura puede causar fallos graves. |
| **Interruptor** | Abre o cierra un circuito manual o automáticamente. | ![Interruptor](https://via.placeholder.com/15) | Controla el flujo de corriente sin modificar su valor. |

> ✅ **IMPORTANTE**:  
> Los componentes pasivos **no necesitan alimentación externa** para funcionar y **no pueden amplificar señales**. Son esenciales para el control básico de la electricidad en un circuito.

---

### Detalles clave por componente

#### 🔹 Resistencia
- **Ley de Ohm**: \( V = I \times R \)
- Valores típicos: desde ohmios (Ω) hasta megaohmios (MΩ).
- Pueden tener bandas de colores que indican su valor y tolerancia.
- En placas base, se usan para limitar corriente en LEDs, sensores y circuitos de señal.

#### 🔹 Condensador
- Almacena carga entre dos placas conductoras separadas por un dieléctrico.
- En equipos informáticos, los **condensadores electrolíticos** son muy comunes (cilíndricos, verticales).
- **Fallo típico**: Se hinchan o explotan debido al calor o mala calidad → síntoma común de avería en placas base.
- Unidad de medida: **faradios (F)**, aunque se usan submúltiplos como microfaradios (µF) o nanofaradios (nF).

#### 🔹 Fusible
- Ubicado en zonas críticas (entrada de alimentación, circuitos de voltaje).
- Si un fusible está roto, indica que hubo un pico de corriente o cortocircuito.
- Se puede reemplazar si se conoce su valor (ej. 3.15 A, 5 A).

#### 🔹 Transformador
- No tiene partes móviles; funciona por inducción entre bobinas.
- En fuentes ATX, reduce el voltaje de la red (110/220 V CA) a niveles más bajos antes de la rectificación.
- En portátiles, el "transformador" externo (bloque de alimentación) convierte CA a CC.

---

## 2.1.2 Componentes Activos

Los **componentes activos** son aquellos que **pueden controlar el flujo de corriente, amplificar señales o generar energía**. A diferencia de los pasivos, **sí necesitan una fuente de alimentación externa** para funcionar y pueden proporcionar ganancia de potencia.

Son la base de la electrónica moderna y permiten la creación de circuitos inteligentes, como los que procesan datos en un microprocesador.

### Principales componentes activos:

| Componente | Función principal | Símbolo (esquemático) | Observaciones |
|----------|-------------------|------------------------|-------------|
| **Pila / Batería** | Convierte energía química en energía eléctrica. | ![Pila](https://via.placeholder.com/15) | Fuente de alimentación portátil. En ordenadores, la pila CR2032 mantiene la BIOS. |
| **Diodo** | Permite el paso de corriente en un solo sentido. | ![Diodo](https://via.placeholder.com/15) | Esencial en rectificación (CA → CC). |
| **LED (Diodo Emisor de Luz)** | Diodo que emite luz al pasar corriente. | ![LED](https://via.placeholder.com/15) | Tiene polaridad: ánodo (+) y cátodo (-). |
| **Transistor** | Actúa como interruptor o amplificador. | ![Transistor](https://via.placeholder.com/15) | Base de los circuitos digitales. |
| **Circuito Integrado (CI)** | Contiene miles de transistores y componentes en un solo chip. | ![CI](https://via.placeholder.com/15) | Ejemplos: microprocesador, controlador de puertos. |
| **Microprocesador** | CI especializado en ejecutar instrucciones y procesar datos. | — | El "cerebro" del ordenador. |

> ✅ **IMPORTANTE**:  
> Los componentes activos **sí pueden amplificar o conmutar señales** y son esenciales para el procesamiento de información en sistemas digitales.

---

### Detalles clave por componente

#### 🔸 Pila
- Convierte **energía química** en **energía eléctrica**.
- Compuesta por:
  - **Electrodo positivo** (cátodo)
  - **Electrodo negativo** (ánodo)
  - **Electrolito** (puede ser sólido, líquido o en pasta)
- Voltaje típico: **1.5 V** (pilas comunes), **3 V** (CR2032 para BIOS), **3.7 V** (baterías de portátiles).
- En ordenadores, la pila CR2032 mantiene la configuración del CMOS y el reloj en hora.

#### 🔸 Diodo
- Fabricado en **semiconductores** como silicio o germanio.
- **Función principal**: permitir el paso de corriente en un solo sentido → evita daños por polaridad inversa.
- Muy usado en **fuentes de alimentación** y **cargadores** para **rectificar** la corriente (convertir CA en CC).
- **Diodo LED**: emite luz visible, infrarroja o ultravioleta según el material semiconductor.

> ⚠️ **Importante**: Los diodos tienen polaridad. Si se conectan al revés, no conducen (excepto en casos de ruptura por voltaje inverso).

#### 🔸 Transistor
- Es el **bloque fundamental** de la electrónica moderna.
- Puede funcionar como:
  - **Interruptor** (ON/OFF) → base de la lógica digital.
  - **Amplificador** → aumenta la señal de entrada.
- Tipos comunes: **BJT** (bipolar), **MOSFET** (usado en fuentes y reguladores de voltaje).
- En una placa base, hay cientos de transistores que regulan el voltaje para el CPU (fase de alimentación).

#### 🔸 Circuito Integrado (CI)
- Pequeña pastilla de **silicio** donde se fabrican miles o millones de componentes (transistores, resistencias, condensadores).
- El proceso de fabricación se llama **fotolitografía**, similar a una impresión con luz ultravioleta.
- Puede ser:
  - **Analógico** (amplificadores, reguladores)
  - **Digital** (puertas lógicas, memorias)
  - **Mixto** (convertidores AD/DA)
- Ejemplos: reguladores de voltaje (VRM), controladores USB, chipsets.

#### 🔸 Microprocesador
- Es un **circuito integrado extremadamente complejo**.
- Contiene millones o miles de millones de transistores (ej. un Intel Core i7 tiene alrededor de 731 millones).
- Su función es **ejecutar instrucciones** del sistema operativo y aplicaciones.
- Requiere voltajes muy precisos (1.0–1.5 V típicamente), proporcionados por fases de alimentación en la placa base.

---

## Clasificación Resumen

| Característica | Componentes Pasivos | Componentes Activos |
|----------------|----------------------|----------------------|
| ¿Necesitan alimentación? | No | Sí |
| ¿Pueden amplificar señales? | No | Sí |
| ¿Pueden conmutar corriente? | No | Sí (transistores, CI) |
| ¿Generan energía? | No | No (pero la controlan) |
| Ejemplos | Resistencia, condensador, fusible | Transistor, diodo, microprocesador |

---

## Aplicación en Equipos Informáticos

En una **placa base** típica se pueden observar todos estos componentes:

- **Condensadores** alrededor del CPU y chipset.
- **Resistencias** y **transistores** en las fases de alimentación.
- **Diodos** en circuitos de protección.
- **Circuitos integrados** que gestionan puertos USB, audio, red.
- **Fusibles** en la entrada de alimentación.
- **Transformadores** en circuitos de señal (por ejemplo, Ethernet).
- **Pila CR2032** para mantener la BIOS.

> 🔍 **Reparación práctica**:  
> Muchas averías se deben a componentes pasivos dañados (condensadores hinchados, fusibles rotos). Con un multímetro y soldador, un técnico puede reparar estos fallos sin necesidad de cambiar toda la placa.

---

## Conclusión

Comprender la diferencia entre **componentes pasivos y activos** es fundamental para diagnosticar y reparar equipos microinformáticos. Mientras que los pasivos gestionan la energía básica del circuito, los activos permiten el control, procesamiento y toma de decisiones electrónicas.

Dominar su identificación, función y comportamiento ante fallos convierte al técnico en un profesional capaz de realizar **reparaciones profundas, económicas y sostenibles**, más allá del simple reemplazo de módulos completos.
