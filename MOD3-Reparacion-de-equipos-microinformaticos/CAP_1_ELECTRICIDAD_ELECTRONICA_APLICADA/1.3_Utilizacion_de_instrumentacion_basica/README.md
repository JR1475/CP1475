# Resumen generado por IA

Este documento contiene un resumen del punto [1.3], generado con inteligencia artificial.

# 1.3 Utilización de Instrumentación Básica

En la reparación de equipos microinformáticos, el uso correcto de instrumentos y herramientas básicas es fundamental para diagnosticar fallos, realizar mediciones seguras y ejecutar reparaciones precisas. Este apartado describe los instrumentos más comunes, su funcionamiento, tipos disponibles y recomendaciones de uso.

---

## 1.3.1 El Multímetro o Polímetro

El **multímetro** (también llamado **polímetro**) es una herramienta esencial en cualquier taller de reparación electrónica. Permite medir diferentes magnitudes eléctricas, lo que facilita el diagnóstico de averías en fuentes de alimentación, circuitos, conectores y componentes.

### Funciones principales:
- **Voltaje en corriente continua (DC)** y **alterna (AC)** → (función de voltímetro).
- **Intensidad de corriente continua** → (función de amperímetro).
- **Resistencia eléctrica** → (función de ohmímetro).
- **Continuidad de circuitos** (con beep sonoro).
- **Prueba de diodos y transistores**.

---

### Tipos de Multímetros

| Tipo | Características | Ventajas | Desventajas |
|------|------------------|---------|------------|
| **Análogo (de aguja)** | Usa una escala física y una aguja móvil para mostrar los valores. | Útil para observar tendencias o variaciones rápidas de señal. | Menos preciso, difícil de leer, frágil. |
| **Digital (DMM - Digital Multimeter)** | Muestra los valores en una pantalla LCD/LED. Es el más utilizado hoy. | Alta precisión, fácil lectura, funciones adicionales (hold, auto-rango). | Requiere batería, puede ser menos efectivo en señales fluctuantes. |

> ✅ **Recomendación**: Para reparación de equipos informáticos, se recomienda un **multímetro digital** con funciones de continuidad y prueba de diodos.

---

### Conexión y uso básico

#### Medición de voltaje (continua o alterna):
- **Conexión en paralelo** al componente o conector.
- Puntas:  
  - Negra → terminal **COM**.  
  - Roja → terminal **VΩmA**.
- Selector rotativo: en la escala adecuada (ej. 20 V en DC para medir voltajes de fuente ATX).

#### Medición de intensidad (corriente continua):
- **Conexión en serie** con el circuito (se abre el circuito y se intercala el multímetro).
- Puntas:  
  - Roja → terminal **mA** (para corrientes bajas) o **10A** (para altas corrientes).
- Selector rotativo: en **A (amperios)** o **mA**.

> ⚠️ **Precaución**: Nunca medir corriente conectando el multímetro en paralelo, puede dañar el instrumento.

#### Medición de resistencia y continuidad:
- El circuito debe estar **desconectado y sin alimentación**.
- El multímetro envía una pequeña corriente y mide la resistencia.
- Modo **continuidad**: emite un sonido si hay conexión (útil para verificar cables o pistas rotas).

---

### Consejos para un uso correcto
- No tocar las puntas metálicas durante la medición.
- No exceder los rangos máximos indicados (ej. 600 V, 10 A).
- Cambiar la escala con las puntas desconectadas.
- No medir resistencias en circuitos alimentados.
- No usar el multímetro con las manos mojadas o en ambientes húmedos.
- Verificar que los condensadores estén descargados antes de medir.

---

## 1.3.2 El Soldador

El **soldador** es una herramienta utilizada para unir componentes electrónicos a una placa de circuito impreso (PCB) mediante **estaño**. Aunque muchas reparaciones modernas consisten en reemplazar módulos completos, el soldador sigue siendo esencial para reparaciones avanzadas (como cambiar un condensador hinchado o reparar una pista dañada).

---

### Tipos de Soldadores

| Tipo | Características | Uso recomendado |
|------|------------------|------------------|
| **Soldador de punta fija** | Potencia fija (20–40 W), sin control de temperatura. | Uso básico, no recomendado para electrónica sensible. |
| **Soldador regulable (con control de temperatura)** | Permite ajustar la temperatura (ej. 250–400 °C). | Ideal para electrónica, evita quemar componentes. |
| **Estación de soldadura** | Incluye soldador, desoldador, soporte y control de temperatura. | Profesional, permite trabajos precisos y repetidos. |

> ✅ **Recomendación**: Usar un soldador de **30 W máximo** con control de temperatura para reparación de placas base u otros circuitos sensibles.

---

### Tipos de Estaño (Soldadura)

El **estaño** es la aleación que se funde para crear la unión eléctrica y mecánica entre componentes y pistas.

| Tipo | Composición | Características |
|------|-------------|-----------------|
| **Estaño con plomo (Sn60/Pb40)** | 60% estaño, 40% plomo | Fácil de soldar, punto de fusión bajo (~183 °C), pero tóxico. |
| **Estaño sin plomo (RoHS)** | Estaño con plata, cobre o antimonio | Más ecológico, punto de fusión más alto (~217 °C), requiere más calor. |

> ⚠️ **Normativa**: En la UE, el uso de plomo está restringido (directiva RoHS), por lo que el estaño sin plomo es el más común en equipos nuevos.

---

### Tipos de Flux (Flujo)

El **flux** es una sustancia química que se aplica antes de soldar para **limpiar las superficies**, **evitar la oxidación** y mejorar la fluidez del estaño.

| Tipo | Características | Uso |
|------|------------------|-----|
| **Flux de resina (rosin)** | Suave, no corrosivo, fácil de limpiar. | Ideal para electrónica. |
| **Flux ácido** | Muy activo, elimina óxido fuerte. | Solo para trabajos en metales gruesos, **no recomendado para electrónica**. |
| **Flux sin limpieza (no-clean)** | No requiere limpieza posterior. | Práctico para producción en serie. |

> ✅ **Uso recomendado**: Flux de resina en pequeñas cantidades para reparaciones electrónicas.

---

### Técnica de soldadura correcta
1. Limpiar la zona a soldar.
2. Aplicar una pequeña cantidad de flux.
3. Calentar el punto con la punta del soldador.
4. Aplicar el hilo de estaño (no sobre el soldador, sino sobre la unión).
5. Retirar el estaño y luego el soldador.
6. Dejar enfriar sin mover la unión.
7. Limpiar con alcohol isopropílico si es necesario.

> 🔧 **Herramientas complementarias**:
- **Desoldador manual (bomba desoldadora)**: Absorbe el estaño fundido.
- **Hilo desoldador (desoldante)**: Mecha metálica que absorbe el estaño por capilaridad.

---

## 1.3.3 Tester de Fuentes de Alimentación

El **tester de fuentes de alimentación** es una herramienta específica para verificar rápidamente si una fuente ATX entrega los voltajes correctos en sus conectores.

### Funcionamiento:
- Se conecta al **conector principal ATX (20+4 pines)** y al **conector de alimentación del CPU (4+4 pines)**.
- Alimenta la fuente mediante un puente automático (simula el pulsado del botón de encendido).
- Muestra los voltajes de salida mediante **LEDs** o un **display digital**.

### Voltajes comunes en fuentes ATX:
| Color del cable | Voltaje | Componente alimentado |
|-----------------|--------|------------------------|
| Amarillo        | +12 V  | Disco duro, ventiladores, GPU |
| Rojo            | +5 V   | Placa base, USB, periféricos |
| Naranja         | +3.3 V | Memoria RAM, chipset |
| Negro           | GND (0 V) | Tierra |
| Verde           | PS_ON  | Señal de encendido (puente a GND para activar) |
| Morado          | +5 VSB | Alimentación en reposo (Wake-on-LAN) |

> ✅ **Ventajas**:
- Rápido y sencillo de usar.
- Ideal para comprobar si una fuente está "muerta" o entrega voltajes fuera de rango.
- Evita tener que montar todo el equipo para probarla.

> ⚠️ **Limitación**:
- No mide con precisión como un multímetro.
- No detecta fallos bajo carga (algunas fuentes fallan solo cuando están cargadas).

---

### Ejemplo de uso:
1. Desconectar la fuente del equipo.
2. Conectar el tester al conector ATX.
3. Encender la fuente (el ventilador debe girar).
4. Verificar que los LEDs muestren los voltajes correctos.
5. Si algún voltaje está fuera de rango (±5%), la fuente debe cambiarse.

---

## 1.3.4 Otros Instrumentos y Herramientas

Además del multímetro, soldador y tester, existen otras herramientas útiles en un puesto de reparación:

| Herramienta | Función | Observaciones |
|-----------|--------|---------------|
| **Destornilladores de precisión** | Para desmontar equipos pequeños (portátiles, smartphones). | Incluir puntas Phillips, planas, Torx, etc. |
| **Pinzas de punta fina** | Manipular componentes pequeños o cables. | Esenciales para conectar cables frontales. |
| **Lupa con luz** | Ver detalles en placas o soldaduras. | Útil para inspeccionar pistas o componentes SMD. |
| **Aire comprimido** | Limpiar polvo de ventiladores, disipadores, fuentes. | Evita el sobrecalentamiento. |
| **Dremel u herramienta multifunción** | Cortar, lijar, amolar. | Útil en modificaciones (modding) o adaptaciones mecánicas. |
| **Pulsera antiestática** | Evitar descargas electrostáticas (ESD). | Obligatoria al manipular componentes sensibles. |
| **Cutter o cúter** | Cortar cables, retirar aislamiento. | Usar con precaución para no dañar conductores. |

> 💡 **Nota**: Aunque muchas herramientas son opcionales, contar con un **kit básico completo** mejora la eficiencia y profesionalismo del técnico.

---

## Conclusión

La instrumentación básica es el **cimiento de cualquier reparación electrónica**. Dominar el uso del multímetro, soldador y tester de fuentes permite diagnosticar fallos con precisión, realizar reparaciones efectivas y garantizar la seguridad del técnico y del equipo. Además, conocer los **tipos de instrumentos y materiales** (como estaño, flux y soldadores) ayuda a elegir las herramientas adecuadas para cada tarea, mejorando la calidad del trabajo y evitando daños innecesarios.
