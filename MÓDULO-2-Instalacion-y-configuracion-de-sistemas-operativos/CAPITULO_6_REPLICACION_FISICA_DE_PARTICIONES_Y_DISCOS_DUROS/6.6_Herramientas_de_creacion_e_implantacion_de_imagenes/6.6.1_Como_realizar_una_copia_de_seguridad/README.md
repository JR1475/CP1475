# Resumen generado por IA

Este documento contiene un resumen del punto [6.6.1], generado con inteligencia artificial.

# 6.6 HERRAMIENTAS DE CREACIÓN E IMPLANTACIÓN DE IMÁGENES

## 6.6.1 CÓMO REALIZAR UNA COPIA DE SEGURIDAD EN WINDOWS 10 Y WINDOWS 11

### Introducción a las herramientas de copia de seguridad

En Windows 10 y Windows 11, Microsoft ha evolucionado sus herramientas de copia de seguridad, manteniendo algunas herramientas heredadas mientras introduce nuevas soluciones. A diferencia de Windows 7, donde "Copias de seguridad y restauración" era la herramienta principal, en los sistemas modernos:

- **File History** se ha convertido en la herramienta principal para copias de seguridad de archivos personales
- **La herramienta heredada "Copias de seguridad y restauración"** (de Windows 7) sigue disponible pero está marcada como "legacy"
- **OneDrive** se integra profundamente como solución de copia de seguridad en la nube
- **Windows Backup** (en desarrollo) promete ser la solución unificada en futuras actualizaciones

Como se menciona en la base de conocimientos:
> "Normalmente, los sistemas operativos incluyen herramientas para realizar las copias de seguridad. También, se encuentran disponibles utilidades que permiten su realización, tanto gratuitas como de pago."

### Tipos de copias de seguridad en Windows 10/11

Antes de comenzar, es importante entender los diferentes tipos de copias de seguridad disponibles:

#### 1. Copia de seguridad normal
- **Definición**: Realiza una copia de **todos los archivos seleccionados**
- **Característica**: Marca los archivos como "copiados", por lo que no se volverán a respaldar hasta que se modifiquen
- **Ventaja**: Permite una restauración más rápida (solo requiere esta copia)
- **Desventaja**: Ocupa más espacio y tiempo que otros tipos

#### 2. Copia de seguridad incremental
- **Definición**: Realiza una copia de **los archivos creados o modificados desde la última copia de seguridad normal o incremental**
- **Característica**: Marca los archivos como "copiados", por lo que no se volverán a respaldar hasta que se modifiquen
- **Ventaja**: Menor espacio de almacenamiento requerido y tiempos de copia más cortos
- **Desventaja**: Proceso de restauración más complejo (requiere la copia normal + todas las incrementales)

#### 3. Copia de seguridad diferencial
- **Definición**: Realiza una copia de **los archivos creados o modificados desde la última copia de seguridad normal**
- **Característica**: No marca los archivos como "copiados", por lo que pueden volver a respaldarse
- **Ventaja**: Restauración más rápida que con incrementales (solo requiere dos copias)
- **Desventaja**: Ocupa más espacio que las incrementales (especialmente con el tiempo)

> "La diferencia entre una imagen y una copia de seguridad es que la imagen es una copia exacta de una partición o de un disco, y la copia de seguridad permite copiar los archivos y/o carpetas que se deseen."

### Cómo realizar una copia de seguridad con File History (Windows 10/11)

File History es la herramienta principal para copias de seguridad en Windows 10 y 11:

#### Paso 1: Preparar el destino de la copia
1. Conectar una unidad externa (disco duro, memoria USB) o configurar una ubicación de red
2. Asegurar que tiene suficiente espacio (recomendado: al menos 1.5x el espacio de los datos a respaldar)
3. Formatear la unidad si es necesario (NTFS recomendado)

#### Paso 2: Configurar File History
**En Windows 10**:
1. Abrir **Configuración** (Win + I)
2. Ir a **Actualización y seguridad** > **Copia de seguridad**
3. En "Configurar copia de seguridad", hacer clic en **Agregar una unidad**
4. Seleccionar la unidad externa o de red que preparó
5. Una vez conectada, Windows configurará automáticamente File History

**En Windows 11**:
1. Abrir **Configuración** (Win + I)
2. Ir a **Sistema** > **Almacenamiento**
3. Hacer clic en **Copias de seguridad de archivos**
4. Activar **File History**
5. Hacer clic en **Configuración de File History**
6. Hacer clic en **Seleccionar unidad** y elegir la unidad de destino

#### Paso 3: Personalizar la configuración
1. Hacer clic en **Opciones adicionales** (Windows 10) o **Configuración avanzada** (Windows 11)
2. Configurar:
   - **Frecuencia de copia de seguridad**: Cada 10 minutos a 24 horas
   - **Mantener copias de seguridad**: Durante un tiempo específico o indefinidamente
   - **Archivos a incluir/excluir**: Personalizar qué carpetas respaldar

#### Paso 4: Realizar una copia de seguridad manual
1. En la misma pantalla de File History, hacer clic en **Ejecutar ahora**
2. Esperar a que se complete el proceso (mostrado en la interfaz)
3. Verificar que los archivos se hayan copiado correctamente en la unidad de destino

### Cómo realizar una copia de seguridad con la herramienta heredada

Aunque Microsoft está descontinuando esta herramienta, sigue siendo útil para copias completas:

#### En Windows 10/11:
1. Abrir **Panel de control**
2. Buscar y abrir **Copias de seguridad y restauración (Windows 7)**
3. Hacer clic en **Configurar copias de seguridad**
4. Seleccionar el destino de la copia (disco externo, red, etc.)
5. Elegir entre:
   - **Dejar que Windows elija** (recomendado para usuarios básicos)
   - **Dejarme elegir** (para personalizar qué carpetas respaldar)

#### Si selecciona "Dejarme elegir":
1. Marcar las carpetas y bibliotecas que desea respaldar
2. Opcional: Marcar **Crear una imagen del sistema** en la parte inferior
3. Hacer clic en **Siguiente**
4. Revisar la configuración y hacer clic en **Guardar configuración y ejecutar copia de seguridad**

### Cómo crear una imagen del sistema

Una imagen del sistema es una copia exacta de todo el disco, incluyendo el sistema operativo, aplicaciones y archivos:

#### En Windows 10/11:
1. Abrir **Panel de control** > **Copias de seguridad y restauración (Windows 7)**
2. Hacer clic en **Crear una imagen del sistema** en el panel izquierdo
3. Seleccionar el destino:
   - Unidades de disco duro externas
   - Discos en red
   - Discos DVD (requiere varios DVDs para sistemas grandes)
4. Por defecto, se incluyen todas las particiones necesarias (incluyendo la de arranque)
5. Hacer clic en **Siguiente** y luego en **Iniciar copia de seguridad**
6. Esperar a que se complete el proceso (puede tardar varias horas)

> "NOTA: En Windows, cuando se realiza una copia del Estado del Sistema (System State), se incluyen los componentes siguientes: Bases de datos del Registro, Bases de datos del Registro de clases COM+, Archivos de inicio (incluidos los archivos del sistema), Los archivos del sistema bajo protección de archivos de Windows."

### Programación de copias de seguridad automáticas

#### Con File History:
1. En la configuración de File History, hacer clic en **Opciones adicionales** (Windows 10) o **Configuración avanzada** (Windows 11)
2. En "Frecuencia de copia de seguridad", seleccionar la frecuencia deseada
3. En "Mantener copias de seguridad", elegir cuánto tiempo conservar
4. La copia se realizará automáticamente según la programación establecida

#### Con la herramienta heredada:
1. En "Copias de seguridad y restauración (Windows 7)", hacer clic en **Cambiar programación**
2. Activar **Ejecutar la copia de seguridad de forma programada**
3. Configurar:
   - Frecuencia (diaria, semanal, mensual)
   - Hora específica
   - Día de la semana (si es semanal)
4. Hacer clic en **Aceptar** para guardar la programación

### Restauración de archivos específicos

#### Desde File History:
1. Navegar a la carpeta que contiene el archivo que desea restaurar
2. Hacer clic en **Historial** en la barra de herramientas
3. En la interfaz de File History, usar las flechas para navegar por las copias
4. Seleccionar el archivo o carpeta deseado y hacer clic en **Restaurar**
5. Opcional: Hacer clic en **Restaurar a** para elegir una ubicación diferente

#### Desde la herramienta heredada:
1. Abrir **Panel de control** > **Copias de seguridad y restauración (Windows 7)**
2. Hacer clic en **Restaurar mis archivos**
3. Buscar archivos específicos usando:
   - **Buscar archivos**: Para localizar archivos específicos
   - **Buscar carpetas**: Para localizar carpetas específicas
4. Seleccionar los archivos y hacer clic en **Siguiente**
5. Elegir la ubicación de restauración y hacer clic en **Restaurar**

### Consideraciones importantes para Windows 10/11

#### 1. Integración con OneDrive
- Windows 10/11 promueve OneDrive como solución principal de copia de seguridad
- La configuración inicial de Windows suele vincular carpetas importantes a OneDrive
- OneDrive ofrece protección contra ransomware con funciones de versión

#### 2. Requisitos específicos de Windows 11
- Para crear imágenes del sistema en Windows 11, asegurar que el hardware cumple con los requisitos de TPM 2.0
- Las copias de seguridad deben realizarse en unidades formateadas con sistemas de archivos compatibles
- Considerar que Windows 11 tiene un esquema de particionado diferente (GPT requerido)

#### 3. Estrategias para diferentes volúmenes de datos
- **Para sistemas pequeños (menos de 50 GB)**:
  - File History con copias frecuentes
  - Combinar con OneDrive para protección adicional
  
- **Para sistemas grandes (más de 50 GB) con pocos datos modificados (menos de 8 GB)**:
  - Imagen del sistema semanal
  - Copias diferenciales diarias
  
- **Para sistemas grandes con muchos datos modificados**:
  - Imagen del sistema cada 2 semanas
  - Copias incrementales diarias

#### 4. Planificación recomendada
- **Todos los días 1 de cada mes**: Copia de seguridad total/imagen del sistema
- **Todos los viernes**: Copia diferencial desde la copia del día 1
- **Todos los días (excepto viernes y día 1)**: Copia incremental desde la copia del día anterior

> "Con esta planificación se dispondrá de copia de seguridad diaria. En caso de desastre se debería recuperar la copia total, la última diferencial y todas las incrementales desde la última diferencial."

### Solución de problemas comunes

#### 1. "No se puede acceder al destino de la copia de seguridad"
- **Causa**: Problemas de permisos o conexión a la unidad
- **Solución**:
  - Verificar que la unidad está conectada correctamente
  - Reconfigurar los permisos de la carpeta de destino
  - Si es una unidad de red, verificar credenciales de acceso

#### 2. "Error 0x80780119: No hay suficiente espacio en la unidad de copia de seguridad"
- **Causa**: La unidad de destino no tiene espacio suficiente
- **Solución**:
  - Eliminar copias antiguas
  - Aumentar el espacio de almacenamiento
  - Excluir archivos grandes no críticos de la copia

#### 3. "La copia de seguridad no se inicia automáticamente"
- **Causa**: Configuración incorrecta o servicio detenido
- **Solución**:
  - Verificar la programación en File History
  - Asegurar que el servicio "Windows Backup" está en ejecución
  - Ejecutar `wbadmin start backup` en PowerShell como administrador

### Conclusión

Realizar copias de seguridad regulares es fundamental para garantizar la seguridad de los datos. Como se destaca en la base de conocimientos:
> "Para garantizar la plena seguridad de los datos y de los ficheros de una organización es imprescindible salvaguardar la integridad y disponibilidad de dichos datos."

En Windows 10 y 11, File History se ha convertido en la herramienta principal para copias de seguridad, aunque la herramienta heredada sigue siendo útil para imágenes del sistema completas. La elección entre File History, copias completas o una combinación depende de:
- El volumen de datos
- La frecuencia de cambios
- Los requisitos de recuperación
- Los recursos de almacenamiento disponibles

Independientemente de la herramienta elegida, es crucial:
- Verificar periódicamente la integridad de las copias
- Implementar una estrategia de 3-2-1 (3 copias, 2 tipos de medio, 1 fuera del sitio)
- Documentar el proceso de restauración
- Realizar pruebas de restauración periódicas

Como refuerza la base de conocimientos:
> "¿Qué ocurriría si por error, distracción, fallo mecánico, etc., se produce una pérdida de datos importante? Pues no pasaría nada si se cuenta con un buen sistema de copias de seguridad de dichos datos que permita restaurar la información prácticamente al mismo nivel que se encontraba antes de su pérdida."

La implementación rigurosa de un plan de copias de seguridad es una práctica esencial de higiene digital que protege contra la pérdida permanente de datos, ransomware y otros incidentes que podrían comprometer la continuidad del trabajo o negocio.
