# Resumen generado por IA

Este documento contiene un resumen del punto [1.1.2], generado con inteligencia artificial.

# 1.1.2 Conectores Internos

## Introducción

Los conectores internos son elementos esenciales en la arquitectura de los equipos microinformáticos, permitiendo la interconexión entre la placa base y los diversos componentes del sistema. A lo largo de los años, estos conectores han evolucionado para ofrecer mayores velocidades de transferencia, menor consumo energético y mayor compatibilidad. Este documento detalla los principales conectores internos, desde los tradicionales hasta las tecnologías más modernas como M.2 y U.2.

## 1. Conectores de Alimentación

### 1.1 Conector ATX 20+4

El conector ATX 20+4 es el que proporciona energía principal a la placa base. Suele conectarse un conector macho que viene de la fuente de alimentación al conector hembra situado en la placa base. Existen en dos variantes: de 20 pines (más antiguo) y de 24 pines (más reciente). Las placas que tienen un conector hembra de 24 contactos admiten un conector macho de 20 contactos si estos se colocan en los pines 1 y 13.

### 1.2 Conector ATX 12V

Cerca del microprocesador hay un conector ATX de 12 voltios de 4 u 8 pines que sirve para proporcionar la suficiente electricidad al mismo. Es fundamental para el correcto funcionamiento del procesador, especialmente en sistemas de alto rendimiento. Debe colocarse el conector ATX 12V macho de cuatro u ocho pines de la fuente de alimentación al conector hembra de la placa base.

## 2. Conectores de Almacenamiento

### 2.1 Puertos IDE o ATA Paralelo

Los puertos IDE o ATA paralelo para discos duros y unidades ópticas pueden encontrarse uno o dos en una placa base. Tienen 40 ó 39 pines, donde el pin 20 no tiene ninguna función salvo impedir que se pueda colocar el cable en una posición incorrecta. Estos conectores están prácticamente en desuso en equipos modernos, sustituidos por interfaces SATA.

### 2.2 Puerto de Disquetera (FDD)

El puerto FDD (Floppy Disk Drive) es utilizado para conectar disqueteras, dispositivos que fueron muy útiles en el pasado para almacenar datos y arrancar el sistema operativo. Actualmente, los equipos nuevos no vienen equipados con este puerto, ya que los disquetes han sido reemplazados por medios de almacenamiento más modernos y de mayor capacidad.

### 2.3 Puerto SATA

El puerto SATA (Serial ATA) permite conectar dispositivos de almacenamiento internos como discos duros y SSDs. Los interfaces de los discos SATA II actuales están en una tasa de transferencia de 3 GB/s (los discos SATA II tienen una tasa de transferencia de 300 MB/s).  Existen diferentes generaciones:
- SATA I: 1.5 Gbps
- SATA II: 3 Gbps
- SATA III: 6 Gbps

El propósito de las nuevas generaciones de interfaces SATA es la retrocompatibilidad con los conectores y cables anteriores.

### 2.4 Conector M.2

M.2 es un estándar de conectores internos que adopta una nueva disposición física y eléctrica para reemplazar a los estándares PCIe y mSATA.  Es uno de los conectores más importantes en sistemas modernos, permitiendo la instalación de SSDs de alto rendimiento. Existen dos tipos principales:

#### 2.4.1 M.2 SATA
Funciona con el protocolo SATA y ofrece velocidades de hasta 6.0 Gbit/s, igual que SATA III.  Es compatible con el estándar SATA tradicional pero en un formato más compacto.

#### 2.4.2 M.2 NVMe
Utiliza el bus PCIe para ofrecer velocidades mucho más altas que los SSDs SATA.  Las generaciones más recientes son:
- PCIe 3.0: Hasta 32 Gbps (aproximadamente 3.5 GB/s)
- PCIe 4.0: Hasta 64 Gbps (aproximadamente 7 GB/s)
- PCIe 5.0: Hasta 128 Gbps (aproximadamente 14 GB/s) 

La última y más rápida generación de unidades M.2 NVMe es la PCIe 5.0, aunque las unidades SSD Gen 4.0 ofrecen un buen equilibrio entre rendimiento y precio. 

#### 2.4.3 Claves y Compatibilidad M.2
Los conectores M.2 tienen diferentes "claves" (ranuras) que determinan su compatibilidad:
- Clave B (Socket 2): Soporta PCIe x2 y SATA
- Clave M (Socket 3): Soporta PCIe x4 y SATA
- Clave B+M: Combinación que soporta ambos estándares

Es importante verificar la compatibilidad entre la placa base y el dispositivo M.2, ya que no todos los slots soportan NVMe o todas las velocidades PCIe.

### 2.5 Conector U.2

U.2, también conocido como SFF-8639, es un estándar de conector físico para conectar varios tipos de dispositivos de almacenamiento, incluyendo SSDs, a una computadora.  Ofrece ventajas significativas:
- Mantiene la forma física similar a los discos SATA estándar, facilitando su instalación en bahías de 2.5"
- Soporta el protocolo NVMe sobre PCIe
- Ofrece velocidades de transferencia tan rápidas como los M.2 NVMe e incluso más, especialmente con la actualización PCIe 5.0 
- Es comúnmente utilizado en entornos empresariales y servidores

## 3. Conectores de Expansión

### 3.1 Conector PCIe 6+2

Es un conector que aporta un voltaje extra a las tarjetas gráficas modernas, siendo estas las únicas que utilizan este tipo de conector. Fundamental para tarjetas gráficas de gama alta que requieren mayor potencia.

### 3.2 PCIe 4.0 y 5.0

Las últimas generaciones de interfaces PCIe representan un avance significativo en velocidad:
- **PCIe 4.0**: Duplica el ancho de banda de PCIe 3.0, permitiendo velocidades de hasta 7 GB/s en configuración x4. 
- **PCIe 5.0**: Actualmente en desarrollo, ofrece el doble de velocidad que PCIe 4.0, alcanzando aproximadamente 14 GB/s en configuración x4. 

Estos estándares son especialmente relevantes para los SSDs NVMe de última generación, permitiendo aprovechar al máximo su potencial de velocidad.

## 4. Conectores de Ventilación y Control

### 4.1 Conectores para Ventilador (Fan)

Se pueden encontrar en la placa base más de un conector de este tipo. Se suelen etiquetar como CPU FAN o SYSTEM FAN y varían desde los clásicos de 3 pines hasta los actuales de 4 pines, los cuales incluyen la opción PWM (Pulse Width Modulation) de control de velocidad. Los conectores de 4 pines permiten un control más preciso de la velocidad del ventilador según la temperatura del sistema.

## 5. Conectores de Frontal y Periféricos

### 5.1 Conectores para Puertos USB Adicionales

En algunas placas se pueden encontrar más puertos USB de los que se encuentran soldados en la parte trasera del equipo. Estos puertos USB internos pueden necesitarse para instalar algún panel frontal u otro dispositivo. Existen también tarjetas de expansión que permiten aumentar el número de puertos USB externos e internos, siendo una solución viable cuando la placa base carece de puertos USB internos.

### 5.2 Conectores para la Caja del PC

Son un grupo de conectores (parecidos a los jumpers) que permiten conectar:
- El cable de encendido (Power SW)
- Luces LED de alimentación (Power LED) y actividad del disco duro (HDD LED)
- Altavoz interno (PC speaker)

Es importante tener en cuenta que los cables de los indicadores LED tienen polaridad, por lo que si no encienden, puede ser necesario cambiarlos de orientación.

### 5.3 Conectores de Sonido Internos

Se encuentran en las placas base que tengan tarjeta de sonido integrada. Sirven como entrada de sonido del CD u otro dispositivo interno, permitiendo conectar unidades ópticas con salida de audio analógico.

## 6. Conectores Especiales

### 6.1 Conector Wake On LAN (WOL)

Conector de 3 pines y poco frecuente. Permite conectar la tarjeta de red a la placa base de tal manera que se pueda encender el equipo desde la red. Una vez conectados placa base y tarjeta de red por sus conectores WOL, se deberá habilitar esta función en la BIOS. Dependiendo de la BIOS, puede llamarse de diferentes maneras, como "Power On by PCI Card [Enabled]" o "Wake On LAN/Ring Connector [Enabled]".

### 6.2 Conector de Infrarrojos (IR, IrDA)

Permite dotar al equipo de un módulo de infrarrojos. En la BIOS habría que asociarlo a un puerto serie y permitiría comunicar el equipo con teléfonos móviles, PDA y otros dispositivos compatibles con infrarrojos. Este conector es cada vez menos común en equipos modernos.

## 7. Tendencias y Evolución Futura

La evolución de los conectores internos sigue un camino claro hacia:
- **Mayor velocidad**: Con la transición de PCIe 3.0 a 4.0 y ahora a 5.0, las velocidades de transferencia continúan aumentando exponencialmente.
- **Unificación de estándares**: M.2 está reemplazando a múltiples interfaces anteriores (mSATA, PCIe x1/x4 para SSDs).
- **Mejor gestión energética**: Los nuevos estándares incluyen características para optimizar el consumo energético sin sacrificar rendimiento.
- **Compatibilidad hacia atrás**: Los nuevos conectores mantienen compatibilidad con dispositivos anteriores, facilitando las actualizaciones.

La tendencia futura apunta hacia interfaces aún más rápidos (PCIe 6.0 y 7.0 en desarrollo), mayor integración de funcionalidades en un solo conector y una mayor adopción de NVMe como estándar para almacenamiento de alto rendimiento. Los conectores M.2 y U.2 continuarán siendo fundamentales en los sistemas de próxima generación, especialmente con la llegada masiva de PCIe 5.0 en los próximos años.
