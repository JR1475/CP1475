# Resumen generado por IA

Este documento contiene un resumen del punto [1.1], generado con inteligencia artificial.

# 1.1.1 Conceptos básicos de electricidad

La electricidad es una propiedad fundamental de la materia que se manifiesta a través de la atracción o repulsión entre sus partículas, originada por la existencia de cargas eléctricas: los electrones (carga negativa) y los protones (carga positiva), según la definición de la Real Academia Española (RAE). En el contexto de la reparación de equipos microinformáticos, comprender los conceptos básicos de electricidad es esencial, ya que todos los dispositivos electrónicos funcionan bajo principios eléctricos y electrónicos.

A continuación, se desarrollan los conceptos fundamentales necesarios para entender el funcionamiento de los componentes de un sistema informático.

---

# **Ley de Ohm: Explicación con Analogías**

La **Ley de Ohm** es uno de los principios fundamentales en electricidad y electrónica. Establece la relación entre **tensión (V)**, **corriente (I)** y **resistencia (R)** en un circuito eléctrico. Se expresa mediante la fórmula:

\[
V = I \times R
\]

Donde:
- **V** es la **tensión** (en voltios, V),
- **I** es la **intensidad de corriente** (en amperios, A),
- **R** es la **resistencia** (en ohmios, Ω).

A continuación, se explica esta ley utilizando **analogías cotidianas** para facilitar su comprensión.

---

## 🔧 **Analogía del Sistema de Agua (Tubería y Depósito)**

Imagina un sistema de agua con un **depósito elevado**, una **tubería** y una **válvula**:

| Concepto Eléctrico | Analogía Hidráulica |
|---------------------|----------------------|
| **Tensión (V)**     | **Altura del depósito** o **presión del agua** |
| **Corriente (I)**   | **Flujo de agua** (litros por segundo que pasan por la tubería) |
| **Resistencia (R)** | **Estrechez de la tubería** o **válvula parcialmente cerrada** |

### 🌊 ¿Cómo funciona?

- Si el **depósito está muy alto**, el agua cae con más presión → esto es como tener un **voltaje alto**.
- Cuanta más **presión (voltaje)**, más **agua (corriente)** fluye por la tubería.
- Pero si la **tubería es estrecha** o la **válvula está medio cerrada**, el flujo de agua se reduce → esto representa una **resistencia alta**.

> ✅ **Ejemplo práctico**:  
> Si tienes un chorro de agua fuerte (alta corriente), puede ser porque:
> - La presión es alta (alto voltaje), o
> - La manguera es ancha (baja resistencia).

Pero si cierras un poco la llave (aumentas la resistencia), el flujo disminuye, aunque la presión siga siendo la misma.

---

## 🚗 **Analogía del Coche en una Carretera**

Piensa en un coche que circula por una carretera:

| Concepto Eléctrico | Analogía del Coche |
|---------------------|--------------------|
| **Tensión (V)**     | **Fuerza del motor** (cuánto empuja el coche) |
| **Corriente (I)**   | **Velocidad del flujo de coches** (cuántos coches pasan por un punto por segundo) |
| **Resistencia (R)** | **Obstáculos en la carretera**: curvas, baches, peaje, tráfico |

### 🛣️ ¿Qué ocurre?

- Si el motor empuja mucho (alto voltaje), los coches avanzan rápido (alta corriente).
- Pero si hay muchos obstáculos (alta resistencia), aunque el motor sea potente, el tráfico será lento (baja corriente).

> 🔁 **Relación inversa**:  
> A más resistencia → menos corriente, si el voltaje no cambia.

---

## 💡 **Aplicación en Circuitos Electrónicos**

En un circuito con un **LED**, por ejemplo:

- El **LED necesita poca corriente** para no quemarse.
- La **fuente de alimentación** (como una batería de 5 V) proporciona el voltaje.
- Para **limitar la corriente**, se coloca una **resistencia** en serie.

> 🔎 Según la Ley de Ohm:  
> Si aplicamos 5 V y queremos que solo pasen 20 mA (0.02 A) por el LED, la resistencia necesaria será:
>
> \[
> R = \frac{V}{I} = \frac{5}{0.02} = 250\ \Omega
> \]
>
> Por eso, elegimos una resistencia cercana, como 270 Ω, para proteger el LED.

---

## 📌 Resumen con la Analogía del Agua

| Electricidad       | Agua               | Efecto en el Flujo |
|--------------------|--------------------|--------------------|
| Aumentar voltaje   | Subir el depósito  | Más corriente      |
| Aumentar resistencia | Apretar la válvula | Menos corriente    |
| Disminuir resistencia | Abrir más la válvula | Más corriente  |

---

## ✅ Conclusión

La **Ley de Ohm** es como una receta para entender cómo fluye la electricidad:

> **El voltaje empuja, la corriente fluye, y la resistencia frena.**

Entender esta relación es clave para diseñar, reparar o diagnosticar cualquier circuito electrónico, desde una fuente de alimentación hasta una tarjeta madre.  
Usar analogías ayuda a visualizar conceptos abstractos y aplicarlos en la práctica de la reparación de equipos informáticos.

## Tensión eléctrica (Voltaje)

La **tensión eléctrica** o **voltaje** es la diferencia de potencial entre dos puntos de un circuito eléctrico. Esta diferencia provoca el movimiento de electrones desde el punto de mayor carga negativa (exceso de electrones) hacia el punto de mayor carga positiva (falta de electrones), hasta que ambos cuerpos se igualan en carga.

- Se mide en **voltios (V)**.
- Es el "empuje" que impulsa a los electrones a través de un conductor.
- Ejemplo: Una pila convencional proporciona 1.5 V, mientras que la red eléctrica doméstica puede suministrar 110 V o 220 V, dependiendo del país.

> **Figura 1.1. Cuerpos con distintas cargas**  
> Potencial eléctrico negativo (exceso de electrones) → Potencial eléctrico positivo (falta de electrones)  
> Los electrones fluyen desde el cuerpo cargado negativamente al positivamente hasta igualar las cargas.

---

## Corriente eléctrica

La **corriente eléctrica** es el flujo de electrones a través de un conductor. Este flujo solo se produce cuando existe una diferencia de potencial (voltaje) entre dos puntos.

- Se mide en **amperios (A)**.
- El sentido convencional de la corriente va del polo positivo al negativo, aunque físicamente los electrones fluyen del negativo al positivo.

---

## Tipos de corriente

### Corriente continua (CC o DC - Direct Current)

- El flujo de electrones es **constante y en una sola dirección**.
- Es la forma de corriente utilizada por todos los componentes internos de un equipo informático (placa base, disco duro, tarjeta gráfica, etc.).
- Fuentes comunes: pilas, baterías y fuentes de alimentación (que convierten CA en CC).

> **Ejemplo**: Las fuentes de alimentación de los equipos de sobremesa y los cargadores de portátiles transforman la corriente alterna de la red en corriente continua para alimentar el equipo.

### Corriente alterna (CA o AC - Alternating Current)

- El flujo de electrones **cambia de dirección periódicamente**, generando una onda sinusoidal.
- Es la corriente suministrada por la red eléctrica doméstica.
- Se representa con el símbolo **~**.
- Frecuencia típica: 50 Hz o 60 Hz, dependiendo del país.

> **Figura 1.7. La corriente alterna**  
> Gráfica de voltaje vs. tiempo mostrando una onda sinusoidal.

---

## Resistencia eléctrica

La **resistencia** es la oposición que presenta un material al paso de la corriente eléctrica.

- Se mide en **ohmios (Ω)**.
- Las resistencias son componentes pasivos utilizados para controlar el flujo de corriente en un circuito.
- Pueden estar fabricadas con materiales como carbono o metales.

> **Nota**: En circuitos electrónicos, las resistencias ayudan a proteger componentes sensibles, como los diodos LED, limitando la corriente que los atraviesa.

---

## Potencia eléctrica

La **potencia** es la cantidad de energía consumida por un dispositivo por unidad de tiempo.

- Se mide en **vatios (W)**.
- Se calcula con la fórmula:  
  **P = V × I**  
  (Potencia = Voltaje × Intensidad)

> **Ejemplo**: Una fuente de alimentación de 500 W puede suministrar hasta esa cantidad de energía a los componentes del equipo.

---

## Energía electrostática (ESD)

La **electricidad estática** es una acumulación de carga eléctrica en la superficie de un objeto, que puede liberarse repentinamente en forma de chispa.

- Puede dañar componentes electrónicos sensibles durante el ensamblaje o reparación de equipos.
- Para evitarlo, es fundamental **descargarse tocando una superficie metálica conectada a tierra** antes de manipular componentes internos.

> **Recomendación**: Utilizar una pulsera antiestática o trabajar sobre una superficie antiestática en entornos de reparación.

---

## Leyes y principios básicos aplicados

- **Regla 1**: A mayor velocidad de un componente (como un microprocesador), mayor generación de calor.
- **Regla 2**: A mayor consumo de energía (mayor voltaje o corriente), mayor producción de calor.
- **Soluciones**:  
  - Aumentar el número de núcleos para reducir la velocidad individual y disipar mejor el calor.  
  - Reducir la tecnología de fabricación (por ejemplo, de 45 nm a 32 nm) para disminuir el voltaje y mejorar la eficiencia energética.

---

## Aplicación en equipos informáticos

Todos los dispositivos informáticos dependen de circuitos eléctricos y electrónicos. Internamente, requieren **corriente continua** para funcionar, por lo que las fuentes de alimentación realizan una conversión de **CA a CC** mediante procesos como:

1. **Transformación**: Reducción del voltaje mediante un transformador.
2. **Rectificación**: Conversión de CA a CC mediante diodos rectificadores (puente de Graetz).
3. **Filtrado**: Suavizado de la señal para obtener una corriente continua estable.
4. **Regulación**: Ajuste preciso de los voltajes de salida (3.3 V, 5 V, 12 V, etc.).

> **Importante**: Los diodos rectificadores permiten el flujo de corriente en un solo sentido, lo cual es esencial para convertir la señal alterna en continua.

---

Este conocimiento es fundamental para diagnosticar fallos, realizar mediciones con instrumentos como el multímetro y garantizar una reparación segura y eficaz de los equipos microinformáticos.
