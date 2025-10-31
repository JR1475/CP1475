
# Ejercicio Práctico: Instalación Comparativa de SO Windows en VirtualBox

## 1. Introducción

**Objetivo:** Este ejercicio tiene como finalidad analizar, comparar y documentar el proceso de instalación de múltiples versiones del sistema operativo Windows (desde Windows 7 hasta Windows Server 2022) utilizando **VirtualBox 7.2.2**.

**Meta principal:** Identificar las similitudes y, sobre todo, las **diferencias clave** en el asistente de instalación (OOBE - Out-of-Box Experience), especialmente en lo relativo a la creación de usuarios, la configuración de la privacidad (telemetría) y los requisitos de hardware.

**Recursos:**
* **Software:** VirtualBox 7.2.2
* **Imágenes ISO:** Disponibles en la ruta de red: `\\cas-ge1600\share\isos`

---

## 2. Requisitos Globales de Instalación

Para **TODAS** las instalaciones, debes seguir estrictamente las siguientes directrices:

* **Software:** Usar **VirtualBox 7.2.2**.
* **Red:** Configurar la red de la VM en modo **NAT**.
* **Versión:** Instalar siempre la versión **PRO** (o **Enterprise/Standard** según la ISO). En Windows 7, usar **x64 PRO**.
* **Cuenta:** Crear una **cuenta local** (NO una cuenta de Microsoft).
    * Usuario: `curso`
    * Contraseña: `qwerty`
* **Privacidad (Telemetría):** Responder **NO** o **Desactivar** a TODAS las preguntas sobre envío de datos, diagnóstico, ubicación, publicidad personalizada, "Encontrar mi dispositivo", etc.
* **Software Adicional:** **No activar Cortana** y no instalar ningún software adicional durante el OOBE.
* **Preguntas de Seguridad** (Si aparecen en Win10/11):
    * 1. (Mascota): `mascota`
    * 2. (Ciudad): `ciudad`
    * 3. (Apodo): `apodo`
* **Guest Additions:** Instalar las **Guest Additions** de VirtualBox al finalizar CADA instalación.
* **CD/ISO:** Extraer la ISO de instalación después de que finalice la instalación (VirtualBox suele hacerlo automáticamente, pero verifícalo).

---

## 3. Creación de la Máquina Virtual (Pasos Comunes)

Repite este proceso para cada sistema operativo, cambiando el nombre y la versión.

1.  En VirtualBox, haz clic en **"Nueva"**.
2.  **Nombre:** Asigna un nombre descriptivo (ej. `Win11-Pro_TuNombre`).
3.  **ISO Image:** **¡IMPORTANTE!** *No selecciones la ISO aquí* (para evitar la instalación desatendida). Deja este campo vacío por ahora.
4.  **Tipo:** Microsoft Windows.
5.  **Versión:** Selecciona la versión más apropiada (ej. "Windows 10 (64-bit)", "Windows 2022", "Windows 7 (64-bit)").
6.  **Hardware:**
    * **Memoria base:** Mínimo 2048 MB (para 32 bits) o 4096 MB (para 64 bits y Win11/Server).
    * **Procesadores:** Mínimo 2 CPUs.
7.  **Disco Duro:**
    * "Crear un disco duro virtual ahora".
    * Tipo: **VDI**.
    * Almacenamiento: **Reservado dinámicamente**.
    * Tamaño: Mínimo 50 GB.
8.  **Configuración (POST-CREACIÓN):**
    * Selecciona la VM creada y ve a **"Configuración"**.
    * **Sistema > Placa base:**
        * Verifica que `Habilitar I/O APIC` esté activo.
        * **Para Windows 11/Server 2022:** Asegúrate de marcar `Habilitar EFI (sólo SO especiales)` y activa `Habilitar Secure Boot` y `TPM 2.0` en la pestaña Sistema.
    * **Almacenamiento:**
        * Selecciona la unidad óptica "Vacía".
        * En el panel derecho (Atributos), haz clic en el icono de CD y selecciona **"Seleccionar un archivo de disco..."**.
        * Navega a `\\cas-ge1600\share\isos` y elige la ISO correspondiente.
    * **Red:**
        * Adaptador 1: Habilitar adaptador de red.
        * Conectado a: **NAT**.
9.  Haz clic en **"Aceptar"** e inicia la máquina.

---

## 4. Guías de Instalación Específicas

### 4.1. Windows 7 2021 (x64 PRO)

1.  Inicia la VM. Pulsa una tecla si pide "Presione cualquier tecla para iniciar desde CD...".
2.  **Asistente Inicial:** Configura Idioma (Español), Formato de hora (Español - España) y Teclado (Español).
3.  Pulsa **"Instalar ahora"**.
4.  **Selección de SO:** Elige **Windows 7 Professional (x64)**.
5.  Acepta los términos de licencia.
6.  **Tipo de instalación:** Elige **"Personalizada (avanzada)"**.
7.  **Particionado:** Selecciona el "Disco 0 Espacio sin asignar". Haz clic en "Nuevo" -> "Aplicar" y "Aceptar" para crear las particiones de sistema. Selecciona la partición principal y "Siguiente".
8.  Espera a que Windows copie los archivos (la VM se reiniciará varias veces).
9.  **OOBE (Configuración):**
10. Nombre de usuario: `curso`. Nombre de equipo (ej. `PC-WIN7`).
11. Contraseña: `qwerty`. Repetir: `qwerty`. Pista: `abcde`.
12. Clave de producto: Omitir (desmarca "Activar automáticamente...").
13. Actualizaciones: **"Preguntarme más tarde"**.
14. Zona horaria: Verifica (Madrid).
15. Configuración de red: **"Red doméstica"**.
16. **Guest Additions:**
    * Una vez en el escritorio, ve al menú de la VM: **Dispositivos > Insertar imagen de CD de las Guest Additions...**
    * Ve a "Equipo", abre la unidad de CD (D:) y ejecuta `VBoxWindowsAdditions.exe`.
    * Sigue el asistente (Siguiente, Siguiente, Instalar). Acepta los controladores de Oracle/Oracle.
    * **Reiniciar** cuando finalice.

### 4.2. Windows 8.1 (activado)

1.  (Pasos 1-8 idénticos a Windows 7).
2.  **Selección de SO:** Elige **Windows 8.1 Pro**.
3.  **OOBE (Configuración Moderna):**
4.  Personalizar: Elige un color. Nombre de PC (ej. `PC-WIN8`).
5.  Configuración: **NO USAR CONFIGURACIÓN RÁPIDA**. Haz clic en **"Personalizar"**.
6.  Redes: Sí (para redes domésticas).
7.  En las siguientes pantallas (Actualizaciones, Enviar datos a Microsoft, etc.): **Desactiva TODAS las opciones**.
8.  **Inicio de sesión:**
9.  Insistirá en usar una cuenta de Microsoft. Busca y haz clic en **"Crear una cuenta nueva"**.
10. En la siguiente pantalla, busca y haz clic en **"Iniciar sesión sin una cuenta de Microsoft"**.
11. Usuario: `curso`. Contraseña: `qwerty`. Pista: `abcde`.
12. **Guest Additions:** (Proceso idéntico a Windows 7).

### 4.3. Windows 10 (32 bits) y 4.4. Windows 10 (64 bits)

(El proceso es idéntico para ambas, solo cambia la ISO seleccionada al crear la VM).

1.  (Pasos 1-8 idénticos a Windows 7).
2.  **Selección de SO:** Elige **Windows 10 Pro**.
3.  **OOBE (Cortana):**
4.  Región: España. Teclado: Español. Omitir segunda distribución.
5.  **Red (¡CRÍTICO!):** En la pantalla "Vamos a conectarte a una red", busca en la esquina inferior izquierda la opción **"No tengo Internet"** y haz clic en ella.
6.  En la siguiente pantalla, confirma haciendo clic en **"Continuar con la configuración limitada"**.
7.  Nombre de usuario: `curso`.
8.  Contraseña: `qwerty`.
9.  Confirmar contraseña: `qwerty`.
10. **Preguntas de seguridad:** Rellena las 3 preguntas con `perro`, `Madrid` y `profe`.
11. **Cortana:** Haz clic en **"Ahora no"**.
12. **Privacidad (Telemetría):** Aparecerán varias pantallas (Ubicación, Datos de diagnóstico, etc.). **Desactiva TODAS las opciones** y Acepta.
13. **Guest Additions:** (Proceso idéntico a Windows 7).

### 4.5. Windows 11 25H2

1.  (Pasos 1-7 idénticos a Windows 7).
2.  **Selección de SO:** Elige **Windows 11 Pro**.
3.  *Nota sobre Requisitos:* Si no activaste TPM y Secure Boot en la VM, la instalación fallará. Si la ISO no tiene los requisitos "parcheados", puede ser necesario un bypass manual (consulta al profesor si esto ocurre).
4.  **OOBE (Nuevo diseño):**
5.  Región: España. Teclado: Español. Omitir.
6.  **Red (¡CRÍTICO MÁXIMO!):** Windows 11 *obliga* a conectarse a Internet.
    * En la pantalla "Vamos a conectarte a una red", pulsa `Shift + F10` (o `Fn + Shift + F10`).
    * Se abrirá una consola (CMD).
    * Escribe exactamente: `OOBE\BYPASSNRO` y pulsa Enter.
    * La VM se reiniciará y volverá al OOBE.
7.  Repite Región/Teclado.
8.  Ahora, en la pantalla de red, aparecerá la opción **"No tengo Internet"**. Haz clic en ella.
9.  Confirma con **"Continuar con la configuración limitada"**.
10. Usuario: `curso`.
11. Contraseña: `qwerty`.
12. Confirmar: `qwerty`.
13. Preguntas de seguridad: `perro`, `Madrid`, `profe`.
14. **Privacidad (Telemetría):** Desactiva **TODAS** las opciones en las (múltiples) pantallas siguientes.
15. **Guest Additions:** (Proceso idéntico a Windows 7/10).

### 4.6. Win 10 IoT Ent, 4.7. Win 10 Ent, 4.8. Win 11 Ent

* El proceso de instalación de estas versiones **Enterprise (Ent)** y **IoT** es funcionalmente **idéntico** a sus contrapartes **Pro** (puntos 4.3, 4.4 y 4.5).
* **Diferencia clave:** Al seleccionar la edición, elige "Enterprise" o "IoT Enterprise".
* **Bypasses:** Aplica los **mismos bypasses** de red (`No tengo Internet` o `OOBE\BYPASSNRO`) para crear la cuenta local.
* **Telemetría:** Sé igual de estricto desactivando todo.

### 4.9. Windows Server 2022 Evaluación

1.  (Pasos 1-4 idénticos a Windows 7).
2.  **Selección de SO (¡CRÍTICO!):** Elige **Windows Server 2022 Standard Evaluation (Experiencia de escritorio)**. (¡NO elijas la versión "Core"!).
3.  (Pasos 5-8 idénticos a Windows 7).
4.  **OOBE (Simplificado):**
5.  El sistema no pide usuario, solo pide la contraseña para el superusuario: **Administrador**.
6.  Contraseña: `qwerty`. Confirmar: `qwerty`.
    * *Nota: Si `qwerty` no cumple los requisitos de complejidad, usa `Qwerty1234!` y anótalo.*
7.  Inicia sesión como `Administrador` con la contraseña establecida.
8.  **Creación de Usuario Local:**
9.  Se abrirá el "Administrador del servidor".
10. Ve a **Herramientas > Administración de equipos**.
11. Despliega **Usuarios y grupos locales > Usuarios**.
12. Clic derecho en el panel > **"Usuario nuevo..."**.
13. Usuario: `curso`. Contraseña: `qwerty`. Confirmar: `qwerty`.
14. **Desmarca** "El usuario debe cambiar la contraseña...".
15. **Marca** "La contraseña nunca caduca".
16. Haz clic en "Crear" y "Cerrar".
17. **Añadir a Administradores:** Doble clic sobre `curso` > Pestaña "Miembro de" > "Agregar..." > Escribe `Administradores` > "Comprobar nombres" > Aceptar.
18. Cierra sesión de "Administrador" e inicia sesión como `curso`.
19. **Guest Additions:** (Proceso idéntico a Windows 7).

### 4.10. MiniOS10 64 bits (No soportado)

* **Atención:** Esta es una versión modificada ("lite") de Windows, no oficial de Microsoft.
* **Proceso:** Inicia la instalación y **documenta lo que ves**.
* **Posibles escenarios:**
    * Puede ser una instalación "desatendida" (unattended) que no te pregunte nada.
    * Puede que el OOBE esté modificado o eliminado.
    * Puede que ya incluya un usuario por defecto.
* **Tu objetivo:** Intenta seguir los requisitos (cuenta `curso`/`qwerty`). Si no es posible, documenta por qué (ej. "Instalación automática, crea usuario 'Admin' sin contraseña").
* **Guest Additions:** Intenta instalarlas. Es posible que fallen si se han eliminado componentes de Windows necesarios. Documenta el resultado.

---

## 5. Tabla Comparativa (A rellenar por el alumno)

Completa la siguiente tabla basándote en tu experiencia durante las instalaciones.

| Sistema Operativo | Versión | Arq. (x86/x64) | Tiempo Aprox. | Diferencias Clave en OOBE | ¿Cuenta Local Fácil? (Sí/No/Bypass) | ¿Bypass Necesario? (Red/TPM) | Problemas (GA, drivers, etc.) |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Windows 7 | 2021 PRO | x64 | | | | | |
| Windows 8.1 | Activado | x64 | | | | | |
| Windows 10 | (Pro) | 32 bits (x86) | | | | | |
| Windows 10 | (Pro) | 64 bits (x64) | | | | | |
| Windows 11 | 25H2 (Pro) | x64 | | | | | |
| Windows 10 | IoT Ent US | x64 | | | | | |
| Windows 10 | Enterprise | x64 | | | | | |
| Windows 11 | Enterprise | x64 | | | | | |
| Windows Server | 2022 Eval | x64 | | | | | |
| MiniOS10 | (N/A) | x64 | | | | | |

---

## 6. Conclusión (Reflexión del Alumno)

Responde a las siguientes preguntas para finalizar la práctica:

1.  ¿Qué pasos del asistente de instalación (particionado, copia de archivos) son prácticamente idénticos en todos los sistemas desde Windows 7 hasta Server 2022?
2.  ¿Cuál es la **principal diferencia** que has encontrado entre el OOBE de Windows 7/8.1 y el de Windows 10/11?
3.  ¿Por qué crees que Microsoft insiste tanto en el uso de una cuenta online y dificulta la creación de cuentas locales en las versiones más nuevas?
4.  ¿Qué te ha parecido la instalación de Windows Server 2022? ¿En qué se diferencia la gestión de usuarios respecto a un Windows 10/11?
5.  ¿Qué ha ocurrido con la instalación de MiniOS10? ¿Cumple con el proceso estándar de Windows?
6.  ¿Tuviste algún problema al instalar las Guest Additions en alguno de los sistemas? ¿Por qué crees que son necesarias?
```
