# Resumen generado por IA

Este documento contiene un resumen de los  punto [7.6.1], [7.6.2], [7.6.3], [7.6.4],  generado con inteligencia artificial.

# 7.6 PROCEDIMIENTOS DE ACTUALIZACIÓN

## 7.6.1 WINDOWS UPDATE

### Introducción a Windows Update

Windows Update es **una aplicación integrada en Windows que facilita el proceso de actualización del equipo**, permitiendo mantener el sistema operativo, controladores y componentes esenciales al día. Como se menciona en la base de conocimientos:

> "Windows incorpora una potente aplicación denominada Windows Update que facilitará el proceso de actualización del equipo. Con este sistema, no es necesario buscar las actualizaciones en la web, ni aquellas correcciones importantes para Windows."

**Características principales**:
- Descarga e instalación automatizada de actualizaciones
- Verificación de compatibilidad antes de la instalación
- Integración con el sistema de seguridad de Windows
- Soporte para actualizaciones en entornos empresariales mediante WSUS

### Acceso a Windows Update

#### En Windows 10
1. Abrir **Configuración** (Win + I)
2. Ir a **Actualización y seguridad** > **Windows Update**
3. En esta pantalla se pueden:
   - Verificar el estado de las actualizaciones
   - Buscar actualizaciones manualmente
   - Configurar opciones avanzadas
   - Ver el historial de actualizaciones

#### En Windows 11
1. Abrir **Configuración** (Win + I)
2. Ir directamente a **Windows Update**
3. La interfaz presenta:
   - Diseño moderno con el nuevo sistema Fluent UI
   - Información visual clara sobre el estado de actualizaciones
   - Resumen semanal de actualizaciones instaladas
   - Opciones de configuración más intuitivas

> "El sistema se podrá configurar para que se instalen automáticamente todas las actualizaciones de manera transparente para el usuario o hacer que se notifique cuando estén disponibles las nuevas actualizaciones para que el usuario decida si desea descargarlas."

### Configuración de Windows Update

#### Opciones principales
- **Actualizaciones importantes**:
  - Instalar automáticamente (recomendado)
  - Buscar actualizaciones, pero permitir elegir
  - Desactivar actualizaciones (no recomendado)

- **Horarios activos**:
  - Definir cuándo el equipo está en uso para evitar reinicios no deseados
  - En Windows 10: hasta 18 horas configurables
  - En Windows 11: horarios más flexibles y fáciles de configurar

- **Entrega optimizada**:
  - Compartir actualizaciones con otros dispositivos en la red local
  - Descargar actualizaciones desde Internet y otros dispositivos
  - Limitar ancho de banda utilizado para actualizaciones

#### Configuración avanzada
- **En Windows 10**:
  - Ir a **Opciones avanzadas**
  - Configurar reinicios programados
  - Posponer actualizaciones hasta 35 días
  - Excluir actualizaciones específicas

- **En Windows 11**:
  - Opciones simplificadas con acceso a configuración avanzada
  - Control más granular de actualizaciones funcionales
  - Integración con Windows Update for Business en versiones recientes

### Tipos de actualizaciones

#### 1. Actualizaciones importantes
> "Las actualizaciones importantes y de alta prioridad son críticas para la seguridad y la confiabilidad del equipo. Ofrecen la protección más reciente contra las actividades malintencionadas en línea."

- **Características**:
  - Actualizaciones de seguridad críticas
  - Correcciones para vulnerabilidades de seguridad
  - Actualizaciones de controladores esenciales
  - Recomendado instalar inmediatamente

#### 2. Actualizaciones recomendadas
- **Características**:
  - Solucionan problemas no críticos
  - Mejoran funcionalidades existentes
  - Pueden incluir actualizaciones de controladores no esenciales
  - En Windows 10/11, se pueden configurar para instalarse automáticamente

#### 3. Actualizaciones opcionales
- **Características**:
  - Incluyen controladores adicionales
  - Software nuevo de Microsoft
  - Actualizaciones no críticas
  - Deben instalarse manualmente según necesidad

> "En la parte superior, en el apartado Actualizaciones importantes, se podrá elegir la opción que más convenga al usuario, permitiendo al sistema: instalar todas las actualizaciones (se activará un menú en la parte inferior, con el que se configurará cuándo se instalarán las actualizaciones), preguntar al usuario si desea descargarlas o desactivar las actualizaciones."

### Proceso de actualización

#### Búsqueda manual de actualizaciones
- **En Windows 10/11**:
  1. Abrir Configuración > Windows Update
  2. Hacer clic en **Buscar actualizaciones**
  3. El sistema verificará e instalará las actualizaciones disponibles
  4. Si hay actualizaciones críticas, el sistema reiniciará automáticamente

#### Historial de actualizaciones
- **Acceso**:
  - Windows 10: Configuración > Actualización y seguridad > Windows Update > Ver historial de actualizaciones
  - Windows 11: Configuración > Windows Update > Historial de actualizaciones

- **Información disponible**:
  - Fecha de instalación
  - Tipo de actualización (seguridad, controlador, etc.)
  - Estado (éxito, error, pendiente)
  - Descripción detallada
  - Código de actualización

#### Desinstalación de actualizaciones
- **Proceso**:
  1. Acceder al historial de actualizaciones
  2. Hacer clic en **Actualizaciones instaladas**
  3. Seleccionar la actualización a desinstalar
  4. Hacer clic en **Desinstalar**

- **Consideraciones**:
  > "No será posible desinstalar aquellas actualizaciones que afecten a archivos vitales para el sistema operativo y, por regla general, se desaconseja desinstalar cualquier actualización a no ser que se tengan instrucciones específicas para ello."

---

## 7.6.2 LA INSTALACIÓN DE NUEVOS PROGRAMAS

### Métodos de instalación

#### 1. Instalación desde Microsoft Store
- **Características**:
  - Disponible en Windows 10 y 11
  - Actualizaciones automáticas por defecto
  - Sandboxing para mayor seguridad
  - Sincronización de estado entre dispositivos

- **Proceso de instalación**:
  1. Abrir Microsoft Store
  2. Buscar la aplicación deseada
  3. Hacer clic en **Obtener** o **Instalar**
  4. La aplicación se descargará e instalará automáticamente

- **Windows 11 mejoras**:
  - Soporte para aplicaciones Win32 en Microsoft Store
  - Instalación simplificada mediante App Installer
  - Integración con Windows Package Manager

#### 2. Instalación desde archivos ejecutables (EXE/MSI)
- **Proceso en Windows 10/11**:
  1. Descargar el instalador desde el sitio web oficial
  2. Ejecutar el archivo (hacer doble clic)
  3. Si aparece el Control de Cuentas de Usuario (UAC), hacer clic en **Sí**
  4. Seguir las instrucciones del asistente de instalación

- **Configuración durante la instalación**:
  - Seleccionar ubicación de instalación
  - Crear accesos directos en el escritorio y menú Inicio
  - Seleccionar componentes adicionales
  - Aceptar términos de licencia

> "Durante el proceso de instalación, el sistema requerirá al usuario información sobre la ubicación del programa en el equipo, la creación o no de accesos directos en el escritorio y en el menú Inicio y una serie de información necesaria para la correcta instalación del programa."

#### 3. Instalación mediante Windows Package Manager (Winget)
- **Características**:
  - Herramienta de línea de comandos para gestión de aplicaciones
  - Disponible en Windows 10 1809+ y Windows 11
  - Acceso a miles de aplicaciones populares
  - Ideal para administradores y usuarios avanzados

- **Comandos esenciales**:
  ```powershell
  winget search nombre-app    # Busca aplicaciones
  winget install nombre-app   # Instala una aplicación
  winget upgrade --all        # Actualiza todas las aplicaciones
  winget source update        # Actualiza el repositorio
  ```

- **Ventajas**:
  - Automatización de la gestión de software
  - Consistencia en entornos multi-usuario
  - Integración con scripts de administración

#### 4. Instalación desde medios físicos (CD/DVD)
- **Proceso**:
  1. Insertar el CD/DVD en la unidad óptica
  2. El sistema reconocerá automáticamente el medio
  3. Si no comienza automáticamente, abrir el Explorador de archivos y ejecutar el archivo setup.exe
  4. Seguir las instrucciones del asistente de instalación

> "Para realizar la instalación, se insertará el CD o DVD y se seguirán las indicaciones que el programa vaya mostrando en el monitor. Es posible que para la instalación se solicite la contraseña de administrador o una confirmación."

#### 5. Instalación sin instalador
- **Características**:
  - Algunos programas portátiles no requieren instalación
  - Solo es necesario ejecutar el archivo EXE
  - No modifican el Registro ni dejan residuos al eliminarlos

- **Proceso**:
  1. Descargar el archivo comprimido (ZIP, RAR, etc.)
  2. Extraer los archivos en una carpeta
  3. Ejecutar el archivo EXE principal
  4. Crear acceso directo si se desea

> "Para trabajar con este tipo de programa, solo será necesario ejecutar el archivo que ejecute la aplicación. Una vez se termine el proceso de instalación del nuevo programa, ya se podrá trabajar con él en el equipo."

---

## 7.6.3 LA DESINSTALACIÓN DE PROGRAMAS

### Métodos de desinstalación

#### 1. Mediante Configuración (recomendado)
- **En Windows 10**:
  1. Abrir **Configuración** (Win + I)
  2. Ir a **Aplicaciones** > **Aplicaciones y características**
  3. Buscar la aplicación a desinstalar
  4. Hacer clic en **Desinstalar**

- **En Windows 11**:
  1. Abrir **Configuración** (Win + I)
  2. Ir a **Aplicaciones** > **Aplicaciones y características**
  3. Buscar la aplicación a desinstalar
  4. Hacer clic en los puntos suspensivos (...) > **Desinstalar**

- **Características**:
  - Muestra todas las aplicaciones instaladas
  - Indica el tamaño de la aplicación
  - Muestra la fecha de instalación
  - Permite ordenar por nombre, tamaño o fecha

#### 2. Mediante Panel de control
- **Proceso**:
  1. Abrir **Panel de control**
  2. Ir a **Programas** > **Programas y características**
  3. Seleccionar el programa a desinstalar
  4. Hacer clic en **Desinstalar**

- **Ventajas**:
  - Muestra más información detallada
  - Permite ver actualizaciones instaladas
  - Útil para aplicaciones antiguas

> "Para desinstalar un programa en Windows 7, pulse sobre el botón del menú Inicio. Seguidamente, pulse sobre Panel de control y seleccione Programas y características. Se mostrará un listado con todos los programas instalados en el equipo. Para desinstalar un programa, pulse sobre la aplicación deseada y seleccione Desinstalar (se encuentra en la parte superior)."

#### 3. Mediante PowerShell
- **Comandos esenciales**:
  ```powershell
  # Listar todas las aplicaciones
  Get-AppxPackage | Select Name, PackageFullName
  
  # Desinstalar una aplicación UWP
  Remove-AppxPackage NombrePaquete
  
  # Desinstalar una aplicación tradicional
  Get-Package -Name "NombreApp" | Uninstall-Package
  ```

- **Ventajas**:
  - Automatización mediante scripts
  - Desinstalación masiva
  - Mayor control para administradores

#### 4. Mediante Windows Package Manager
- **Comandos esenciales**:
  ```powershell
  # Listar aplicaciones instaladas
  winget list
  
  # Desinstalar una aplicación
  winget uninstall "NombreApp"
  ```

- **Ventajas**:
  - Consistencia en la gestión de aplicaciones
  - Integración con el repositorio central
  - Ideal para entornos empresariales

### Consideraciones importantes

#### Aplicaciones modernas (UWP)
- **Características**:
  - Se desinstalan completamente sin dejar residuos
  - No afectan al Registro del sistema
  - Desinstalación más rápida y segura

#### Aplicaciones tradicionales (Win32)
- **Características**:
  - Algunas pueden dejar residuos en el Registro
  - Pueden requerir reinicio para completar la desinstalación
  - Algunas aplicaciones incluyen su propio desinstalador

> "Es posible que en la pantalla de Programas y características no aparezcan todos los programas. En esta pantalla solo aparecerán aquellos programas que han sido creados para sistemas Windows. Para desinstalar dichos programas será necesario revisar la documentación que se suministra con ellos o visitar su página web."

### Solución de problemas comunes

#### Programa no aparece en la lista
- **Causa**: La aplicación no está registrada correctamente
- **Solución**:
  1. Buscar en el menú Inicio la aplicación
  2. Hacer clic derecho > Más > Abrir ubicación de archivo
  3. Localizar el instalador/desinstalador en la carpeta

#### No se puede desinstalar una aplicación
- **Causa**: La aplicación está en uso o tiene permisos bloqueados
- **Solución**:
  1. Cerrar todas las instancias de la aplicación
  2. Reiniciar el equipo
  3. Intentar desinstalar en modo seguro
  4. Usar herramientas de terceros especializadas

#### Restos después de la desinstalación
- **Causa**: La aplicación dejó archivos residuales
- **Solución**:
  1. Usar la herramienta "Liberador de espacio" de Windows
  2. Buscar manualmente en:
     - `C:\Program Files`
     - `C:\Program Files (x86)`
     - `C:\Users\[Usuario]\AppData`
  3. Usar herramientas de limpieza especializadas

---

## 7.6.4 INSTALACIÓN DE CONTROLADORES

### Introducción a los controladores

Los controladores son **software que permiten a los dispositivos de hardware comunicarse con el sistema operativo**. Como se menciona en la base de conocimientos:

> "Las actualizaciones de controladores. Proporcionan compatibilidad con un hardware nuevo o mejorar la de uno ya existente."

**Importancia de los controladores actualizados**:
- Mejoran el rendimiento del hardware
- Solucionan problemas de compatibilidad
- Añaden nuevas funciones al hardware
- Corrigen vulnerabilidades de seguridad

### Métodos de instalación de controladores

#### 1. Instalación automática mediante Windows Update
- **Proceso**:
  1. Conectar el dispositivo al equipo
  2. Windows buscará e instalará automáticamente el controlador
  3. Si se encuentra un controlador actualizado, Windows lo instalará

- **Ventajas**:
  - Proceso completamente automático
  - Controladores verificados por Microsoft
  - Integración con el sistema de seguridad

> "Windows 7 incorpora una gran base de datos con los controladores de los principales fabricantes de hardware, por lo que, en la mayoría de los casos, el sistema será autosuficiente para la instalación del nuevo hardware y mostrará un mensaje informando de que ya se puede utilizar el nuevo dispositivo en el equipo."

#### 2. Instalación manual desde el sitio del fabricante
- **Proceso**:
  1. Identificar el modelo exacto del dispositivo
  2. Visitar el sitio web del fabricante
  3. Descargar el controlador específico para su versión de Windows
  4. Ejecutar el instalador y seguir las instrucciones

- **Cuándo usar este método**:
  - Cuando Windows no encuentra el controlador adecuado
  - Para obtener las últimas funciones del hardware
  - Cuando se necesitan controladores específicos para rendimiento

#### 3. Instalación mediante Administrador de dispositivos
- **Acceso**:
  - Escribir `devmgmt.msc` en Ejecutar (Win + R)
  - O Configuración > Sistema > Hardware y dispositivos > Administrador de dispositivos

- **Proceso de instalación**:
  1. Localizar el dispositivo en el Administrador de dispositivos
  2. Hacer clic derecho > **Actualizar controlador**
  3. Seleccionar:
     - **Buscar software de controlador automáticamente**
     - **Examinar equipo en busca de software de controlador**
  4. Seguir las instrucciones en pantalla

#### 4. Instalación mediante Windows Update
- **Proceso**:
  1. Abrir Configuración > Windows Update
  2. Hacer clic en **Opciones avanzadas**
  3. En Windows 10: Ir a **Ver todas las actualizaciones disponibles**
  4. En Windows 11: Hacer clic en **Opciones adicionales**
  5. Seleccionar la pestaña **Controladores**
  6. Seleccionar los controladores deseados y hacer clic en **Descargar y instalar**

### Configuración de la instalación de controladores

#### Opciones de configuración
- **Acceso**:
  - Administrador de dispositivos > Acción > Configuración de la instalación de dispositivos
  - O Configuración avanzada de Windows Update

- **Opciones principales**:
  - **Sí, hacerlo automáticamente (recomendado)**:
    - Windows descargará e instalará controladores automáticamente
    - Mejor opción para la mayoría de usuarios
  
  - **No, dejarme elegir**:
    - **Instalar siempre el mejor software de controlador de Windows Update**
    - **Instalar software de controlador de Windows Update si no se encuentra en el equipo**
    - **No instalar nunca software de controlador de Windows Update**

> "En ella se encontrarán las opciones siguientes: Si, hacerlo automáticamente. Es recomendable para la integridad del equipo tener esta opción activada. No, dejarme elegir. El usuario podrá seleccionar entre las siguientes opciones: Instalar siempre el mejor software de controlador de Windows Update. Instalar software de controlador de Windows Update si no se encuentra en el equipo. No instalar nunca software de controlador de Windows Update."

### Solución de problemas comunes

#### Dispositivo no identificado
- **Causa**: Windows no puede encontrar el controlador adecuado
- **Solución**:
  1. Verificar conexión del dispositivo
  2. Buscar manualmente en el sitio del fabricante
  3. Usar el Administrador de dispositivos para actualizar el controlador
  4. Verificar si el dispositivo es compatible con su versión de Windows

> "Es posible que Windows 7 no tenga los controladores del dispositivo o no sea capaz de realizar el proceso de manera correcta, mostrando la siguiente pantalla para informar de ello: 'No se pudo instalar el software de controlador de dispositivo'"

#### Controlador no firmado
- **Causa**: El controlador no ha sido verificado por Microsoft
- **Solución**:
  1. Descargar el controlador desde el sitio oficial del fabricante
  2. Si es necesario, desactivar temporalmente la verificación de firmas:
     - Reiniciar manteniendo presionada Mayús
     - Solucionar problemas > Opciones avanzadas > Configuración de inicio > Reiniciar
     - Presionar F7 para desactivar la verificación de firmas

#### Problemas de compatibilidad
- **Causa**: El controlador no es compatible con la versión de Windows
- **Solución**:
  1. Buscar controladores específicos para su versión de Windows
  2. Usar el modo de compatibilidad:
     - Hacer clic derecho en el instalador > Propiedades > Compatibilidad
     - Seleccionar versión de Windows para la que fue diseñado el controlador
  3. Buscar alternativas proporcionadas por el fabricante

### Herramientas avanzadas

#### Driver Verifier
- **Definición**: Herramienta para detectar problemas con controladores
- **Acceso**:
  - Escribir `verifier` en Ejecutar (Win + R)
- **Uso**:
  - Seleccionar controladores específicos para monitorear
  - Configurar tipos de pruebas
  - Reiniciar el equipo para comenzar la verificación
- **Precaución**: Puede causar inestabilidad si se usa incorrectamente

#### Actualización masiva de controladores
- **Proceso**:
  1. Abrir Administrador de dispositivos
  2. Expandir una categoría (ej: Adaptadores de pantalla)
  3. Hacer clic derecho en el dispositivo > Actualizar controlador
  4. Repetir para todos los dispositivos que necesiten actualización

- **Alternativa**:
  - Usar herramientas de terceros especializadas
  - Usar Windows Update para buscar controladores adicionales

---

## Conclusión

Los procedimientos de actualización son fundamentales para mantener un sistema operativo seguro, estable y funcional. Como se destaca en la base de conocimientos:

> "Las actualizaciones importantes y de alta prioridad son críticas para la seguridad y la confiabilidad del equipo. Ofrecen la protección más reciente contra las actividades malintencionadas en línea."

En Windows 10 y 11, Microsoft ha mejorado significativamente estos procesos, ofreciendo:

- **Windows Update**: Un sistema más eficiente y configurable para mantener el sistema actualizado
- **Microsoft Store**: Plataforma centralizada para la instalación y actualización de aplicaciones
- **Administrador de dispositivos**: Herramienta mejorada para la gestión de controladores
- **Windows Package Manager**: Nueva herramienta para la gestión avanzada de software

La correcta gestión de estos procedimientos debe incluir:
- Configuración adecuada de actualizaciones automáticas
- Verificación periódica de actualizaciones disponibles
- Instalación oportuna de actualizaciones críticas de seguridad
- Desinstalación adecuada de software no utilizado
- Actualización regular de controladores para optimizar el hardware

Como refuerza la base de conocimientos:
> "¿Qué ocurriría si por error, distracción, fallo mecánico, etc., se produce una pérdida de datos importante? Pues no pasaría nada si se cuenta con un buen sistema de copias de seguridad de dichos datos que permita restaurar la información prácticamente al mismo nivel que se encontraba antes de su pérdida."

La implementación rigurosa de estos procedimientos de actualización es esencial para garantizar la seguridad, estabilidad y rendimiento óptimo del sistema, protegiendo tanto la inversión en hardware como la productividad del usuario. En el panorama actual de amenazas cibernéticas en constante evolución, mantener sistemas actualizados no es simplemente recomendable, sino absolutamente esencial para la seguridad y continuidad del trabajo.
