# Resumen generado por IA

Este documento contiene un resumen del punto [6.1], generado con inteligencia artificial.

# CAPÍTULO 6: REPLICACIÓN FÍSICA DE PARTICIONES Y DISCOS DUROS

## 6.1 COPIAS DE SEGURIDAD

### Índice del apartado:

- **Definición y propósito de las copias de seguridad**
- **Tipos de copias de seguridad**
  - Copia de seguridad normal
  - Copia de seguridad incremental
  - Copia de seguridad diferencial
  - Copia de seguridad intermedia
  - Copia de seguridad diaria
- **Estrategias de copia según el volumen de datos**
- **Planificación de copias de seguridad**
- **Consideraciones de seguridad y prevención**
- **Documentación y gestión de soportes**

---

## Definición y propósito de las copias de seguridad

Las copias de seguridad son **procedimientos sistemáticos para crear réplicas de los datos y sistemas informáticos**, con el objetivo de poder recuperar información en caso de pérdida, daño o corrupción. Como se menciona en la base de conocimientos:

> "Para garantizar la plena seguridad de los datos y de los ficheros de una organización es imprescindible salvaguardar la integridad y disponibilidad de dichos datos. Para garantizar estos dos aspectos fundamentales de la seguridad es necesario que existan unos procedimientos de realización de copias de seguridad y de creación de imágenes que, en caso de fallo del sistema informático, permitan recuperar y, en su caso, reconstruir los datos y los ficheros dañados o eliminados en el menor plazo de tiempo posible."

**Principales propósitos**:
- **Protección contra pérdida de datos**: Por fallos de hardware, errores humanos o ataques maliciosos
- **Cumplimiento normativo**: Muchas regulaciones exigen mantener copias de seguridad
- **Continuidad del negocio**: Minimizar el tiempo de inactividad en caso de incidente
- **Recuperación ante desastres**: Capacidad de restaurar sistemas completos
- **Protección contra ransomware**: Recuperación desde puntos anteriores a la infección

**Ámbitos críticos que requieren copias de seguridad**:
- Datos de usuario (documentos, imágenes, bases de datos)
- Estado del sistema (incluye bases de datos del Registro, bases de datos del Registro de clases COM+, archivos de inicio y archivos del sistema bajo protección de archivos de Windows)
- Configuraciones del sistema y aplicaciones
- Correo electrónico y calendarios

> "NOTA: En Windows, cuando se realiza una copia del Estado del Sistema (System State), se incluyen los componentes siguientes: Bases de datos del Registro, Bases de datos del Registro de clases COM+, Archivos de inicio (incluidos los archivos del sistema), Los archivos del sistema bajo protección de archivos de Windows."

---

## Tipos de copias de seguridad

### Copia de seguridad normal

**Definición**:
- Realiza una copia de **todos los archivos seleccionados**
- Marca los archivos como "copiados", por lo que no se volverán a respaldar hasta que se modifiquen

**Características**:
- Es la base para otros tipos de copias
- Ocupa más espacio y tiempo que otros tipos
- Permite una restauración más rápida (solo requiere esta copia)
- Esencial para comenzar cualquier estrategia de copias

**Ventajas**:
- Restauración sencilla (solo requiere una copia)
- Completa independencia de otras copias
- Ideal para sistemas pequeños o críticos

**Desventajas**:
- Mayor consumo de espacio de almacenamiento
- Más tiempo necesario para cada copia
- Mayor carga en el sistema durante la copia

### Copia de seguridad incremental

**Definición**:
- Realiza una copia de **los archivos creados o modificados desde la última copia de seguridad normal o incremental**
- Marca los archivos como "copiados", por lo que no se volverán a respaldar hasta que se modifiquen

**Características**:
- Más rápida y ocupa menos espacio que una copia normal
- Requiere la copia normal inicial y todas las incrementales posteriores para una restauración completa
- Ideal para sistemas con cambios frecuentes pero no masivos

**Ventajas**:
- Menor espacio de almacenamiento requerido
- Tiempos de copia más cortos
- Menor impacto en el rendimiento del sistema

**Desventajas**:
- Proceso de restauración más complejo (requiere la copia normal + todas las incrementales)
- Mayor riesgo de pérdida de datos si falla una copia incremental
- Más complejo de gestionar

### Copia de seguridad diferencial

**Definición**:
- Realiza una copia de **los archivos creados o modificados desde la última copia de seguridad normal**
- No marca los archivos como "copiados", por lo que pueden volver a respaldarse

**Características**:
- Ocupa más espacio que las incrementales (aumenta con el tiempo)
- Requiere la copia normal inicial y la última diferencial para restaurar
- Más sencilla de gestionar que las incrementales

**Ventajas**:
- Restauración más rápida que con incrementales (solo requiere dos copias)
- Menos riesgo de fallo en la cadena de restauración
- Más sencilla de gestionar

**Desventajas**:
- Ocupa más espacio que las incrementales (especialmente con el tiempo)
- Tiempos de copia más largos que las incrementales
- Mayor carga en el sistema durante la copia

### Copia de seguridad intermedia

**Definición**:
- Realiza una copia de **todos los archivos seleccionados**
- No marca los archivos como "copiados", por lo que pueden volver a respaldarse

**Características**:
- Similar a la copia normal pero sin marcar archivos
- Útil para copias de seguridad adicionales sin interrumpir la secuencia normal
- Permite múltiples copias completas sin afectar el ciclo de copias normales

**Ventajas**:
- Flexibilidad para realizar copias completas adicionales
- No interfiere con el ciclo de copias normales
- Ideal para momentos críticos (antes de actualizaciones importantes)

**Desventajas**:
- Ocupa tanto espacio como una copia normal
- No forma parte de una estrategia de copias sistemática

### Copia de seguridad diaria

**Definición**:
- Realiza una copia de **los archivos modificados en el día de la copia**
- No marca los archivos como "copiados", por lo que pueden volver a respaldarse

**Características**:
- Enfocada en cambios recientes
- Útil para sistemas con cambios frecuentes pero no críticos
- No forma parte de una estrategia completa sin otras copias

**Ventajas**:
- Rápida y eficiente para cambios diarios
- Sencilla de implementar
- Ideal para usuarios individuales

**Desventajas**:
- No proporciona una solución completa por sí sola
- Requiere copias normales periódicas para ser efectiva
- Puede llevar a inconsistencias si no se gestiona adecuadamente

---

## Estrategias de copia según el volumen de datos

### Para volúmenes elevados con pocos datos modificados

**Escenario**:
- Volumen de datos total > 50 GB
- Volumen de datos modificados < 8 GB

**Estrategia recomendada**:
1. Realizar una **copia total inicial**
2. Posteriormente, realizar **copias diferenciales** periódicas
3. Periodicamente, realizar una nueva copia total y reiniciar el ciclo

**Ventajas**:
- En caso de desastre, solo se debe recuperar la copia total y la última diferencial
- Menos complejidad en el proceso de restauración que con incrementales
- Equilibrio entre espacio de almacenamiento y tiempo de restauración

**Ejemplo práctico**:
- Copia total semanal (domingo)
- Copias diferenciales diarias (lunes a sábado)
- Cada 4 semanas, nueva copia total completa

### Para volúmenes elevados con muchos datos modificados

**Escenario**:
- Volumen de datos total > 50 GB
- Volumen de datos modificados también elevado

**Estrategia recomendada**:
1. Realizar una **copia total inicial**
2. Posteriormente, realizar **copias incrementales** periódicas
3. Realizar copias totales más frecuentes para reducir el número de incrementales necesarias

**Ventajas**:
- Menor espacio ocupado por cada copia incremental
- Tiempos de copia más cortos para cada operación
- Menor impacto en el rendimiento del sistema durante las copias

**Desventajas**:
- En caso de desastre, se debe recuperar la última copia total y todas las incrementales
- Mayor complejidad en el proceso de restauración
- Mayor riesgo si falla una de las copias incrementales

**Ejemplo práctico**:
- Copia total semanal (domingo)
- Copias incrementales diarias (lunes a sábado)
- Cada 2 semanas, nueva copia total completa para reducir el número de incrementales

---

## Planificación de copias de seguridad

### Ejemplo de planificación completa

**Estrategia recomendada**:
- **Todos los días 1 de cada mes, a las 23:00 horas**: 
  - Copia de seguridad total de la partición o disco duro donde se encuentren los datos
  - Cuando finalice, creación de una imagen del disco duro o partición del sistema operativo
  
- **Todos los viernes a las 23:00 horas**: 
  - Copia de seguridad diferencial desde la copia del día 1
  
- **Todos los días (excepto los viernes y el día 1) a las 23:00 horas**: 
  - Copia de seguridad incremental desde la copia del día anterior

**Beneficios de esta planificación**:
- Disponibilidad de copia de seguridad diaria
- En caso de desastre, se recuperaría:
  - La copia total (del día 1)
  - La última diferencial (del viernes)
  - Todas las incrementales desde la última diferencial

### Distribución geográfica de copias

Para garantizar la disponibilidad de los datos en caso de desastre en la ubicación principal:

**Recomendaciones**:
- Utilizar empresas especializadas que transporten y custodien duplicados
- Implementar alojamiento remoto o en la nube
- Mantener al menos 3 copias de los datos críticos (regla 3-2-1):
  - 3 copias totales (1 original + 2 copias)
  - 2 tipos diferentes de medios de almacenamiento
  - 1 copia fuera del sitio (en la nube o en ubicación física diferente)

**Ejemplo de implementación**:
- Copia local en disco duro externo (rápida recuperación)
- Copia en cinta magnética (para almacenamiento a largo plazo)
- Copia en servicio de nube (para protección ante desastres)

---

## Consideraciones de seguridad y prevención

### Plan de contingencia

**Elementos esenciales**:
- **Definición de responsables**: Quién realiza y supervisa las copias
- **Procedimientos de verificación**: Cómo comprobar la integridad de las copias
- **Plazos de recuperación objetivo (RTO)**: Tiempo máximo aceptable para restaurar
- **Puntos de recuperación objetivo (RPO)**: Máximo tiempo de pérdida de datos aceptable
- **Procedimientos de restauración**: Pasos detallados para recuperar sistemas

> "Así mismo, la organización debería establecer cómo y cuándo se realizarán comprobaciones de forma periódica para verificar el estado de los soportes y el correcto funcionamiento del proceso de generación de las copias de seguridad."

### Prevención de problemas

**Recomendaciones clave**:
- **Verificación periódica**: Probar periódicamente la restauración de datos
- **Monitoreo de espacio**: Asegurar suficiente espacio para nuevas copias
- **Rotación de soportes**: Implementar política de rotación para evitar desgaste
- **Protección física**: Almacenar soportes en entornos adecuados (temperatura, humedad)
- **Cifrado**: Cifrar copias que contengan información sensible
- **Control de acceso**: Limitar acceso a las copias solo a personal autorizado

> "La política de replicación de los datos de la organización debería establecer la planificación de las copias que se deberían realizar en función del volumen y tipo de información generada por el sistema informático, especificando el tipo de copias (completa, incremental o diferencial) y el ciclo de esta operación (diario, semanal). Así mismo, debería establecer la periodicidad de la creación de imágenes que permitan recuperar el sistema operativo completo en caso de un fallo en un disco duro completo."

---

## Documentación y gestión de soportes

### Documentación esencial

**Elementos que debe incluir**:
- **Registro de copias**:
  - Fecha y hora de cada copia
  - Tipo de copia realizada
  - Volumen de datos copiados
  - Estado de la operación (éxito/error)
  - Responsable de la operación
  
- **Registro de incidencias**:
  - Pérdida o destrucción de datos
  - Intentos de restauración
  - Autorización de responsables
  - Resultado de la restauración

> "La pérdida o destrucción, parcial o total, de los datos de un fichero debería anotarse en un registro de incidencias. Las restauraciones de datos deberían llevarse a cabo con la correspondiente autorización de un responsable del sistema informático, siendo anotadas en el propio registro de incidencias o en un registro específico habilitado a tal fin por la organización."

### Gestión de soportes

**Prácticas recomendadas**:
- **Inventario detallado**:
  - Etiquetado claro de todos los soportes
  - Registro de ubicación física
  - Estado actual del soporte
  
- **Política de rotación**:
  - Definir vida útil de cada tipo de soporte
  - Programar reemplazo antes de que fallen
  - Verificar integridad periódicamente

- **Almacenamiento seguro**:
  - Separar datos del sistema operativo (recomendado)
  - Usar ubicaciones geográficamente distribuidas
  - Implementar medidas de seguridad física

> "Es recomendable que los datos y el sistema operativo se encuentren en discos o particiones separadas, para facilitar la aplicación del plan de contingencia."

---

## Conclusión

Las copias de seguridad son un componente fundamental de cualquier estrategia de protección de datos y continuidad del negocio. Como se destaca en la base de conocimientos:
> "¿Qué ocurriría si por error, distracción, fallo mecánico, etc., se produce una pérdida de datos importante? Pues no pasaría nada si se cuenta con un buen sistema de copias de seguridad de dichos datos que permita restaurar la información prácticamente al mismo nivel que se encontraba antes de su pérdida."

La elección del tipo de copia adecuado depende de múltiples factores:
- Volumen total de datos
- Frecuencia de cambios
- Requisitos de RTO y RPO
- Recursos disponibles para almacenamiento
- Nivel de criticidad de los datos

Una estrategia efectiva combina diferentes tipos de copias (normal, incremental, diferencial) con una planificación cuidadosa que equilibre:
- Espacio de almacenamiento
- Tiempo de copia
- Complejidad de restauración
- Protección ante diferentes tipos de fallos

La documentación adecuada y la gestión rigurosa de los soportes son igualmente importantes para garantizar que las copias realizadas sean efectivamente útiles en caso de necesidad. Como refuerza la base de conocimientos:
> "Las replicaciones de los datos y ficheros de los servidores deberían ser realizadas y supervisadas por personal debidamente autorizado."

En el panorama actual, donde los ataques de ransomware y otros incidentes de seguridad son cada vez más comunes, una estrategia robusta de copias de seguridad no es simplemente recomendable, sino absolutamente esencial para la supervivencia de cualquier organización que dependa de sistemas informáticos.
