# Resumen generado por IA

Este documento contiene un resumen de los puntos [3.1.1], [3.1.2], [3.1.3], [3.1.4], [3.1.5] generado con inteligencia artificial.

# CAPÍTULO 3: ELEMENTOS DE UN SISTEMA OPERATIVO INFORMÁTICO

## 3.1 LA GESTIÓN DE PROCESOS

### Índice de los apartados:

- **3.1.1 La planificación de procesos**
  - Concepto y definición
  - Objetivos de la planificación
  - Tipos de planificación
  - Funcionamiento del despachador
  - Criterios de eficiencia

- **3.1.2 Planificación de CPU-multiprocesamiento**
  - Sistemas multiprocesador
  - Arquitecturas de múltiples núcleos
  - Planificación en entornos multiprocesador
  - Ventajas y desafíos

- **3.1.3 Algoritmos de planificación**
  - Algoritmo FIFO/PEPS
  - Algoritmo SJF (Shortest Job First)
  - Algoritmo Round Robin
  - Planificación por prioridades
  - Algoritmos híbridos

- **3.1.4 Sincronización de procesos**
  - Procesos independientes vs. cooperantes
  - Sección crítica
  - Exclusión mutua
  - Mecanismos de sincronización

- **3.1.5 Bloqueos**
  - Definición y causas
  - Condiciones necesarias para bloqueos
  - Estrategias de manejo
  - Detección y recuperación

---

## 3.1.1 La planificación de procesos

### Concepto y definición

La planificación de procesos es el mecanismo mediante el cual el sistema operativo gestiona la asignación de la CPU entre los diversos procesos activos residentes en memoria principal. Para compartir el procesador entre los diferentes procesos, el planificador del sistema operativo (scheduler) implementa una determinada política de planificación que determina cómo se asigna la CPU a un solo proceso en cada momento.

### Objetivos de la planificación

El sistema operativo se encarga de compartir la CPU entre los distintos procesos de la manera más eficiente posible, persiguiendo los siguientes objetivos:

- **Equidad**: Garantizar que todos los procesos reciban una porción justa de tiempo de CPU
- **Eficiencia**: Maximizar el uso del tiempo de la CPU
- **Bajo tiempo de respuesta**: Minimizar el tiempo de espera para procesos interactivos
- **Alto rendimiento**: Maximizar la cantidad de trabajo completado en la unidad de tiempo
- **Minimización del tiempo de espera**: Reducir el tiempo que un proceso pasa en estado de espera

Desafortunadamente, todos estos objetivos no pueden conseguirse simultáneamente, por lo que los algoritmos de planificación buscan un equilibrio entre ellos.

### Tipos de planificación

Existen dos tipos principales de planificación:

1. **Planificación a largo plazo**: Se realiza cuando se trabaja con la cola de lotes y se selecciona el siguiente trabajo a ejecutar.

2. **Planificación a corto plazo**: En la que se asigna finalmente el procesador a uno de los procesos preparados de acuerdo con la política de planificación elegida.

### Funcionamiento del despachador

El programa que realmente se encarga de mandar el control de la CPU a un proceso de la cola de procesos preparados es el **despachador (dispatcher)**. Esta asignación se realiza en varios pasos:

1. Decide si se debe cambiar el proceso que está activo de acuerdo con la política de planificación
2. Salva el entorno volátil del proceso actual
3. Toma el primer proceso de la cola de preparados o ejecutables
4. Carga el entorno volátil del proceso elegido (el contenido del PCB)
5. Cede el control al proceso y lo pone en modo usuario

La actuación del despachador se invoca por alguna de las siguientes razones:
- Un proceso finaliza
- El sistema operativo decide que el proceso activo no debe seguir ejecutándose
- El proceso agota su tiempo límite asignado (quantum)

### Criterios de eficiencia

Los criterios para medir la eficiencia de un algoritmo de planificación son:

- **Uso del tiempo de la CPU**: Fracción de tiempo que la CPU está ocupada
- **Productividad**: Cantidad de trabajo completado en la unidad de tiempo
- **Tiempo de retorno de los procesos**: Desde que se lanza el proceso hasta su finalización
- **Tiempo de espera**: Tiempo que un proceso pierde por ser multiprogramado (tiempo de retorno menos tiempo de ejecución efectivo)

---

## 3.1.2 Planificación de CPU-multiprocesamiento

### Sistemas multiprocesador

Existen ordenadores que disponen de varios procesadores, por lo que son capaces de ejecutar al mismo tiempo varias tareas. Estos computadores se denominan sistemas multiprocesador. En los ordenadores convencionales, normalmente solo se dispone de un procesador, por lo que en cada momento únicamente se estará procesando una tarea.

### Arquitecturas de múltiples núcleos

Actualmente, los procesadores modernos disponen de varios núcleos que, en determinadas ocasiones, pueden actuar como si fueran varios procesadores independientes. Esto permite una verdadera ejecución paralela de procesos, donde diferentes núcleos pueden ejecutar diferentes procesos simultáneamente.

### Planificación en entornos multiprocesador

La planificación en sistemas multiprocesador presenta desafíos adicionales:

- **Balanceo de carga**: Distribuir los procesos entre los diferentes procesadores para evitar que algunos estén sobrecargados mientras otros están ociosos
- **Afinidad de procesos**: Mantener un proceso en el mismo procesador para aprovechar la caché local
- **Sincronización**: Coordinar el acceso a recursos compartidos entre procesos que se ejecutan en diferentes procesadores

### Ventajas y desafíos

**Ventajas**:
- Mayor rendimiento global del sistema
- Mayor fiabilidad (si un procesador falla, otros pueden continuar trabajando)
- Capacidad para ejecutar más procesos simultáneamente

**Desafíos**:
- Complejidad en la gestión de la memoria compartida
- Sincronización más compleja entre procesos
- Posibilidad de condiciones de carrera más difíciles de detectar

La multiprogramación permite aprovechar de forma más eficiente los recursos del sistema, en concreto el tiempo de CPU, que es el recurso de mayor coste. Mientras unos procesos realizan operaciones de E/S, la CPU es asignada a otros procesos activos mejorando el rendimiento del sistema.

---

## 3.1.3 Algoritmos de planificación

### Algoritmo FIFO/PEPS

El algoritmo PEPS (Primero en Entrar-Primero en Salir) o FIFO (First Input First Output) es el más sencillo de todos. En este algoritmo, no se libera la CPU hasta que no termina el proceso en ejecución y los tiempos de respuesta varían fuertemente de un momento a otro, según el orden de llegada a la CPU de los procesos.

**Ejemplo**:
- Proceso 1: 18 unidades
- Proceso 2: 6 unidades
- Proceso 3: 6 unidades

Si se ejecutan en orden 1→2→3:
- Tiempo medio de retorno = (18 + 24 + 30)/3 = 24

Si se ejecutan en orden 2→3→1:
- Tiempo medio de retorno = (6 + 12 + 30)/3 = 16

Este ejemplo demuestra cómo el orden de ejecución afecta significativamente al rendimiento del sistema.

### Algoritmo SJF (Shortest Job First)

El algoritmo SJF asigna la CPU al trabajo que requiere menor tiempo de proceso. Este algoritmo minimiza el tiempo medio de espera, pero presenta el problema de que los procesos largos pueden sufrir "inanición" (nunca llegan a ejecutarse) si siempre hay procesos cortos entrando al sistema.

### Algoritmo Round Robin

Uno de los algoritmos más sencillos, equitativos y de uso más amplio es el Round Robin, que hace una planificación por rondas. No se establecen prioridades. Cada proceso tiene asignado un tiempo de ejecución denominado quantum, o "rodaja" de tiempo. Cuando se cumple dicho tiempo y la tarea no ha concluido, se guarda el estado del proceso en memoria y se da paso al siguiente proceso. El proceso saliente pasa al final de la lista de procesos en espera, siendo reanudada su ejecución cuando llegue su turno.

### Planificación por prioridades

En estos algoritmos se asocia una prioridad a cada proceso y la CPU se asigna al trabajo con prioridad más alta en cada momento. Normalmente, si se está ejecutando un proceso de prioridad media y entra un proceso de prioridad mayor, se requisa la CPU al primer proceso y se le entrega al proceso de mayor prioridad.

**Ejemplo de funcionamiento**:
- En un sistema con procesos A (prioridad 1), B (prioridad 2) y C (prioridad 3)
- Si A está ejecutándose y llega B, se interrumpe A y se ejecuta B
- Si durante la ejecución de B llega C, se interrumpe B y se ejecuta C
- Cuando C termina, se continúa con B y luego con A

### Algoritmos híbridos

Normalmente, en los sistemas operativos suelen aparecer híbridos de varios algoritmos de planificación. Por ejemplo, se puede trabajar con un algoritmo basado en prioridades (aplicando SJF o Round Robin) cuando existan varios procesos con la misma prioridad.

**Estructura típica**:
- Prioridad 4 (máxima): Se ejecutan primero, usando Round Robin entre ellos
- Prioridad 3: Se ejecutan cuando terminan los de prioridad 4
- Prioridad 2: Se ejecutan cuando terminan los de prioridad 3
- Prioridad 1 (mínima): Se ejecutan cuando terminan los de prioridad 2

---

## 3.1.4 Sincronización de procesos

### Procesos independientes vs. cooperantes

Cuando se ejecutan varios procesos a la vez, es posible que estos compartan uno o varios recursos del sistema (monitor, memoria...). El objetivo del sistema operativo es permitir que varios procesos compartan recursos sin que se produzcan problemas. Los procesos pueden ser:

- **Independientes**: Pueden ejecutarse a la vez, detenerse y rearancarse sin ningún efecto negativo, son procesos deterministas y reproducibles. Por ejemplo, un programa que calcule números primos.

- **Cooperantes**: Comparten su estado, su funcionamiento no es determinista (pueden darse situaciones inesperadas) y pueden ser irreproducibles. Por ejemplo, dos procesos que escriben en la misma pantalla, uno "abc" y el otro "cba".

### Sección crítica

La sección crítica es una sección de código en la que se realizan operaciones que pueden dar lugar a interferencias con otros procesos. Cuando un proceso está ejecutando su sección crítica, ningún otro proceso puede estar en ella. Es decir, la sección crítica debe ejecutarse en exclusión mutua.

Es importante tener en cuenta que un proceso no puede dormirse en su sección crítica porque estaría bloqueando la sección crítica de otros procesos en ejecución.

### Ejemplo práctico de procesos cooperantes

| Persona A | Persona B |
|-----------|-----------|
| 09:50 Llega a casa | 10:10 Llega a casa |
| 10:00 Mira la nevera. No hay leche | 10:20 Mira la nevera. No hay leche |
| 10:10 Va a la tienda | 10:30 Va a la tienda |
| 10:20 Llega a la tienda | 10:40 Llega a la tienda |
| 10:30 Deja la tienda | 10:50 Deja la tienda |
| 10:40 Llega a casa y guarda la leche | 11:00 Llega a casa y ¡ya hay leche! |

Este problema práctico puede extrapolarse a múltiples casos informáticos donde dos procesos intentan acceder al mismo recurso sin coordinación.

### Mecanismos de sincronización

Para gestionar adecuadamente la sincronización entre procesos, los sistemas operativos proporcionan varios mecanismos:

- **Semáforos**: Variables enteras utilizadas para controlar el acceso a recursos compartidos
- **Monitores**: Estructuras de alto nivel que encapsulan variables compartidas y las operaciones permitidas sobre ellas
- **Mensajes**: Sistema de comunicación entre procesos que puede utilizarse para sincronización
- **Señales**: Notificaciones que permiten a un proceso interrumpir a otro

La sincronización adecuada es esencial para evitar condiciones de carrera, inanición y abrazos mortales entre procesos.

---

## 3.1.5 Bloqueos

### Definición y causas

Los bloqueos (también conocidos como "deadlocks" o "abrazos mortales") ocurren cuando dos o más procesos están esperando recursos que están siendo ocupados por los demás, creando un ciclo de espera permanente. Es una situación en la que varios procesos quedan bloqueados indefinidamente porque cada uno está esperando que el otro libere recursos.

### Condiciones necesarias para bloqueos

Para que se produzca un bloqueo, deben cumplirse simultáneamente cuatro condiciones:

1. **Exclusión mutua**: Al menos un recurso debe estar en modo de uso exclusivo (no compartido).

2. **Retención y espera**: Los procesos que ya poseen recursos pueden solicitar nuevos recursos.

3. **No expulsión**: Los recursos concedidos previamente no pueden ser forzadamente expulsados; deben ser liberados explícitamente por el proceso que los posee.

4. **Espera circular**: Debe existir un conjunto de procesos {P1, P2, ..., Pn} tal que P1 esté esperando un recurso ocupado por P2, P2 esté esperando un recurso ocupado por P3, ..., Pn esté esperando un recurso ocupado por P1.

### Estrategias de manejo

Existen cuatro estrategias principales para manejar los bloqueos:

1. **Prevención**: Diseñar el sistema para que nunca se produzca un bloqueo, evitando una o más de las cuatro condiciones necesarias.

2. **Evitación**: El sistema operativo toma decisiones cuidadosas para asegurar que nunca se entre en un estado de bloqueo, utilizando algoritmos como el del banquero de Dijkstra.

3. **Detección y recuperación**: Permitir que los bloqueos se produzcan, pero el sistema operativo se encarga de detectarlos y recuperarse de ellos.

4. **Ignorar el problema**: En algunos sistemas, se considera que los bloqueos son tan raros que no merece la pena invertir recursos en manejarlos.

### Detección y recuperación

En sistemas que utilizan detección y recuperación:

- **Detección**: El sistema mantiene un grafo de asignación de recursos y busca ciclos en este grafo, lo que indica un bloqueo.

- **Recuperación**: Cuando se detecta un bloqueo, el sistema puede:
  - Terminar uno o más procesos involucrados
  - Preemptar recursos de algunos procesos
  - Utilizar puntos de control y recuperación para devolver los procesos a un estado seguro anterior

La gestión adecuada de los bloqueos es esencial para mantener la estabilidad y fiabilidad de un sistema operativo, especialmente en entornos donde múltiples procesos comparten recursos críticos.
