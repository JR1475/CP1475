# Aplicaciones Interactivas de Memoria

Este proyecto contiene dos aplicaciones web educativas y autocontenidas, diseñadas para explicar conceptos fundamentales de la gestión de memoria en sistemas operativos de una manera visual e interactiva.

Ambas aplicaciones están construidas únicamente con HTML, CSS y JavaScript, por lo que no requieren ninguna instalación o servidor web para funcionar.

## Cómo Ejecutar las Aplicaciones

Sigue estos sencillos pasos para acceder a las aplicaciones:

1.  **Descargar el Archivo**: Asegúrate de haber descargado el archivo comprimido llamado `mem-artifacts.7z`.

2.  **Descomprimir**: Utiliza una herramienta compatible con el formato `.7z` (como [7-Zip](https://www.7-zip.org/), WinRAR, Keka, etc.) para extraer el contenido del archivo. Esto creará una carpeta con el siguiente contenido.

3.  **Navegar a la Aplicación Deseada**: Dentro de la carpeta descomprimida, encontrarás dos directorios principales:
    *   `mem-virt`
    *   `mem-frag`

4.  **Abrir en el Navegador**: Para ejecutar cualquiera de las aplicaciones, simplemente haz doble clic en el archivo `index.html` correspondiente o ábrelo con tu navegador web preferido (Chrome, Firefox, Edge, etc.).

---

## Descripción de las Aplicaciones

### 1. Memoria Virtual (`mem-virt`)

Esta aplicación guía al usuario paso a paso a través de los conceptos de memoria virtual, tabla de páginas, memoria física, paginación y fallos de página.

**Conceptos Clave:**
*   Memoria Virtual vs. Memoria Física.
*   Tabla de Páginas como mecanismo de traducción.
*   Acceso a memoria exitoso.
*   Fallos de Página (Page Fault) y su manejo.
*   Paginación (Paging In) desde el disco.

**Acceso:**
Abre el archivo `mem-virt/index.html`.

### 2. Fragmentación (`mem-frag`)

Usando una analogía de un aparcamiento, esta aplicación explica de forma muy visual la diferencia entre la fragmentación interna y la externa, y cómo se puede solucionar esta última.

**Conceptos Clave:**
*   **Fragmentación Interna**: Espacio desperdiciado *dentro* de un bloque de memoria asignado (una moto en una plaza de coche).
*   **Fragmentación Externa**: Espacio total libre suficiente pero no contiguo, impidiendo asignar un proceso grande (un autobús que no cabe en los huecos libres).
*   **Compactación**: El proceso de reorganizar la memoria para eliminar la fragmentación externa.

**Acceso:**
Abre el archivo `mem-frag/index.html`.

---

## Estructura del Proyecto

Una vez descomprimido `mem-artifacts.7z`, la estructura de archivos será la siguiente:

```plaintext
mem-artifacts/
├── mem-virt/
│   ├── index.html
│   ├── style.css
│   └── script.js
└── mem-frag/
    ├── index.html
    ├── style.css
    └── script.js
