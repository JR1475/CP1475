

#Otros repos
https://learn.microsoft.com/es-es/powershell/scripting/gallery/overview?view=powershell-7.5
https://github.com/Microsoft

# Repositorio de Scripts de PowerShell

Este repositorio contiene una colección de scripts de PowerShell (`.ps1`) diseñados para automatizar tareas, simplificar la administración del sistema y otras utilidades.

## ⚠️ Importante: Política de Ejecución de PowerShell

Por razones de seguridad, PowerShell tiene una "Política de Ejecución" (`Execution Policy`) que, por defecto, impide la ejecución de scripts para proteger tu sistema de código malicioso.

**¿Por qué es necesario un comando especial?**
Cuando intentas ejecutar un script por primera vez, es probable que recibas un error similar a este:

```
.\nombre_del_script.ps1 : No se pueden cargar los archivos C:\ruta\al\script\nombre_del_script.ps1
porque la ejecución de scripts está deshabilitada en este sistema.
Para obtener más información, vea about_Execution_Policies en https://go.microsoft.com/fwlink/?LinkID=135170.
```

El comando que se detalla a continuación modifica temporalmente esta política para tu sesión actual, permitiéndote ejecutar scripts locales de forma segura.

---

## 🚀 Cómo Ejecutar los Scripts de este Repositorio

Sigue estos pasos para descargar y ejecutar cualquiera de los scripts de este repositorio en tu máquina con Windows.

### Paso 1: Descargar los Scripts

Tienes dos opciones principales para obtener los archivos:

1.  **Clonar el repositorio (Recomendado si usas Git):**
    Abre una terminal (Git Bash, PowerShell, CMD) y ejecuta:
    ```bash
    git clone https://github.com/TU_USUARIO/TU_REPOSITORIO.git
    ```
    Reemplaza la URL con la de tu repositorio.

2.  **Descargar como ZIP:**
    *   Ve a la página principal de este repositorio en GitHub.
    *   Haz clic en el botón verde `< > Code`.
    *   Selecciona **Download ZIP**.
    *   Descomprime el archivo descargado en una carpeta de tu elección.

### Paso 2: Abrir PowerShell

Abre una terminal de **PowerShell**. Es recomendable que lo hagas **como Administrador** para evitar problemas de permisos, especialmente si los scripts interactúan con el sistema.

### Paso 3: Navegar al Directorio del Script

Usa el comando `cd` (Change Directory) para moverte a la carpeta donde descargaste o clonaste los scripts.

Por ejemplo, si los descargaste en el Escritorio:
```powershell
cd C:\Users\TuUsuario\Desktop\TU_REPOSITORIO
```

### Paso 4: Permitir la Ejecución de Scripts (El Comando Clave)

Este es el paso más importante. Ejecuta el siguiente comando en tu terminal de PowerShell. Este comando **solo afecta a la sesión actual** y es la opción más segura.

```powershell
Set-ExecutionPolicy RemoteSigned -Scope Process
```

**Desglose del comando:**
*   `Set-ExecutionPolicy`: Es el cmdlet (comando) para cambiar la política de ejecución.
*   `RemoteSigned`: Es una política de seguridad equilibrada. Permite ejecutar scripts que creaste en tu máquina local sin requerir firma digital. Para los scripts descargados de internet (como los de este repositorio), requiere que estén firmados por un editor de confianza. Al establecer esta política, PowerShell te pedirá confirmación para ejecutar scripts de origen remoto, lo cual es una buena práctica.
*   `-Scope Process`: Es crucial. Esto hace que el cambio de política sea **temporal y solo válido para la ventana de PowerShell que tienes abierta**. Cuando cierres la ventana, todo volverá a la normalidad. Esto es mucho más seguro que cambiar la política para todo el sistema (`LocalMachine`).

### Paso 5: Ejecutar el Script

Ahora que ya estás en el directorio correcto y has permitido la ejecución, puedes lanzar el script. Usa `.\` antes del nombre del archivo para indicar que se encuentra en el directorio actual.

```powershell
.\nombre_del_script.ps1
```

Reemplaza `nombre_del_script.ps1` con el nombre real del archivo que quieres ejecutar.

---

## 📝 Ejemplo Práctico

Imagina que quieres ejecutar un script llamado `backup_documentos.ps1`.

1.  **Descargas** el repositorio y lo descomprimes en `C:\Scripts`.
2.  **Abres PowerShell como Administrador**.
3.  **Navegas** a la carpeta:
    ```powershell
    cd C:\Scripts
    ```
4.  **Estableces** la política de ejecución para la sesión:
    ```powershell
    Set-ExecutionPolicy RemoteSigned -Scope Process
    ```
5.  **Ejecutas** el script:
    ```powershell
    .\backup_documentos.ps1
    ```

¡Y listo! El script comenzará a ejecutarse.

---

## 🔐 Consideraciones de Seguridad

Ejecutar scripts descargados de Internet siempre conlleva un riesgo. Aunque este repositorio se esfuerza por ofrecer código seguro, **es una buena práctica revisar el contenido del archivo `.ps1` en un editor de código (como Visual Studio Code) antes de ejecutarlo** para asegurarte de que entiendes lo que hace y que no contiene nada malicioso.
