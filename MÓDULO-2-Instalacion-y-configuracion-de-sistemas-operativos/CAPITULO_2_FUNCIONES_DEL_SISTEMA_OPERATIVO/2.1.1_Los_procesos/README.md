# Resumen generado por IA

Este documento contiene un resumen del punto [2.1.1], generado con inteligencia artificial.

# CAPITULO 2: FUNCIONES DEL SISTEMA OPERATIVO
## 2.1.1 Los procesos

### Definición y concepto básico
Un proceso se define como **un programa en ejecución** por parte del usuario o del sistema (en el caso de que lo ejecute el sistema, entonces se denominan servicios). Es fundamental no confundir procesos con archivos o programas, ya que un proceso representa la instancia activa de un programa que requiere recursos para su ejecución.

Los procesos son las tareas que necesitan recursos específicos para realizarse:
- Tiempo de CPU
- Memoria
- Archivos
- Dispositivos de E/S

### Características fundamentales de los procesos
Cada proceso tiene las siguientes características esenciales:

1. **Identificación única**: A cada proceso se le asigna un PID (Process Identificator o Identificador de Proceso).

2. **Propiedad**: Cada proceso tiene un identificador del usuario propietario que lo inició.

3. **Prioridad**: Cada proceso tiene asignada una prioridad, de forma que, en cualquier instante, el proceso con mayor prioridad entre los que están en estado "ESPERANDO" es el que se ejecutará.

4. **Recursos**: Los procesos consumen y gestionan recursos del sistema durante su ejecución.

### Estados de un proceso
Los procesos pueden encontrarse en diferentes estados durante su ciclo de vida, representados en el diagrama de estados:

```
Ejecución → Termina (E/S, sincronización)
↓
Espera suceso → Inactivo/Suspendido
↑
Creado → Ocurre suceso → Preparado
```

Estos estados reflejan el flujo normal de ejecución de un proceso en un sistema operativo.

### Gestión de procesos
La gestión de procesos es una de las funciones esenciales del sistema operativo y realiza las siguientes operaciones:

1. **Creación y eliminación de procesos**: Cuando un usuario inicia un programa o el sistema necesita ejecutar una tarea.
   
2. **Control del avance del proceso**: Monitorización y gestión del progreso del proceso.

3. **Tratamiento de excepciones**: Manejo de errores o situaciones inesperadas durante la ejecución.

4. **Asignación de recursos**: Distribución eficiente de:
   - Procesador
   - Memoria
   - Dispositivos hardware

5. **Sistema de comunicación**: Establecimiento de mecanismos para la comunicación entre procesos, ya sea por mensajes o señales.

### Procesos vs. Hebras (Threads)
Es importante distinguir entre procesos y hebras:

- **El proceso** es la unidad de ejecución propietaria de recursos.
- **Las hebras** son unidades de ejecución dentro de un proceso que comparten los recursos del proceso al que pertenecen.

Las ventajas de las hebras frente a los procesos son:
- La comunicación entre hebras es más fácil y eficiente
- No se requiere cambio de contexto del proceso para pasar de una hebra a otra
- Menor sobrecarga en la creación y gestión

Sin embargo, la protección de los recursos entre hebras del mismo proceso no es controlada por el sistema operativo (una hebra puede leer/escribir la memoria utilizada por otra perteneciente al mismo proceso).

### Multiprocesamiento y multitarea
- **Sistemas multiproceso**: Permiten realizar varios procesos simultáneamente, ejecutando varias tareas al mismo tiempo.
  
- **Sistemas multitarea**: En estos sistemas, es común que existan varios procesos que se ejecutan en un mismo intervalo de tiempo.

La **multiprogramación** permite aprovechar de forma más eficiente los recursos del sistema, especialmente el tiempo de CPU. Mientras unos procesos realizan operaciones de E/S, la CPU es asignada a otros procesos activos, mejorando el rendimiento del sistema.

### Planificación de procesos
Para compartir el procesador entre los diversos procesos activos residentes en memoria principal, el planificador del sistema operativo (scheduler) implementa una política de planificación específica:

- Determina cómo se asigna la CPU a un solo proceso en cada momento
- Decide si se debe cambiar el proceso que está activo según la política de planificación
- Salva el entorno volátil del proceso actual
- Carga el entorno volátil del nuevo proceso elegido
- Cede el control al nuevo proceso

El despachador se invoca por varias razones:
- Un proceso finaliza
- El sistema operativo decide que el proceso activo no debe seguir ejecutándose
- El proceso agota su tiempo límite asignado (quantum)

### Ejemplo práctico de planificación
Consideremos tres procesos con distintos tiempos de procesamiento:
- Proceso 1: 18 Unidades
- Proceso 2: 6 Unidades
- Proceso 3: 6 Unidades

Al aplicar el algoritmo FIFO (First In, First Out):
- En el primer caso (orden 1→2→3): Tiempo medio de retorno = (18 + 24 + 30)/3 = 24
- En el segundo caso (orden 2→3→1): Tiempo medio de retorno = (6 + 12 + 30)/3 = 16

Este ejemplo demuestra cómo el orden de ejecución de los procesos puede afectar significativamente al rendimiento del sistema.

### Procesos independientes vs. cooperantes
- **Procesos independientes**: Pueden ejecutarse, detenerse y rearancarse sin efectos negativos; son procesos deterministas y reproducibles (ej.: programa que calcula números primos).

- **Procesos cooperantes**: Comparten su estado, su funcionamiento no es determinista (pueden darse situaciones inesperadas) y pueden ser irreproducibles (ej.: dos procesos que escriben en la misma pantalla, uno "abc" y el otro "cba").

En el caso de procesos cooperantes, es posible que se produzcan situaciones peligrosas donde se pierda el control del sistema, por lo que el sistema operativo debe gestionar adecuadamente la concurrencia y el acceso a recursos compartidos.
