# Resumen generado por IA

Este documento contiene un resumen del punto [5.4], generado con inteligencia artificial.

# 5.4 INSTALACIÓN DE WINDOWS 10 Y WINDOWS 11

## Índice del apartado:

- **Introducción a la instalación de Windows moderno**
- **Requisitos previos para Windows 10 y 11**
- **Preparación del medio de instalación**
- **Instalación de Windows 10**
  - Paso 1: Inicio del proceso de instalación
  - Paso 2: Configuración inicial
  - Paso 3: Selección del tipo de instalación
  - Paso 4: Configuración del disco
  - Paso 5: Configuración de usuario
  - Paso 6: Configuración final
- **Instalación de Windows 11**
  - Paso 1: Inicio del proceso de instalación
  - Paso 2: Configuración inicial
  - Paso 3: Selección del tipo de instalación
  - Paso 4: Configuración del disco
  - Paso 5: Configuración de usuario
  - Paso 6: Configuración final
- **Configuración post-instalación**
- **Solución de problemas comunes**

---

## Introducción a la instalación de Windows moderno

La instalación de sistemas Windows modernos ha evolucionado significativamente desde versiones anteriores, con un enfoque en la automatización, la seguridad y la integración con servicios en la nube. Como se menciona en la base de conocimientos:
> "Una instalación nueva se puede realizar en un equipo que dispone previamente de otro sistema operativo (para realizar una configuración de arranque dual) o en un equipo totalmente limpio."

En la actualidad, Microsoft ha introducido cambios importantes en el proceso de instalación, especialmente con Windows 11, que impone requisitos de hardware más estrictos enfocados en seguridad. Este apartado proporciona una guía detallada para la instalación de Windows 10 y Windows 11, actualizada a las versiones más recientes.

---

## Requisitos previos para Windows 10 y 11

### Para Windows 10

**Requisitos mínimos**:
- Procesador: 1 GHz o superior compatible con 64 bits
- Memoria RAM: 2 GB (64 bits) / 1 GB (32 bits)
- Almacenamiento: 32 GB de espacio disponible
- Tarjeta gráfica: Compatible con DirectX 9 o superior
- Pantalla: Resolución mínima de 800×600 píxeles
- Conexión a Internet: Necesaria para activación y actualizaciones

**Recomendado para un rendimiento óptimo**:
- Procesador: Intel Core i5 o AMD Ryzen 5 (o superior)
- Memoria RAM: 8 GB (16 GB para uso profesional)
- Almacenamiento: SSD de 256 GB o superior
- Tarjeta gráfica: Compatible con DirectX 12

### Para Windows 11

**Requisitos obligatorios**:
- Procesador: 64 bits, 1 GHz o superior con 2+ núcleos (de la lista compatible de Microsoft)
- Memoria RAM: 4 GB o superior
- Almacenamiento: 64 GB o superior
- TPM 2.0: Requerido para la instalación
- Secure Boot: Debe estar habilitado
- UEFI con capacidad de arranque seguro
- Pantalla: 9 pulgadas o superior con resolución 720p+
- Tarjeta gráfica: Compatible con DirectX 12 con controlador WDDM 2.0

**Recomendado para un rendimiento óptimo**:
- Procesador: Intel Core i5 de 10ª generación o AMD Ryzen 5 5000 o superior
- Memoria RAM: 8 GB o superior
- Almacenamiento: SSD NVMe de 256 GB o superior
- Tarjeta gráfica: NVIDIA GeForce GTX 1650 o superior

**Verificación de compatibilidad**:
- Para Windows 11: Usar la herramienta "PC Health Check" de Microsoft
- Verificar TPM 2.0: Ejecutar `tpm.msc` en Ejecutar
- Verificar Secure Boot: En Configuración > Sistema > Información del sistema

---

## Preparación del medio de instalación

### Para Windows 10

**Método 1: Herramienta de creación de medios (recomendado)**
1. Descargar la "Herramienta de creación de medios" desde el sitio web de Microsoft
2. Ejecutar la herramienta y aceptar los términos de licencia
3. Seleccionar "Crear medios de instalación para otro PC"
4. Elegir idioma, edición (Home, Pro, etc.) y arquitectura (64 bits recomendado)
5. Seleccionar "Unidad USB" y conectar un USB de 8 GB o superior
6. La herramienta descargará Windows 10 y preparará el USB booteable

**Método 2: ISO manual**
1. Descargar la ISO de Windows 10 desde el sitio web de Microsoft
2. Usar herramientas como Rufus para crear un USB booteable:
   - Seleccionar el archivo ISO
   - Elegir esquema de partición GPT para UEFI o MBR para BIOS
   - Formato: NTFS
   - Crear disco de arranque

### Para Windows 11

**Método 1: Herramienta de creación de medios (recomendado)**
1. Descargar la "Herramienta de creación de medios" actualizada para Windows 11
2. Ejecutar la herramienta y aceptar los términos de licencia
3. Seleccionar "Crear medios de instalación para otro PC"
4. Elegir idioma, edición y arquitectura (solo 64 bits)
5. Seleccionar "Unidad USB" y conectar un USB de 8 GB o superior
6. La herramienta descargará Windows 11 y preparará el USB booteable

**Método 2: ISO manual (para hardware no compatible)**
1. Descargar la ISO de Windows 11 desde el sitio web de Microsoft
2. Crear un archivo `autounattend.xml` para omitir verificación de TPM 2.0:
   ```xml
   <?xml version="1.0" encoding="utf-8"?>
   <unattend xmlns="urn:schemas-microsoft-com:unattend">
       <settings pass="windowsPE">
           <component name="Microsoft-Windows-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
               <DiskConfiguration>
                   <Disk wcm:action="add">
                       <CreatePartitions>
                           <CreatePartition wcm:action="add">
                               <Order>1</Order>
                               <Type>Primary</Type>
                               <Size>100</Size>
                           </CreatePartition>
                           <CreatePartition wcm:action="add">
                               <Order>2</Order>
                               <Type>Primary</Type>
                               <Extend>true</Extend>
                           </CreatePartition>
                       </CreatePartitions>
                       <ModifyPartitions>
                           <ModifyPartition wcm:action="add">
                               <Order>1</Order>
                               <PartitionID>1</PartitionID>
                               <Label>WINRE</Label>
                               <Format>NTFS</Format>
                               <TypeID>DE94BBA4-06D1-4D40-A16A-BFD50179D6AC</TypeID>
                           </ModifyPartition>
                           <ModifyPartition wcm:action="add">
                               <Order>2</Order>
                               <PartitionID>2</PartitionID>
                               <Label>Windows</Label>
                               <Letter>C</Letter>
                               <Format>NTFS</Format>
                           </ModifyPartition>
                       </ModifyPartitions>
                       <DiskID>0</DiskID>
                       <WillWipeDisk>true</WillWipeDisk>
                   </Disk>
                   <WillShowUI>OnError</WillShowUI>
               </DiskConfiguration>
               <ImageInstall>
                   <OSImage>
                       <InstallFrom>
                           <MetaData wcm:action="add">
                               <Key>/image/index</Key>
                               <Value>1</Value>
                           </MetaData>
                       </InstallFrom>
                       <InstallToAvailablePartition>false</InstallToAvailablePartition>
                       <WillShowUI>OnError</WillShowUI>
                   </OSImage>
               </ImageInstall>
               <UserData>
                   <ProductKey>
                       <WillShowUI>OnError</WillShowUI>
                   </ProductKey>
                   <AcceptEula>true</AcceptEula>
               </UserData>
           </component>
       </settings>
       <settings pass="oobeSystem">
           <component name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
               <OOBE>
                   <HideEULAPage>true</HideEULAPage>
                   <HideOEMRegistrationScreen>true</HideOEMRegistrationScreen>
                   <HideOnlineAccountScreens>true</HideOnlineAccountScreens>
                   <HideWirelessSetupInOOBE>true</HideWirelessSetupInOOBE>
                   <NetworkLocation>Home</NetworkLocation>
                   <ProtectYourPC>3</ProtectYourPC>
               </OOBE>
           </component>
       </settings>
       <cpi:offlineImage cpi:source="wim:c:/es-es_windows_11_business_editions_version_21h2_x64_dvd_44c3a03a.esd!WIM" xmlns:cpi="urn:schemas-microsoft-com:cpi" />
   </unattend>
   ```
3. Colocar el archivo en la raíz del USB booteable
4. Usar Rufus para crear el USB con configuración GPT para UEFI

---

## Instalación de Windows 10

### Paso 1: Inicio del proceso de instalación

1. Conectar el medio de instalación (USB/DVD) al equipo
2. Reiniciar el equipo y acceder a la BIOS/UEFI (generalmente con F2, F10, DEL o ESC)
3. Configurar el orden de arranque para priorizar el medio de instalación
4. Guardar cambios y salir de la BIOS/UEFI
5. El sistema arrancará desde el medio de instalación y mostrará el logo de Windows
6. Seleccionar el idioma, formato de hora y teclado
7. Hacer clic en "Siguiente"
8. Hacer clic en "Instalar ahora"

### Paso 2: Configuración inicial

1. Si se tiene una clave de producto, introducirla; de lo contrario, hacer clic en "No tengo clave de producto"
2. Seleccionar la edición de Windows 10 deseada (Home, Pro, etc.)
3. Aceptar los términos de licencia de Microsoft
4. Hacer clic en "Siguiente"

### Paso 3: Selección del tipo de instalación

1. En la pantalla "Tipo de instalación", seleccionar:
   - **Actualización**: Para actualizar desde una versión anterior de Windows
   - **Personalizada: Solo instalar Windows (avanzado)**: Para una instalación limpia

2. Para una instalación limpia, seleccionar "Personalizada: Solo instalar Windows (avanzado)"

### Paso 4: Configuración del disco

1. En la pantalla "¿Dónde desea instalar Windows?", se mostrarán las particiones disponibles
2. Realizar una de las siguientes acciones:
   - **Nueva**: Crear una nueva partición (recomendado para instalación limpia)
   - **Formatear**: Formatear una partición existente
   - **Eliminar**: Eliminar una partición existente para crear espacio no asignado
   - **Actualizar**: Refrescar la lista de particiones

3. Para crear una partición nueva:
   - Seleccionar el espacio no asignado
   - Hacer clic en "Nuevo"
   - Especificar el tamaño de la partición (en MB)
   - Hacer clic en "Aplicar" (esto creará la partición del sistema EFI y MSR)
   - Seleccionar la partición principal recién creada

4. Hacer clic en "Siguiente" para comenzar la instalación

### Paso 5: Configuración de usuario

1. Durante la instalación, el sistema se reiniciará varias veces
2. Una vez completada la instalación básica, se mostrará la pantalla de configuración:
   - Introducir un nombre de usuario
   - Opcionalmente, introducir una contraseña
   - Configurar una pregunta de seguridad (si se estableció contraseña)
   - Introducir el nombre del equipo (se sugiere uno automático)

3. Configuración de privacidad:
   - Seleccionar las opciones de privacidad deseadas (recomendado revisar cada una)
   - Opciones relacionadas con diagnóstico, ubicación, reconocimiento de tinta y voz, etc.

### Paso 6: Configuración final

1. Configuración de Cortana (asistente virtual):
   - Seleccionar si se desea habilitar Cortana
   - Configurar preferencias de voz y texto

2. Configuración de cuenta Microsoft:
   - Opción para usar cuenta Microsoft o crear cuenta local
   - Si se elige cuenta Microsoft, introducir credenciales
   - Si se elige cuenta local, hacer clic en "Omitir este paso"

3. Configuración de Windows Update:
   - El sistema verificará e instalará actualizaciones críticas
   - Puede tardar varios minutos u horas según el número de actualizaciones

4. Configuración de aplicaciones predeterminadas:
   - Seleccionar aplicaciones predeterminadas para navegación, correo, etc.

5. Finalmente, se mostrará el escritorio de Windows 10 listo para usar

---

## Instalación de Windows 11

### Paso 1: Inicio del proceso de instalación

1. Conectar el medio de instalación (USB/DVD) al equipo
2. Reiniciar el equipo y acceder a la BIOS/UEFI
3. Configurar el orden de arranque para priorizar el medio de instalación
4. Asegurarse de que Secure Boot y TPM 2.0 están habilitados
5. Guardar cambios y salir de la BIOS/UEFI
6. El sistema arrancará desde el medio de instalación
7. Seleccionar el idioma, formato de hora y teclado
8. Hacer clic en "Siguiente"
9. Hacer clic en "Instalar ahora"

### Paso 2: Configuración inicial

1. Si se tiene una clave de producto, introducirla; de lo contrario, hacer clic en "No tengo clave de producto"
2. Seleccionar la edición de Windows 11 deseada (Home, Pro, etc.)
3. Aceptar los términos de licencia de Microsoft
4. Hacer clic en "Siguiente"

### Paso 3: Selección del tipo de instalación

1. En la pantalla "Tipo de instalación", seleccionar:
   - **Actualización**: Para actualizar desde Windows 10
   - **Personalizada: Solo instalar Windows (avanzado)**: Para una instalación limpia

2. Para una instalación limpia, seleccionar "Personalizada: Solo instalar Windows (avanzado)"

### Paso 4: Configuración del disco

1. En la pantalla "¿Dónde desea instalar Windows?", se mostrarán las particiones disponibles
2. Realizar una de las siguientes acciones:
   - **Nueva**: Crear una nueva partición
   - **Formatear**: Formatear una partición existente
   - **Eliminar**: Eliminar una partición existente
   - **Actualizar**: Refrescar la lista de particiones

3. Para crear una partición nueva:
   - Seleccionar el espacio no asignado
   - Hacer clic en "Nuevo"
   - Especificar el tamaño de la partición (en MB)
   - Hacer clic en "Aplicar" (esto creará la partición del sistema EFI y MSR)
   - Seleccionar la partición principal recién creada

4. **Si el sistema muestra error de TPM 2.0 o Secure Boot**:
   - Presionar Shift + F10 para abrir símbolo del sistema
   - Escribir `regedit` y presionar Enter
   - Navegar a `HKEY_LOCAL_MACHINE\SYSTEM\Setup`
   - Crear una nueva clave llamada "LabConfig"
   - Dentro de LabConfig, crear los siguientes valores DWORD:
     - BypassTPMCheck = 1
     - BypassSecureBootCheck = 1
     - BypassRAMCheck = 1
     - BypassCPUCheck = 1
   - Cerrar Registry Editor y el símbolo del sistema
   - Volver a la pantalla de selección de disco

5. Hacer clic en "Siguiente" para comenzar la instalación

### Paso 5: Configuración de usuario

1. Durante la instalación, el sistema se reiniciará varias veces
2. Una vez completada la instalación básica, se mostrará la pantalla de configuración:
   - Introducir un nombre de usuario
   - Opcionalmente, introducir una contraseña
   - Configurar una pregunta de seguridad (si se estableció contraseña)
   - Introducir el nombre del equipo

3. Configuración de privacidad:
   - Seleccionar las opciones de privacidad deseadas
   - Windows 11 tiene opciones adicionales para Widgets, Teams y Copilot
   - Revisar cuidadosamente cada configuración de privacidad

### Paso 6: Configuración final

1. Configuración de Microsoft Account:
   - Windows 11 requiere una cuenta Microsoft para la mayoría de las ediciones
   - Introducir credenciales de cuenta Microsoft
   - Si no se tiene cuenta, hacer clic en "Crear una"
   - Opción para usar cuenta local (más compleja en Windows 11)

2. Configuración de Windows Hello:
   - Opcionalmente configurar Windows Hello para inicio de sesión con PIN, facial o huella
   - Recomendado para mayor seguridad y conveniencia

3. Configuración de Widgets:
   - Seleccionar si se desea habilitar Widgets en la barra de tareas
   - Personalizar fuentes de información para Widgets

4. Configuración de Teams:
   - Seleccionar si integrar Microsoft Teams en la barra de tareas
   - Configurar opciones de notificación

5. Configuración de Copilot:
   - Windows 11 22H2+ incluye Copilot integrado
   - Configurar preferencias de privacidad para Copilot

6. Configuración de Windows Update:
   - El sistema verificará e instalará actualizaciones críticas
   - Puede tardar considerablemente más que en Windows 10 debido a actualizaciones adicionales

7. Finalmente, se mostrará el escritorio de Windows 11 listo para usar, con su nueva interfaz centrada y diseño renovado

---

## Configuración post-instalación

### Para ambos sistemas

1. **Instalar actualizaciones críticas**:
   - Abrir Configuración > Windows Update
   - Hacer clic en "Buscar actualizaciones"
   - Instalar todas las actualizaciones disponibles
   - Reiniciar según sea necesario
   - Repetir hasta que no haya más actualizaciones

2. **Instalar controladores**:
   - Visitar el sitio web del fabricante del equipo/portátil
   - Descargar e instalar los controladores más recientes
   - Prestar especial atención a controladores de:
     - Tarjeta gráfica
     - Chipset
     - Audio
     - Red (Ethernet y Wi-Fi)
     - Dispositivos táctiles (en laptops)

3. **Configuración de seguridad**:
   - Configurar Windows Defender/Security
   - Verificar que SmartScreen está habilitado
   - Configurar Firewall de Windows
   - Para Windows 11: Verificar que TPM está funcionando correctamente

4. **Configuración de copias de seguridad**:
   - Configurar File History para copias de seguridad automáticas
   - Configurar OneDrive para sincronización en la nube
   - Considerar herramientas adicionales como Macrium Reflect

5. **Instalación de software esencial**:
   - Navegador web (Chrome, Firefox, Edge)
   - Suite ofimática (Microsoft Office, LibreOffice)
   - Software de seguridad (antivirus adicional si es necesario)
   - Herramientas de utilidad (7-Zip, VLC, etc.)

---

## Solución de problemas comunes

### Problemas durante la instalación

**Error 0x80070005 - Acceso denegado**:
1. Reiniciar el proceso de instalación
2. Durante la instalación, presionar Shift + F10
3. Escribir `reg add HKLM\SYSTEM\Setup\Status /v DeviceStatus /t REG_DWORD /d 0` y presionar Enter
4. Cerrar la ventana del símbolo del sistema
5. Continuar con la instalación

**Error 0x80070002 - Archivo no encontrado**:
1. Verificar la integridad del medio de instalación
2. Recrear el USB booteable usando Rufus con formato NTFS
3. Asegurarse de que el USB está formateado como GPT para UEFI

**Windows 11: Error de TPM 2.0 o Secure Boot**:
1. Verificar en BIOS/UEFI que TPM 2.0 y Secure Boot están habilitados
2. Si el hardware es compatible pero no aparece en la lista de Microsoft:
   - Durante la instalación, presionar Shift + F10
   - Escribir `regedit` y presionar Enter
   - Navegar a `HKEY_LOCAL_MACHINE\SYSTEM\Setup`
   - Crear una nueva clave llamada "LabConfig"
   - Crear los valores DWORD mencionados anteriormente
   - Cerrar Registry Editor y continuar la instalación

### Problemas post-instalación

**Problemas de rendimiento**:
1. Verificar que todos los controladores están actualizados
2. Ejecutar el solucionador de problemas de rendimiento:
   - Configuración > Sistema > Solucionar problemas
3. Desactivar efectos visuales innecesarios:
   - Panel de control > Sistema > Configuración avanzada > Rendimiento

**Problemas de red**:
1. Ejecutar el solucionador de problemas de red:
   - Configuración > Red e Internet > Solucionar problemas
2. Restablecer la pila de red:
   - Símbolo del sistema como administrador
   - `netsh int ip reset`
   - `netsh winsock reset`
   - Reiniciar el equipo

**Problemas de activación**:
1. Verificar conexión a Internet
2. Ejecutar `slmgr /ato` en símbolo del sistema como administrador
3. Si persiste el problema:
   - Configuración > Actualización y seguridad > Activación
   - Hacer clic en "Solucionar problemas"
   - Seguir los pasos para activación por teléfono si es necesario

---

## Conclusión

La instalación de Windows 10 y Windows 11 sigue un proceso similar pero con importantes diferencias, especialmente en los requisitos de hardware y en la configuración inicial. Como se menciona en la base de conocimientos:
> "En ella se encuentran las siguientes alternativas: Actualizar. Para que refresque la lista de particiones. Eliminar. Si pulsa en esta opción, eliminara la partición. Formatear. Para formatear una particion existente. Nuevo. Si pulsa en esta opción, se creará una nueva partición."

Windows 11 introduce requisitos de seguridad más estrictos con TPM 2.0 y Secure Boot, lo que puede requerir pasos adicionales para hardware compatible pero no oficialmente soportado. Ambos sistemas operativos ofrecen una experiencia de instalación más automatizada que versiones anteriores, con enfoque en la integración con servicios en la nube y la seguridad desde el primer momento.

Para una instalación exitosa, es fundamental:
- Verificar los requisitos de hardware antes de comenzar
- Preparar adecuadamente el medio de instalación
- Realizar copias de seguridad de los datos importantes
- Seguir los pasos de instalación con atención
- Completar la configuración post-instalación adecuadamente

La correcta instalación y configuración inicial de Windows 10 o 11 establece las bases para un sistema estable, seguro y optimizado para las necesidades del usuario.
