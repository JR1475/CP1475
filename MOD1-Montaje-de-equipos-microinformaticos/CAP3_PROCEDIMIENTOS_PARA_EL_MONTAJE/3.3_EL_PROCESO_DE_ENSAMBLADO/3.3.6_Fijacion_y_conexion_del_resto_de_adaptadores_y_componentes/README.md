# Resumen generado por IA

Este documento contiene un resumen del punto [3.3.6], generado con inteligencia artificial.

# 3.3.6 FIJACIÓN Y CONEXIÓN DEL RESTO DE ADAPTADORES Y COMPONENTES

## Introducción

La fijación y conexión del resto de adaptadores y componentes es una etapa crucial en el ensamblado de equipos microinformáticos. Como señala el documento: "Una vez montado el disco duro y la memoria RAM, el siguiente paso es la fijación y conexión del resto de componentes del sistema." Este proceso incluye la instalación de tarjetas de expansión, la conexión de cables del chasis y la correcta alimentación de todos los componentes.

## 1. Instalación de la Tarjeta de Vídeo

### 1.1 Tipos de Tarjetas Gráficas

**Según el documento:**
- "Las tarjetas de vídeo más recientes son las PCI Express (PCIe) aunque también se pueden encontrar en el mercado tarjetas AGP o PCI."
- "La instalación de todo este tipo de tarjetas es similar."

**Características por interfaz:**
- **PCIe (PCI Express):** La interfaz más moderna y rápida
- **AGP:** Interfaz antigua, ya obsoleta en sistemas nuevos
- **PCI:** Interfaz estándar para tarjetas de expansión básicas

### 1.2 Proceso de Instalación

**Según el documento:**
- "Paso 1: retirar el cable de corriente del equipo."
- "Paso 2: liberar un slot de la plaquita metálica. Utilizar para ello un alicate de mordaza y un destornillador. Cuidado con esta chapa pues puede provocar cortes en las manos."

**Pasos detallados:**
1. **Preparación:**
   - Desconectar el equipo de la corriente
   - Retirar la tapa lateral correspondiente al slot de expansión

2. **Liberación del slot:**
   - Retirar la chapa metálica del slot seleccionado
   - Tener cuidado al manipular la chapa para evitar cortes

3. **Instalación de la tarjeta:**
   - "Paso 3: alinear la tarjeta de vídeo con el slot y la ranura de expansión de la placa base."
   - "||RECUERDA: Algunos conectores AGP o PCIe tienen un mecanismo de seguridad para fijar mejor la tarjeta. Ten cuidado y no lo fuerces para no romper la fijación."
   - "Paso 4: presionar de manera suave la tarjeta de vídeo hasta que quede encajada correctamente. No forzar en exceso."

4. **Fijación final:**
   - "Paso 5: fijar la tarjeta con un tornillo o bien con el sistema que traiga la caja o chasis."
   - Verificar que la tarjeta está firmemente sujeta

**Consideraciones especiales:**
- "Algunas tarjetas de alta gama necesitan un conector eléctrico suplementario pues el voltaje suministrado por la placa base no es suficiente. En ese caso no hay que olvidarse conectarlo."
- Para tarjetas PCIe x16, asegurar que el bloqueo mecánico está correctamente activado

## 2. Instalación de Tarjetas de Expansión

### 2.1 Tipos Comunes de Tarjetas de Expansión

**Según el documento:**
- "ACTIVIDAD: INSTALACIÓN DE VARIAS NIC: Por regla general las placas base ya tienen integradas la NIC (Network Interface Card). No obstante en caso de servidores u equipos que necesiten otro adaptador de red adicional porque se van a conectar a más de una red, se le puede instalar una u varias tarjetas adicionales."

**Tipos comunes:**
- **NIC (Tarjeta de Red):** Para conexión a redes
- **Tarjetas de Sonido:** Para sistemas de audio avanzados
- **Tarjetas de Captura:** Para captura de vídeo
- **Tarjetas de Controladoras RAID:** Para configuraciones de almacenamiento avanzadas

### 2.2 Proceso de Instalación de Tarjetas de Expansión

**Según el documento:**
- "Los pasos a seguir son los mismos que para la tarjeta de vídeo:"

**Pasos detallados:**
1. **Preparación:**
   - Desconectar el equipo de la corriente
   - Identificar el slot adecuado para la tarjeta (PCIe x1, PCI, etc.)

2. **Liberación del slot:**
   - Retirar la chapa metálica correspondiente
   - "Cuidado con esta chapa pues puede provocar cortes en las manos."

3. **Instalación de la tarjeta:**
   - Alinear la tarjeta con el slot y la ranura de expansión
   - Presionar suavemente hasta que quede encajada correctamente
   - "No forzar en exceso"

4. **Fijación final:**
   - Fijar la tarjeta con un tornillo o sistema de sujeción de la caja
   - Verificar que la tarjeta está firmemente sujeta

**Ejemplo específico - Tarjeta de Red:**
- "NIC instalable en el puerto PCI Express (PCIe) x1"
- "NIC PCI inalámbrica"
- Después de la instalación física, se requiere configuración del controlador

## 3. Conexionado de los Demás Cables del Chasis

### 3.1 Conexión de Ventiladores

**Según el documento:**
- "Paso 1: conectar los conectores molex que alimenten a los distintos ventiladores."

**Procedimiento:**
1. Identificar los conectores Molex en la fuente de alimentación
2. Conectar a los ventiladores correspondientes
3. Asegurar que los ventiladores están orientados correctamente (entrada/salida de aire)
4. Organizar los cables para no obstruir el flujo de aire

**Consideraciones:**
- Verificar que el sentido de giro de los ventiladores es correcto
- "Tras la instalación completa, verificar que el sentido de entrada de aire o salida de los ventiladores es el correcto."

### 3.2 Conexión de los Cables Frontales

**Según el documento:**
- "Paso 2: Conexión de los demás cables del chasis: Speaker del chasis, Conectores USB, Panel del sistema (power o encendido de la torre, reset, LED del disco duro, etc.), Conector de los demás ventiladores del chasis."

**Pasos detallados:**
1. **Identificación de conectores:**
   - "Figura 3.53. Conectores del frontal de la caja"
   - Consultar el manual de la placa base para identificar los pines correctos

2. **Conexión de cada elemento:**
   - **Power Switch (Botón de encendido):** Conectar al pin correspondiente
   - **Reset Switch (Botón de reinicio):** Conectar al pin correspondiente
   - **LEDs (Indicadores luminosos):** 
     - "||RECUERDA: Los cables de los indicadores LED tienen polaridad, si observas que no encienden quizás tienes que cambiarlos de orientación."
     - LED del disco duro (HDD LED)
     - LED de encendido (Power LED)

3. **Conectores USB:**
   - Conectar los cables USB del panel frontal a los conectores USB en la placa base
   - Verificar la orientación correcta del conector

4. **Conector del altavoz interno (Speaker):**
   - Conectar al pin correspondiente en la placa base

## 4. Conexión de la Placa Base a la Fuente de Alimentación

### 4.1 Conector ATX Principal

**Según el documento:**
- "||RECUERDA: Antes del conexionado de alimentación de la placa base, consulta el manual de la misma para hacerlo de forma correcta."

**Características:**
- "Figura 3.6. Conector ATX-24 hembra"
- "Los conectores ATX de las placas base actuales son de 24 pines."
- "Si tenemos una fuente antigua de 20 pines también se puede instalar pero tiene que hacerse en los primeros 20 pines dejando libres los 4 últimos (deberemos conectar el conector ATX de la fuente de alimentación utilizando los pines 1 y 13)."

**Procedimiento:**
1. Alinear correctamente el conector (el lado con el clip hacia el mismo lado que en la placa)
2. Insertar suavemente sin forzar
3. "Figura 3.7. Conexión del cable ATX a la placa base"
4. "En ocasiones, es difícil encajar el conector de alimentación ATX a la placa base. No fuerces demasiado la placa base pues se puede dañar."

### 4.2 Conector ATX-12V para el Procesador

**Según el documento:**
- "Figura 3.8. Conector ATX-12V"
- "Cerca del microprocesador hay un conector ATX de 12 voltios de 4 u 8 pines que va a servir para proporcionar la suficiente electricidad al mismo."
- "Hay que colocar el conector ATX 12 V macho de cuatro u ocho pines de la fuente de alimentación al conector hembra de la placa base."

**Procedimiento:**
- "Figura 3.18. Anclar el ATX-12V a la placa base, para ello habrá que ayudarse con un destornillador si fuese necesario"
- Verificar que el conector está firmemente conectado
- Asegurar que no hay cables obstruyendo el flujo de aire cerca del procesador

## 5. Errores Comunes a Evitar

### 5.1 Durante la Instalación de Tarjetas

**Según el documento:**
- "No forzar nunca los componentes. No hagas fuerza a la hora de atornillar, fijar una memoria, insertar la placa en su zócalo, etc."

**Errores específicos:**
- Forzar la inserción de tarjetas en slots incompatibles
- No liberar adecuadamente la chapa metálica antes de instalar la tarjeta
- Dañar la chapa metálica al retirarla, causando cortes
- No fijar adecuadamente la tarjeta, lo que puede causar inestabilidad

### 5.2 Durante la Conexión de Cables

- Conectar LEDs con polaridad invertida
- Confundir los conectores de power switch y reset switch
- No verificar la orientación correcta de los conectores USB
- Dejar cables sueltos que puedan obstruir ventiladores
- Forzar la conexión de conectores ATX, dañando la placa base

## 6. Verificación Post-Instalación

### 6.1 Comprobaciones Básicas

**Según el documento:**
- "¿Está la RAM correctamente instalada en el banco correspondiente y cerradas las pestañas de fijación?"
- "¿Está correctamente fijada la placa al chasis?"

**Lista de verificación:**
- Todas las tarjetas de expansión están firmemente fijadas
- Los conectores de alimentación están correctamente conectados
- Los cables frontales están conectados según el manual de la placa base
- No hay cables sueltos que puedan obstruir ventiladores
- Los ventiladores están orientados correctamente para el flujo de aire

### 6.2 Pruebas Iniciales

- Verificar que los LEDs frontales funcionan correctamente
- Comprobar que el botón de encendido y reset funcionan
- Asegurar que los ventiladores giran en la dirección correcta
- Monitorear las temperaturas iniciales del sistema

## Conclusión

La fijación y conexión del resto de adaptadores y componentes es esencial para el correcto funcionamiento del sistema. Como señala el documento: "Una vez que terminamos de instalar todos los componentes se tiene que poner el sistema en funcionamiento."

La implementación rigurosa de estos procedimientos garantiza no solo la correcta instalación física de todos los componentes, sino también una comunicación adecuada entre ellos y una alimentación segura. Para los profesionales de TI, seguir estas recomendaciones es esencial para evitar problemas de compatibilidad, inestabilidad y daños en los componentes.

Como recuerda el documento: "||RECUERDA: Los cables de los indicadores LED tienen polaridad, si observas que no encienden quizás tienes que cambiarlos de orientación." Esta advertencia, junto con el respeto por las demás precauciones mencionadas, constituye la base para una instalación profesional y segura de todos los componentes restantes en cualquier sistema microinformático.
