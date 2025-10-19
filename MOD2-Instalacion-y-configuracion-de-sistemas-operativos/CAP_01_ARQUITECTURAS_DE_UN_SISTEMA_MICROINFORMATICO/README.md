# Resumen generado por IA

Este documento contiene un resumen de todo el capítulo 1, generado con inteligencia artificial. 
 Para información detallada Revisar el equivalente en el Módulo 1

# Capítulo 1: Arquitecturas de un sistema microinformático

## Índice del Capítulo 1

1.1 ESQUEMA FUNCIONAL DE UN ORDENADOR
1.2 LA UNIDAD CENTRAL DE PROCESO Y SUS ELEMENTOS
   - 1.2.1 La memoria interna
   - 1.2.2 La memoria de vídeo o gráfica
1.3 LAS UNIDADES DE ENTRADA Y SALIDA
   - 1.3.1 Los periféricos
1.4 LAS UNIDADES DE ALMACENAMIENTO SECUNDARIO
   - 1.4.1 Disco duro
   - 1.4.2 Lector-grabador de discos ópticos y soportes ópticos
   - 1.4.3 Tarjetas de memoria flash
1.5 LAS TARJETAS DE EXPANSIÓN
   - 1.5.1 La tarjeta gráfica
1.6 BUSES Y RANURAS DE EXPANSIÓN
   - 1.6.1 Puertos y conectores
1.7 CORRESPONDENCIA ENTRE SUBSISTEMAS


## Información detallada del capítulo

### Esquema funcional de un ordenador
El documento describe la estructura jerárquica de un computador a través de niveles:

- **Nivel 0 - Lógica Digital**: Corresponde al hardware real (dispositivos y circuitos electrónicos)
- **Nivel 1 - Microprogramación**: Contiene microprogramas que interpretan instrucciones de nivel superior
- **Nivel 2 - Lenguaje Máquina**: Conjunto de instrucciones interpretables directamente por el hardware
- **Nivel 3 - Sistema Operativo**: Programas que gestionan recursos del sistema
- **Nivel 4 - Lenguajes de alto nivel**: Lenguajes de programación con alta abstracción
- **Nivel 5 - Nivel de Aplicación**: El nivel más alejado de la realidad física

Según la arquitectura de von Neumann, un computador está formado por:
- **Unidad Aritmético-Lógica (ALU)**: Realiza cálculos, comparaciones y toma decisiones lógicas
- Memoria principal
- Unidad de control
- Dispositivos de entrada/salida

### Sistema informático
Un sistema informático se define como un conjunto de partes interrelacionadas, compuesto por tres elementos básicos:
- **Subsistema físico (hardware)**: Placas, circuitos integrados, conectores, cables y sistema de comunicaciones
- **Subsistema lógico (software)**: Permite disponer de un lenguaje lógico para comunicarse con el hardware
- **Factor humano**: Las personas que utilizan el sistema

Estructuralmente, un sistema informático se puede dividir en partes, pero funcionalmente es indivisible, ya que si se divide, pierde propiedades esenciales.

## Actualización de la información

### Nuevas arquitecturas procesador
Además de la arquitectura von Neumann tradicional, actualmente coexisten varias arquitecturas:
- **Arquitectura Harvard**: Separación física entre memoria de programa y datos, común en microcontroladores
- **Arquitecturas RISC modernas**: ARM (dominante en dispositivos móviles e incursionando en servidores y PCs) y RISC-V (arquitectura open-source en rápido crecimiento)
- **Arquitecturas híbridas**: Combinan características de diferentes enfoques para optimizar rendimiento y eficiencia energética

### Procesadores multinúcleo y paralelismo
Los procesadores modernos incorporan múltiples núcleos físicos (hasta 128 en servidores) y lógicos (mediante hyperthreading), lo que ha transformado radicalmente la gestión de procesos y la programación concurrente. La arquitectura de los sistemas operativos debe gestionar eficientemente estos recursos paralelos.

### Memoria y almacenamiento
- **Memoria RAM**: DDR5 ha reemplazado a DDR4, ofreciendo mayor velocidad y eficiencia energética
- **Almacenamiento**: Los SSD NVMe han superado ampliamente a los discos duros tradicionales en velocidad, con interfaces PCIe 4.0 y 5.0
- **Nuevas tecnologías**: Memoria persistente (Intel Optane), almacenamiento en la nube integrado en la arquitectura del sistema

### Buses y conectividad
- **USB-C/Thunderbolt**: Interfaces unificadas que combinan datos, video y alimentación
- **PCIe 4.0/5.0**: Mayor ancho de banda para dispositivos de alta velocidad
- **Wi-Fi 6/6E y Bluetooth 5.x**: Conectividad inalámbrica de alta velocidad y baja latencia
- **Nuevas arquitecturas de red**: Soporte nativo para redes 5G y futuras tecnologías de conectividad

### Seguridad a nivel de hardware
- **TPM 2.0**: Módulos de plataforma segura integrados en la mayoría de los nuevos sistemas
- **Secure Boot**: Verificación de la cadena de arranque para prevenir malware
- **Aislamiento de memoria**: Tecnologías como Intel SGX y AMD SEV que protegen datos sensibles
- **Mitigaciones para vulnerabilidades**: Protecciones contra Spectre, Meltdown y otras vulnerabilidades de microarquitectura

### Virtualización y contenedores
La virtualización a nivel de hardware (Intel VT-x, AMD-V) se ha convertido en un componente esencial de la arquitectura moderna, permitiendo:
- Ejecución eficiente de múltiples máquinas virtuales
- Soporte nativo para tecnologías de contenedores
- Aislamiento robusto de procesos y recursos
- Implementación de microservicios y arquitecturas distribuidas

### Tendencias emergentes
- **Computación cuántica**: Aunque aún en fase experimental, está influyendo en el diseño de sistemas de seguridad
- **Inteligencia artificial en el hardware**: Unidades de procesamiento neuronal (NPU) integradas en CPUs modernas
- **Arquitecturas heterogéneas**: Combinación de diferentes tipos de procesadores (CPU, GPU, TPU) en un mismo sistema
- **Edge computing**: Nuevas arquitecturas diseñadas para procesamiento distribuido en el perímetro de la red

Esta información complementa los fundamentos presentados en el texto original, integrando las evoluciones tecnológicas más recientes en el campo de las arquitecturas de sistemas microinformáticos.
