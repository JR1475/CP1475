Instalar Windows 10 en un disco **VHD (Virtual Hard Disk)** es una técnica avanzada que permite arrancar Windows directamente desde un archivo de disco virtual, sin necesidad de particionar físicamente el disco duro. Esto es útil para pruebas, entornos de desarrollo o tener múltiples sistemas operativos en el mismo equipo.

A continuación, te explico paso a paso cómo hacerlo **desde cero**, asumiendo que ya tienes una instalación funcional de Windows (por ejemplo, Windows 10 o 11) en tu PC.

---

### 📌 Requisitos previos

1. **Una imagen ISO de Windows 10** (descargada desde Microsoft).
2. **Acceso de administrador** en tu sistema actual.
3. **Al menos 25–30 GB de espacio libre** en una unidad NTFS.
4. **BIOS/UEFI en modo compatible** (UEFI es recomendado; asegúrate de que el arranque sea compatible con el modo en que está instalado tu sistema actual).
5. **Habilitar arranque desde VHD**: solo funciona en Windows 7/8/10/11 Pro, Enterprise o Education (no en Home).

> ⚠️ **Importante**: Windows 10 Home **no soporta arranque nativo desde VHD**. Si usas Home, puedes crear y usar VHDs dentro del sistema (como discos virtuales), pero **no podrás arrancar desde ellos**.

---

## ✅ Paso a paso: Instalar y arrancar Windows 10 desde un VHD

### **Paso 1: Crear el archivo VHD**

1. Abre **Símbolo del sistema como administrador**.
2. Ejecuta `diskpart`:
   ```cmd
   diskpart
   ```
3. Dentro de DiskPart, ejecuta los siguientes comandos (ajusta la ruta y tamaño según necesites):

   ```diskpart
   create vdisk file="C:\Windows10.vhd" type=expandable maximum=30720
   ```
   > Esto crea un VHD expandible de 30 GB en `C:\`. Puedes usar `.vhdx` (más moderno) si prefieres:
   > ```diskpart
   > create vdisk file="C:\Windows10.vhdx" type=expandable maximum=30720
   > ```

4. Selecciona y monta el VHD:
   ```diskpart
   select vdisk file="C:\Windows10.vhdx"
   attach vdisk
   ```

5. Crea una partición y formatea:
   ```diskpart
   create partition primary
   format quick fs=ntfs label="Windows10VHD"
   active
   assign letter=Z
   exit
   ```
   > Se asigna la letra `Z:` temporalmente al VHD. Puedes usar otra letra si `Z` está ocupada.

---

### **Paso 2: Instalar Windows 10 en el VHD**

1. **Monta la ISO de Windows 10** (haz doble clic en el archivo `.iso` o usa una herramienta como Rufus o PowerShell).
   - Supongamos que la unidad montada es `D:\`.

2. Usa **DISM** (Deployment Image Servicing and Management) para aplicar la imagen de Windows al VHD:

   ```cmd
   dism /apply-image /imagefile:D:\sources\install.wim /index:1 /applydir:Z:\
   ```
   > - `/index:1` suele ser "Windows 10 Home". Usa `/index:6` para "Windows 10 Pro", por ejemplo.  
   > - Para ver los índices disponibles:  
   >   ```cmd
   >   dism /get-imageinfo /imagefile:D:\sources\install.wim
   >   ```

3. **Configurar el arranque** en el VHD:

   ```cmd
   bcdboot Z:\Windows /s Z: /f UEFI
   ```
   > Si tu sistema usa **Legacy BIOS** (no UEFI), usa:
   > ```cmd
   > bcdboot Z:\Windows /s Z: /f BIOS
   > ```

---

### **Paso 3: Agregar el VHD al menú de arranque**

1. Desmonta el VHD:
   ```cmd
   diskpart
   select vdisk file="C:\Windows10.vhdx"
   detach vdisk
   exit
   ```

2. Agrega una entrada de arranque para el VHD:
   ```cmd
   bcdedit /copy {current} /d "Windows 10 VHD"
   ```
   > Esto devuelve un identificador como `{xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx}`. **Copia ese ID**.

3. Configura esa entrada para que use el VHD:
   ```cmd
   bcdedit /set {ID_COPIADO} device vhd=[C:]\Windows10.vhdx
   bcdedit /set {ID_COPIADO} osdevice vhd=[C:]\Windows10.vhdx
   bcdedit /set {ID_COPIADO} detecthal on
   ```

   > Asegúrate de usar la ruta correcta. Si el VHD está en `C:\`, usa `[C:]\Windows10.vhdx`.

---

### **Paso 4: Reiniciar y probar**

1. Reinicia tu equipo.
2. En el menú de arranque de Windows (aparece automáticamente si hay múltiples entradas), selecciona **"Windows 10 VHD"**.
3. La primera vez, Windows completará la instalación (configuración inicial, cuenta, etc.).

---

## 🔧 Consejos útiles

- **Rendimiento**: El VHD debe estar en una unidad SSD para mejor rendimiento.
- **Actualizaciones**: Windows en VHD recibe actualizaciones normalmente.
- **Copia de seguridad**: Copiar el archivo `.vhdx` es suficiente para respaldar todo el sistema.
- **Eliminación**: Para quitarlo, elimina la entrada con `bcdedit /delete {ID}` y borra el archivo `.vhdx`.

---

## ❌ Limitaciones

- No compatible con Windows 10/11 **Home** para arranque nativo.
- Algunos controladores o software de bajo nivel pueden no funcionar correctamente.
- No recomendado para sistemas de producción críticos.


