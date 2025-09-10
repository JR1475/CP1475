# Resumen generado por IA

Este documento contiene un resumen del punto [6.6.3], generado con inteligencia artificial.

# 6.6.3 CÓMO CREAR UN DISCO DE REPARACIÓN DEL SISTEMA EN WINDOWS 10 Y WINDOWS 11

## Introducción a los discos de reparación del sistema

Un disco de reparación del sistema es **un medio de arranque que permite recuperar el sistema operativo en caso de un error grave que impida el arranque normal**. Como se menciona en la base de conocimientos:

> "Si desea crear un disco de reparación que arranque el sistema operativo en caso de un error grave del sistema (deberá disponer de una unidad grabadora de CD/DVD y un CD/DVD grabable)..."

**Funcionalidades principales**:
- Reparar el arranque del sistema
- Restaurar desde una imagen del sistema
- Acceder a herramientas de diagnóstico avanzado
- Realizar recuperación del sistema
- Acceder a símbolo del sistema para operaciones avanzadas

**Importancia en el plan de contingencia**:
> "Es recomendable que los datos y el sistema operativo se encuentren en discos o particiones separadas, para facilitar la aplicación del plan de contingencia."

Los discos de reparación son esenciales porque:
- Permiten recuperar el sistema cuando no puede arrancar
- No requieren el disco de instalación original
- Incluyen herramientas especializadas para diagnóstico y reparación
- Son más rápidos que reinstalar el sistema desde cero

## Requisitos para crear un disco de reparación

### Materiales necesarios
- **Medio de almacenamiento**:
  - Windows 10/11: USB de 8 GB o superior (recomendado)
  - Alternativa: DVD grabable (obsoleto pero aún compatible)
- **Equipo con acceso administrativo**
- **Conexión a Internet** (para descargar actualizaciones en Windows 11)

### Consideraciones importantes
- **Para Windows 11**: El medio de reparación debe ser compatible con UEFI y Secure Boot
- **Recomendación**: Crear el disco de reparación inmediatamente después de instalar el sistema
- **Actualización**: Recrear el disco después de actualizaciones importantes del sistema

## Creación de un disco de reparación en Windows 10

### Método 1: Usando la herramienta heredada

**Paso 1: Acceder a la herramienta**
1. Abrir **Panel de control**
2. Cambiar la vista a **Iconos pequeños**
3. Buscar y abrir **Copias de seguridad y restauración (Windows 7)**
4. Hacer clic en **Crear un disco de reparación del sistema** en el panel izquierdo

**Paso 2: Preparar el medio**
1. Insertar un USB de 8 GB o superior o un DVD grabable
2. El sistema detectará automáticamente el medio
3. Si hay múltiples unidades, seleccionar la unidad correcta

**Paso 3: Crear el disco**
1. Marcar la casilla **Copiar archivos de recuperación de sistema de la unidad de instalación a la unidad de reparación** (recomendado)
   - Esto incluirá herramientas adicionales de recuperación
2. Hacer clic en **Crear disco**
3. Esperar a que se complete el proceso (aproximadamente 10-15 minutos)
4. Cuando finalice, hacer clic en **Finalizar**

**Paso 4: Verificación**
1. Etiquetar claramente el disco con:
   - Nombre del equipo
   - Fecha de creación
   - Versión de Windows
2. Almacenar en lugar seguro pero accesible

### Método 2: Crear un USB de recuperación (recomendado)

**Paso 1: Descargar la herramienta de medios de Windows**
1. Descargar la **Herramienta de creación de medios** desde el sitio web de Microsoft
2. Ejecutar la herramienta y aceptar los términos de licencia

**Paso 2: Crear el medio de recuperación**
1. Seleccionar **Crear medios de instalación para otro PC**
2. Desmarcar **Unidad USB** y seleccionar **Archivo ISO**
3. Guardar el archivo ISO en una ubicación accesible
4. Insertar un USB de 8 GB o superior
5. Hacer clic derecho en el archivo ISO y seleccionar **Quemar en disco USB**

**Paso 3: Personalizar el medio (opcional)**
1. Agregar herramientas adicionales de recuperación
2. Incluir controladores específicos del hardware
3. Configurar scripts de recuperación automáticos

## Creación de un disco de reparación en Windows 11

### Método 1: Usando la herramienta heredada

**Paso 1: Acceder a la herramienta**
1. Abrir **Panel de control** (puede buscarlo en el menú Inicio)
2. Cambiar la vista a **Iconos pequeños**
3. Buscar y abrir **Copias de seguridad y restauración (Windows 7)**
4. Hacer clic en **Crear un disco de reparación del sistema** en el panel izquierdo

**Paso 2: Preparar el medio**
1. Insertar un USB de 8 GB o superior
2. Verificar que el USB está formateado como FAT32 (requerido para UEFI)
3. Seleccionar el USB en la lista de unidades disponibles

**Paso 3: Crear el disco**
1. Marcar la casilla **Copiar archivos de recuperación de sistema de la unidad de instalación a la unidad de reparación**
   - Especialmente importante para Windows 11 debido a los requisitos de TPM 2.0
2. Hacer clic en **Crear disco**
3. Esperar a que se complete el proceso
4. Hacer clic en **Finalizar** cuando termine

### Método 2: Crear un USB de recuperación avanzado (recomendado para Windows 11)

**Paso 1: Preparar el USB**
1. Insertar un USB de 16 GB o superior
2. Formatear el USB como FAT32:
   - Abrir **Administración de discos**
   - Hacer clic derecho en el USB y seleccionar **Formatear**
   - Sistema de archivos: FAT32
   - Tamaño de la unidad de asignación: Predeterminado
   - Marcar **Formateo rápido**

**Paso 2: Crear la estructura de carpetas**
1. Crear las siguientes carpetas en la raíz del USB:
   - `sources`
   - `efi\boot`
   - `boot`

**Paso 3: Copiar los archivos necesarios**
1. Desde una instalación funcional de Windows 11:
   - Copiar `bootmgr` a la raíz del USB
   - Copiar `bootmgr.efi` a `\efi\boot\bootx64.efi`
   - Copiar `boot\boot.sdi` a la carpeta `\boot\` del USB
   - Copiar `sources\boot.wim` a la carpeta `\sources\` del USB
   - Copiar `sources\install.esd` o `install.wim` a la carpeta `\sources\` del USB

**Paso 4: Crear el archivo de configuración**
1. Crear un archivo `bcd` en la carpeta `\boot\` del USB
2. Configurar para soportar TPM 2.0 y Secure Boot (crucial para Windows 11)

**Paso 5: Verificación**
1. Reiniciar el equipo con el USB insertado
2. Verificar que el sistema arranca desde el USB
3. Acceder a las opciones de recuperación para confirmar funcionalidad

## Componentes esenciales del disco de reparación

### Archivos críticos incluidos
- **bootmgr**: Gestor de arranque principal
- **bootmgr.efi**: Versión EFI del gestor de arranque
- **BCD (Boot Configuration Data)**: Base de datos de configuración de arranque
- **winload.efi**: Cargador del sistema operativo
- **memtest.efi**: Herramienta de diagnóstico de memoria
- **RecoveryEnvironment**: Entorno de recuperación completo

### Herramientas de recuperación incluidas
1. **Restaurar sistema**: Para revertir a un punto de restauración
2. **Símbolo del sistema**: Para operaciones avanzadas
3. **Desinstalar actualizaciones**: Para resolver problemas tras actualizaciones
4. **Inicio automático de reparación**: Para reparar problemas de arranque
5. **Restaurar desde una imagen del sistema**: Para recuperación completa
6. **Solucionar problemas de inicio**: Para diagnóstico avanzado

> "Si pulsa en Métodos avanzados de recuperación, verá una pantalla en la que podrá seleccionar entre:
> - Usar una imagen del sistema creada previamente para recuperar el equipo.
> - Reinstalar Windows."

## Cómo usar el disco de reparación

### Procedimiento de arranque
1. Insertar el disco de reparación
2. Reiniciar el equipo
3. Acceder a la BIOS/UEFI (generalmente con F2, F10, DEL o ESC)
4. Configurar el orden de arranque para priorizar el USB/DVD
5. Guardar cambios y salir de la BIOS/UEFI

### Opciones de recuperación disponibles
1. **Restaurar sistema**:
   - Permite revertir a un punto de restauración anterior
   - No afecta a los archivos personales
   - Ideal para problemas tras instalación de software/controladores

2. **Símbolo del sistema**:
   - Acceso a comandos avanzados:
     ```cmd
     bootrec /fixmbr
     bootrec /fixboot
     bootrec /rebuildbcd
     chkdsk /f /r
     sfc /scannow
     ```

3. **Reparación automática de inicio**:
   - Diagnóstico y reparación automática de problemas de arranque
   - Analiza causas comunes de fallos de arranque

4. **Restaurar desde una imagen del sistema**:
   - Recuperación completa del sistema a un estado anterior
   - Requiere que haya creado previamente una imagen del sistema

5. **Desinstalar actualizaciones**:
   - Elimina actualizaciones recientes que puedan estar causando problemas
   - Opciones para desinstalar actualizaciones críticas o del controlador

### Procedimiento para restaurar desde una imagen
1. Seleccionar **Restaurar desde una imagen del sistema**
2. Si tiene múltiples imágenes, seleccionar la más reciente
3. Elegir si mantener o eliminar las copias de archivos más recientes
4. Confirmar la restauración
5. El sistema se reiniciará y comenzará el proceso de restauración
6. Una vez completado, el sistema volverá al estado en que estaba cuando se creó la imagen

## Solución de problemas comunes

### El sistema no arranca desde el disco de reparación
- **Causa**: Configuración incorrecta de BIOS/UEFI
- **Solución**:
  - Acceder a BIOS/UEFI
  - Verificar que Secure Boot está habilitado (para Windows 11)
  - Asegurar que el modo de arranque es UEFI, no Legacy/CSM
  - Configurar el USB/DVD como primer dispositivo de arranque

### Mensaje "El archivo bootmgr está ausente"
- **Causa**: Problemas con el gestor de arranque
- **Solución**:
  1. Arrancar desde el disco de reparación
  2. Abrir símbolo del sistema
  3. Ejecutar:
     ```cmd
     bootrec /fixmbr
     bootrec /fixboot
     bootrec /rebuildbcd
     ```

### No se detectan las imágenes del sistema
- **Causa**: La imagen no está en la ubicación esperada
- **Solución**:
  1. En la interfaz de restauración, seleccionar "Buscar imágenes del sistema en otras ubicaciones"
  2. Navegar manualmente a la ubicación de la imagen
  3. Si está en una unidad de red, configurar credenciales de acceso

### Problemas con TPM 2.0 en Windows 11
- **Causa**: El disco de reparación no incluye soporte para TPM 2.0
- **Solución**:
  1. Crear un nuevo disco de reparación incluyendo los archivos de recuperación del sistema
  2. Verificar que se marcó la casilla "Copiar archivos de recuperación del sistema"
  3. Para hardware no compatible, usar `bcdedit` para omitir verificaciones:
     ```cmd
     reg add HKLM\SYSTEM\Setup\LabConfig /v BypassTPMCheck /t REG_DWORD /d 1
     ```

## Recomendaciones para un plan de contingencia efectivo

### Estrategia de creación
- **Crear inmediatamente después de la instalación**
- **Actualizar después de cambios importantes**:
  - Nueva instalación de hardware
  - Actualizaciones importantes del sistema
  - Cambios significativos en la configuración

### Almacenamiento seguro
- **Al menos dos copias**: Una para uso diario, otra almacenada fuera del sitio
- **Etiquetado claro**:
  - Nombre del equipo
  - Fecha de creación
  - Versión de Windows
  - Hardware específico (si aplica)

### Verificación periódica
- **Probar trimestralmente**: Verificar que el disco arranca y funciona
- **Actualizar anualmente**: Crear un nuevo disco de reparación
- **Documentar el proceso**: Pasos específicos para cada tipo de hardware

### Combinación con otras medidas
- **Imágenes del sistema**: Crear una imagen del sistema mensual
- **Puntos de restauración**: Mantener puntos de restauración diarios
- **Backups en la nube**: Para protección adicional de datos críticos

> "Todos los días 1 de cada mes, a las 23:00 horas: copia de seguridad total de la partición o disco duro donde se encuentren los datos y, cuando haya finalizado, creación de una imagen del disco duro o partición donde se encuentre el sistema operativo."

## Conclusión

El disco de reparación del sistema es una herramienta esencial en cualquier estrategia de recuperación ante desastres. Como se destaca en la base de conocimientos:

> "Con la clonación es posible recuperar un fallo en un disco duro de forma rápida y sin necesidad de haber instalado previamente el sistema operativo."

En Windows 10 y 11, aunque el proceso ha evolucionado, la importancia del disco de reparación sigue siendo crítica. La transición a UEFI y los requisitos de seguridad más estrictos en Windows 11 hacen que este recurso sea aún más importante.

Las mejores prácticas para un disco de reparación efectivo incluyen:
- Crear el disco inmediatamente después de la instalación
- Actualizarlo periódicamente, especialmente después de cambios importantes
- Almacenarlo adecuadamente y documentar su uso
- Combinarlo con otras medidas de respaldo (imágenes del sistema, puntos de restauración)

Como refuerza la base de conocimientos:
> "¿Qué ocurriría si por error, distracción, fallo mecánico, etc., se produce una pérdida de datos importante? Pues no pasaría nada si se cuenta con un buen sistema de copias de seguridad de dichos datos que permita restaurar la información prácticamente al mismo nivel que se encontraba antes de su pérdida."

Un disco de reparación bien configurado y mantenido puede ahorrar horas de trabajo y evitar la pérdida completa del sistema en caso de fallo catastrófico, siendo una inversión mínima con un retorno extremadamente alto en términos de seguridad y continuidad operativa.
