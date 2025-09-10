# Resumen generado por IA

Este documento contiene un resumen del punto [5.2], generado con inteligencia artificial.

# 5.2 CONSIDERACIONES PREVIAS

## Índice del apartado:

- **Planificación del sistema de archivos**
- **Particionado del disco**
- **Copia de seguridad de datos**
- **Verificación de requisitos de hardware**
- **Consideraciones de seguridad**
- **Configuración de red**
- **Licencias y activación**
- **Consideraciones específicas por sistema operativo**

---

## Planificación del sistema de archivos

Antes de instalar cualquier sistema operativo, es fundamental **decidir qué sistema de archivos utilizar**, ya que afectará al rendimiento, compatibilidad y funcionalidades disponibles.

**Windows 10/11**:
- **NTFS**: Sistema predeterminado, recomendado para la mayoría de usuarios
  - Ventajas: Soporta archivos grandes, cifrado (BitLocker), compresión, journaling
  - Limitación: Poco compatible con sistemas Linux/Mac por defecto
- **ReFS**: Para entornos empresariales y servidores
  - Enfoque en integridad de datos y resistencia
  - Compatible con Storage Spaces

**Linux (Ubuntu, Mint)**:
- **ext4**: Sistema predeterminado en la mayoría de distribuciones
  - Equilibrio entre rendimiento y características
  - Soporta journaling, archivos grandes y características modernas
- **Btrfs**: Opción avanzada con snapshots integrados
  - Útil para sistemas que requieren recuperación fácil
  - Soporte experimental en algunos casos

**Consideraciones adicionales**:
- Si se planea dual-boot, planificar particiones compatibles
- Para sistemas con TPM 2.0 (Windows 11), NTFS es obligatorio para BitLocker
- En sistemas Linux, considerar si se necesita separar particiones (/home, /boot, etc.)

---

## Particionado del disco

**Planificación esencial**:
- **Windows 10/11**:
  - Partición de sistema EFI (100-500 MB)
  - Partición MSR (Microsoft Reserved, 16 MB)
  - Partición principal del sistema (mínimo 64 GB para Windows 11)
  - Partición de recuperación (varía según fabricante)

- **Linux (Ubuntu, Mint)**:
  - Partición EFI (300 MB recomendado)
  - Partición raíz (/) (mínimo 25 GB)
  - Partición /home (para datos de usuario, tamaño variable)
  - Partición de intercambio (swap) o archivo swap (en sistemas modernos con suficiente RAM)
  - Opcional: /boot separada para sistemas avanzados

**Estrategias recomendadas**:
- Para sistemas con SSD: No es necesario particionado excesivo
- Para sistemas con HDD: Considerar particiones más pequeñas para optimizar acceso
- En sistemas de arranque múltiple: Planificar particiones compatibles (evitar NTFS para particiones compartidas con Linux)

---

## Copia de seguridad de datos

**Pasos críticos**:
1. **Identificar datos críticos**: Documentos, configuraciones, perfiles de usuario
2. **Realizar copia de seguridad completa**: 
   - Windows: Usar Herramienta de copia de seguridad de Windows o software de terceros
   - Linux: Usar `rsync`, `timeshift` o `deja-dup`
3. **Verificar la integridad** de la copia de seguridad
4. **Almacenar en ubicación segura**: Preferiblemente en medio externo o nube

**Herramientas recomendadas**:
- **Windows**: File History, Backup and Restore, o herramientas de terceros como Macrium Reflect
- **Ubuntu**: Deja Dup (integrado), Timeshift para snapshots del sistema
- **Linux Mint**: Timeshift, herramienta de respaldo integrada

**Importante**: Nunca proceder con una instalación sin tener una copia de seguridad verificada de los datos importantes.

---

## Verificación de requisitos de hardware

**Pasos esenciales**:
1. **Verificar compatibilidad específica**:
   - **Windows 11**: Usar PC Health Check para verificar TPM 2.0, Secure Boot, procesador compatible
   - **Linux**: Verificar compatibilidad de hardware específico (gráficos, Wi-Fi)

2. **Comprobar espacio disponible**:
   - Windows 11: Mínimo 64 GB (recomendado 256 GB+ SSD)
   - Ubuntu: Mínimo 25 GB (recomendado 50 GB+)
   - Linux Mint: Mínimo 20 GB (recomendado 30 GB+)

3. **Verificar memoria RAM**:
   - Windows 11: Mínimo 4 GB (recomendado 8 GB+)
   - Ubuntu: Mínimo 4 GB (recomendado 8 GB+)
   - Linux Mint Cinnamon: Mínimo 2 GB (recomendado 4 GB+)
   - Linux Mint Xfce: Mínimo 1 GB (recomendado 2 GB+)

**Herramientas útiles**:
- Windows: `msinfo32`, Administrador de dispositivos
- Linux: `lshw`, `lscpu`, `free -h`, `df -h`
- Herramientas de fabricante para verificar compatibilidad específica

---

## Consideraciones de seguridad

**Antes de la instalación**:
- **Windows 11**: Asegurar que TPM 2.0 esté habilitado en BIOS/UEFI
- **Secure Boot**: Verificar que esté habilitado para mayor seguridad
- **Cifrado**: Planificar si se usará BitLocker (Windows) o cifrado completo del disco (Linux)
- **Actualizaciones**: Descargar actualizaciones críticas antes de la instalación si es posible

**Protección adicional**:
- Para Windows: Planificar uso de Windows Hello para autenticación sin contraseña
- Para Linux: Considerar AppArmor o SELinux según distribución
- En sistemas empresariales: Planificar integración con políticas de seguridad existentes

Como se menciona en la base de conocimientos:
> "Es importante que las actualizaciones criticas se instalen lo antes posible para evitar vulnerabilidades de la seguridad que puedan hacer que el equipo sea accesible."

---

## Configuración de red

**Consideraciones previas**:
- **Conexión a Internet**: Esencial para descargar actualizaciones e instalación de controladores
- **Credenciales de red**: Tener disponibles nombres de usuario y contraseñas para redes
- **Configuración de proxy**: Si se está en un entorno corporativo
- **Direcciones IP estáticas**: Si son necesarias para el entorno

**Especificaciones por sistema**:
- **Windows**: Verificar compatibilidad de controladores de red
- **Linux**: Algunas tarjetas Wi-Fi pueden requerir firmware adicional
- **Considerar**: Si se necesitará acceso a recursos de red durante la instalación

---

## Licencias y activación

**Windows**:
- Tener lista la clave de producto antes de la instalación
- Para Windows 11: Verificar si la licencia de Windows 10 es transferible
- Considerar que algunos OEM tienen licencias vinculadas a la placa base

**Linux (Ubuntu, Mint)**:
- No requieren licencias (software libre)
- Pero considerar licencias para software adicional que se instalará posteriormente
- Algunas ediciones empresariales de Ubuntu requieren suscripción para soporte

**General**:
- Para sistemas empresariales: Planificar integración con sistemas de gestión de licencias
- Tener disponibles credenciales para activación posterior si es necesario

---

## Consideraciones específicas por sistema operativo

### Windows 10/11
- **UEFI vs. BIOS**: Windows 11 requiere UEFI con Secure Boot
- **Controladores**: Descargar controladores específicos del fabricante antes de la instalación
- **Windows Subsystem for Linux**: Planificar si se habilitará durante la instalación
- **Microsoft Account**: Decidir si se usará cuenta Microsoft para el inicio de sesión

### Ubuntu
- **Edición**: Elegir entre GNOME, Kubuntu, Xubuntu, etc. según hardware
- **Third-party software**: Decidir si instalar codecs multimedia y drivers privativos
- **LVM**: Considerar si usar Logical Volume Manager para flexibilidad
- **RAID**: Planificar si se configurará RAID software para sistemas avanzados

### Linux Mint
- **Edición**: Elegir entre Cinnamon (más moderno), MATE (equilibrio) o Xfce (ligero)
- **Drivers privativos**: Mint incluye soporte para drivers no libres por defecto
- **Actualizaciones**: Configurar fuentes de actualización (principal, de seguridad, etc.)
- **Hardware antiguo**: Xfce es la mejor opción para sistemas con más de 10 años

### Consideraciones generales para todos
- **Dual-boot**: Planificar el orden de instalación (Windows primero, luego Linux)
- **Virtualización**: Si se instalará como máquina virtual, ajustar recursos asignados
- **Espacio adicional**: Reservar espacio para actualizaciones y aplicaciones futuras
- **Documentación**: Tener acceso a documentación específica del fabricante para hardware

---

## Conclusión

Las consideraciones previas a la instalación de un sistema operativo son fundamentales para garantizar una instalación exitosa y un sistema estable y seguro. Como se menciona en la base de conocimientos:
> "Antes de realizar una instalación nueva de Windows es necesario tener en cuenta las siguientes consideraciones: Que sistema de archivos se va a utilizar. Es posible escoger entre tres sistemas de archivos distintos para las particiones del disco."

Esta planificación previa debe adaptarse a los requisitos específicos de cada sistema operativo moderno, considerando las particularidades de Windows 10/11, Ubuntu, Linux Mint y otros sistemas. Una adecuada preparación previa evitará problemas durante y después de la instalación, garantizando un sistema funcional, seguro y optimizado para las necesidades del usuario.
