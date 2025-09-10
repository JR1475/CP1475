# Resumen generado por IA

Este documento contiene un resumen de los puntos [3.2.1], [3.2.2], [3.2.3], [3.2.4], [3.2.5], generado con inteligencia artificial.

# 3.2 LA GESTIÓN DE LA MEMORIA

## Índice de los apartados:

- **3.2.1 Fragmentación**
  - Concepto y tipos de fragmentación
  - Fragmentación interna
  - Fragmentación externa
  - Criterios de evaluación del gestor de memoria

- **3.2.2 Segmentación**
  - Concepto de segmentación
  - Ventajas de la segmentación
  - Compactación de memoria
  - Protección y uso compartido

- **3.2.3 Memoria virtual**
  - Concepto y definición
  - Ventajas de la memoria virtual
  - Funcionamiento y gestión
  - Archivo de paginación

- **3.2.4 Paginación**
  - Concepto de paginación
  - Marcos de página y bloques de datos
  - Dirección virtual vs. dirección física
  - Funcionamiento detallado

- **3.2.5 Algoritmos de reemplazo de páginas**
  - Algoritmo FIFO (First Input First Output)
  - Algoritmo LRU (Usado Menos Recientemente)
  - Comparación de algoritmos
  - Selección del algoritmo óptimo

---

## 3.2.1 Fragmentación

### Concepto y tipos de fragmentación

La fragmentación se define como **la cantidad de memoria desaprovechada por el gestor de memoria**. Es uno de los principales desafíos en la gestión eficiente de la memoria de un sistema informático. Existen tres tipos principales de fragmentación:

1. **Fragmentación interna**: Ocurre cuando se asigna más memoria a un proceso de la que realmente necesita. Esto sucede principalmente en sistemas de particiones fijas, donde el tamaño de la partición es mayor que el tamaño del proceso.

2. **Fragmentación externa**: Se produce cuando existen espacios libres suficientes en conjunto para satisfacer una solicitud de memoria, pero estos espacios están dispersos en múltiples bloques pequeños, imposibilitando su asignación a un nuevo proceso.

3. **Fragmentación temporal**: Relacionada con la gestión dinámica de la memoria a lo largo del tiempo, cuando los procesos se cargan y descargan de memoria.

### Fragmentación interna

En sistemas con particiones fijas, la memoria se divide en bloques del mismo tamaño o de tamaños predefinidos. Cuando se carga un proceso, se le asigna la partición de memoria más pequeña disponible que pueda contenerlo. El problema principal es que si el proceso es más pequeño que la partición asignada, el espacio sobrante queda desaprovechado.

Por ejemplo, si tenemos particiones de 4 MB y un proceso de 3 MB, se desperdiciarán 1 MB por proceso, lo que representa un 25% de ineficiencia.

### Fragmentación externa

La fragmentación externa es un problema inherente a los sistemas con particiones variables, donde el número, posición y tamaño de las particiones varía dinámicamente. Aunque este enfoque es más eficiente que las particiones fijas, con el tiempo los bloques libres quedan dispersos, impidiendo asignar memoria a procesos que requieren bloques contiguos grandes.

### Criterios de evaluación del gestor de memoria

Los gestores de memoria se evalúan según varios criterios:

- **Memoria desaprovechada**: Cantidad de memoria perdida en el proceso de asignación (relacionado con la fragmentación).
- **Complejidad en el tiempo**: Tiempo perdido en el proceso de acceso a la zona de memoria asignada.
- **Protección y uso compartido**: Capacidad para proporcionar un espacio de memoria seguro para cada proceso y controlar que ningún proceso acceda a zonas que no le corresponden.

El gestor de memoria es la parte del sistema operativo encargado de asignar la memoria a los procesos y gestionar su uso, garantizando tanto la protección como el uso compartido de recursos.

---

## 3.2.2 Segmentación

### Concepto de segmentación

La segmentación es un esquema avanzado de gestión de memoria que se basa en particiones variables. A diferencia de otros esquemas, la segmentación permite que los bloques de un proceso estén situados en áreas de memoria no contiguas, lo que resuelve eficazmente el problema de la fragmentación externa.

### Ventajas de la segmentación

La segmentación presenta varias ventajas significativas:

- **Bloques no contiguos**: Permite que diferentes partes de un proceso (código, datos, pila) residan en áreas de memoria no contiguas.
- **Compactación de memoria**: Elimina la fragmentación externa mediante la reubicación dinámica de bloques de memoria.
- **Protección**: Proporciona mecanismos para proteger cada segmento de acceso no autorizado.
- **Uso compartido**: Permite que diferentes procesos compartan segmentos específicos de memoria.

### Compactación de memoria

La compactación de memoria es un proceso mediante el cual se elimina la fragmentación externa. El gestor de memoria reubica dinámicamente los bloques de memoria asignados a los procesos, creando un espacio contiguo libre. Este proceso implica:

1. Identificar los bloques libres dispersos
2. Mover los bloques ocupados para crear un espacio contiguo
3. Actualizar las tablas de segmentación para reflejar los nuevos mapas de memoria

Aunque la compactación resuelve eficazmente la fragmentación externa, tiene el inconveniente de requerir tiempo de CPU para realizar los movimientos y actualizaciones necesarios.

### Protección y uso compartido

La segmentación facilita la protección de la memoria mediante:

- Asignación de derechos de acceso (lectura, escritura, ejecución) a cada segmento
- Verificación de cada acceso a memoria para garantizar que está permitido
- Establecimiento de límites para cada segmento

Además, permite el uso compartido de memoria entre procesos, lo cual es esencial para:

- Comunicación interprocesos
- Bibliotecas compartidas
- Memoria compartida para aplicaciones colaborativas

El gestor de memoria debe controlar el acceso a estas zonas compartidas para garantizar que los datos sean leídos y escritos correctamente, evitando colisiones o lecturas erróneas (por ejemplo, que un proceso lea un dato a medio escribir por otro proceso).

---

## 3.2.3 Memoria virtual

### Concepto y definición

La memoria virtual es una técnica de gestión de memoria desarrollada en 1961 por Fotheringham. Su idea básica es que **el tamaño del programa, los datos y la pila combinados pueden ser mayores que la memoria disponible para ese proceso**. El sistema operativo guarda en la memoria principal únicamente las partes del programa de uso corriente, manteniendo el resto en disco.

### Ventajas de la memoria virtual

La utilización de memoria virtual ofrece varias ventajas significativas:

- **Permite trabajar con programas de mayor tamaño que la memoria física**: Los programas pueden exceder la capacidad de la RAM física.
- **Permite tener más programas cargados al mismo tiempo**: Aumenta la multiprogramación al no requerir que todos los programas residan completamente en memoria.
- **Permite que los programas empiecen a ejecutarse antes**: No es necesario cargar todo el programa en memoria para iniciar su ejecución.
- **Reduce la frecuencia de intercambio de procesos**: Menor trabajo de E/S durante el intercambio de procesos.
- **Mejora la eficiencia de la CPU**: Mientras un programa realiza operaciones de swapping, otro puede utilizar la CPU.

### Funcionamiento y gestión

El sistema operativo decide qué partes del programa cargar en memoria, cuándo cargarlas y dónde ubicarlas. Este proceso implica riesgos:

- Si la selección es incorrecta, puede perderse mucho tiempo en accesos al disco.
- El sistema debe predecir con precisión qué partes del programa se utilizarán próximamente.

Además, la memoria virtual es útil porque permite que mientras un programa realiza swapping (intercambio entre memoria y disco), otro proceso pueda utilizar la CPU, mejorando así la eficiencia general del sistema.

### Archivo de paginación

El archivo de paginación es un área en el disco duro que Windows utiliza como si fuese RAM. En la configuración del sistema, se puede observar el "Tamaño total del archivo de paginación para todas las unidades", que representa la memoria virtual de almacenamiento en disco que simula el funcionamiento de la memoria principal, aunque de forma más lenta.

La memoria virtual permite ejecutar más programas de los que podrían cargarse con solo la memoria RAM disponible. Si se pulsa en "Cambiar" en la configuración, se puede ajustar el tamaño del archivo de paginación según las necesidades del sistema.

---

## 3.2.4 Paginación

### Concepto de paginación

La paginación consiste en **dividir el proceso en páginas (bloques de datos), todas del mismo tamaño**. El sistema operativo divide la memoria en bloques llamados "marcos de página" y únicamente carga en memoria las páginas que se van a utilizar.

Si la predicción se realiza correctamente y se cargan en memoria solo las páginas que realmente se van a utilizar, el proceso se ejecutará exactamente igual que si se hubieran traído a la memoria todas las páginas desde el disco.

### Marcos de página y bloques de datos

En un instante determinado, existirán varios bloques (marcos de página) de la memoria cargados con páginas (bloques de datos); el resto de marcos pueden estar vacíos o utilizados para otros fines.

Por ejemplo, imaginemos un proceso que tiene un tamaño de 4 páginas. En el ejemplo observamos que únicamente las páginas 2 y 3 están cargadas en memoria; las otras dos, en caso de necesitarse, provocarían fallo de página y se traerían desde el disco. Además, las páginas 2 y 3 están cargadas desordenadamente: la página 2 está cargada en el marco 0 de memoria y la página 3 en el marco 2.

| Marcos de página | Bloques cargados |
|------------------|------------------|
| 0                | 2                |
| 1                | --               |
| 2                | 3                |
| 3                | --               |

### Dirección virtual vs. dirección física

Si accedemos a la primera dirección virtual de memoria (primer marco de página), observamos que físicamente estamos accediendo a la primera dirección de la página 2 del proceso.

Si empleamos páginas de 1K (1.024 palabras), el marco 0 se direcciona con las direcciones virtuales 0 a 1.023, el marco 1 con las direcciones 1.024 a 2.047 y así sucesivamente.

| Dirección virtual | Marco de página | Dirección física |
|-------------------|-----------------|------------------|
| 0-1.023           | 0               | 2.048-3.071      |
| 1.024-2.047       | 1               | Fallo de página  |
| 2.048-3.071       | 2               | 3.072-4.095      |
| 3.072-4.095       | 3               | Fallo de página  |

### Funcionamiento detallado

El sistema de paginación funciona mediante una tabla de páginas que mapea las direcciones virtuales a direcciones físicas. Cuando un proceso intenta acceder a una dirección de memoria:

1. El sistema verifica si la página correspondiente está en memoria (en los marcos de página)
2. Si está presente, se realiza la traducción de dirección virtual a física
3. Si no está presente (fallo de página), se produce una interrupción y el sistema operativo debe:
   - Buscar un marco libre o seleccionar una página víctima para reemplazar
   - Cargar la página solicitada desde el disco
   - Actualizar la tabla de páginas
   - Reiniciar la instrucción que causó el fallo

Este mecanismo permite que los procesos operen con un espacio de direcciones virtual continuo, mientras que físicamente las páginas pueden estar dispersas en la memoria principal.

---

## 3.2.5 Algoritmos de reemplazo de páginas

### Algoritmo FIFO (First Input First Output)

El algoritmo FIFO es el más simple de todos, tanto para entender como para programar. Consiste en elegir la página que lleve más tiempo en memoria, sin considerar cuándo se utilizó por última vez.

Este algoritmo se basa en la suposición de que las páginas que han estado más tiempo en memoria son menos probables de ser utilizadas en el futuro inmediato. Sin embargo, esta suposición no siempre es válida, lo que puede llevar a una elección ineficiente de páginas a reemplazar.

### Algoritmo LRU (Usado Menos Recientemente)

El algoritmo LRU (Least Recently Used) consiste en considerar que un acceso a página reciente puede implicar un acceso futuro próximo. El algoritmo elige como víctima aquella página de entre las que se encuentran en memoria que hace más tiempo que no ha sido referenciada.

Este algoritmo se basa en el principio de localidad temporal, que establece que si una página ha sido utilizada recientemente, es probable que vuelva a ser utilizada pronto. Aunque es más eficiente que FIFO, su implementación completa puede ser costosa en términos de hardware y software.

### Comparación de algoritmos

Los algoritmos de reemplazo de páginas se evalúan principalmente por su tasa de fallos de página. Un buen algoritmo minimiza la cantidad de fallos de página, reduciendo así el tiempo perdido en operaciones de E/S con el disco.

- **FIFO**: Simple pero puede tener comportamientos ineficientes (anomalía de Belady)
- **LRU**: Más eficiente pero más complejo de implementar
- **Óptimo**: Teóricamente el mejor, pero requiere conocimiento del futuro (no implementable en la práctica)
- **Clock**: Variante aproximada de LRU, más eficiente en términos de implementación

### Selección del algoritmo óptimo

La elección del algoritmo de reemplazo depende de varios factores:

- **Complejidad de implementación**: Algoritmos más simples son más fáciles de implementar pero pueden ser menos eficientes.
- **Recursos disponibles**: Algunos algoritmos requieren hardware especializado.
- **Patrones de acceso típicos**: El comportamiento de los programas en el sistema específico.
- **Rendimiento requerido**: Sistemas con requisitos estrictos de rendimiento pueden justificar algoritmos más complejos.

En la práctica, muchos sistemas operativos modernos utilizan variantes del algoritmo LRU o algoritmos híbridos que combinan características de varios enfoques para lograr un equilibrio entre eficiencia y complejidad de implementación.

La gestión eficiente de la memoria mediante algoritmos de reemplazo adecuados es crucial para el rendimiento del sistema, ya que los fallos de página representan operaciones de E/S costosas que pueden ralentizar significativamente la ejecución de los programas.
