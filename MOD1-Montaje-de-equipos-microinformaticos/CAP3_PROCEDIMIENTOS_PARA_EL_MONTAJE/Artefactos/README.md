# PC Builder Simulator

**Versión actual**: Prototipo  
**Plataforma**: Web (HTML/CSS/JS)  
**Estado**: En desarrollo

---

## 📋 Descripción

**PC Builder Simulator** es una aplicación interactiva que guía al usuario paso a paso en el proceso de ensamblaje de un ordenador, con enfoque pedagógico, visual y práctico. Actualmente en versión **prototipo**, la aplicación permite simular el montaje de componentes como CPU, RAM, GPU, fuente de alimentación, discos duros y más, con una interfaz intuitiva y educativa.

---

## ✅ Características principales

- **Claridad pedagógica**: explicar cada paso de forma comprensible.
- **Interactividad**: permitir al usuario practicar virtualmente.
- **Accesibilidad**: usable en distintos dispositivos (móvil, tablet, escritorio).
- **Fidelidad técnica**: respetar el orden real y las buenas prácticas del montaje físico.

---

## 🖥️ Propuesta de Diseño: **"PC Builder Simulator"**

### 1. **Arquitectura General**
- **Plataforma**: Aplicación web progresiva (PWA)
- **Interfaz 3D interactiva** (usando Three.js, Babylon.js o Unity WebGL) para simular la caja del ordenador y sus componentes.
- **Modo tutorial guiado** + **modo libre** (para practicar sin instrucciones).

---

### 2. **Estructura de Contenido (basada en tu árbol)**

Cada carpeta se convierte en un **módulo interactivo** dentro de la app:

#### 📌 **3.3.1 Secuencia de montaje de un ordenador**
- **Objetivo**: Introducir el flujo lógico del ensamblaje.
- **Contenido**:
  - Infografía animada del orden recomendado.
  - Checklist interactiva (ej.: “Antes de empezar: descarga estática, herramientas, etc.”).
  - Vídeo corto o narración de voz opcional.

#### 📌 **3.3.2 Montaje de la placa base en la caja o chasis**
- **Interacción**:
  - Arrastrar la placa base al chasis.
  - Colocar los *standoffs* (espaciadores) en los puntos correctos.
  - Atornillar con clics precisos (feedback visual si se equivoca).
- **Ayuda contextual**: tooltips con advertencias (ej.: “No aprietes demasiado”).

#### 📌 **3.3.3 Ensamblado del procesador y elementos de refrigeración**
- **Simulación detallada**:
  - Abrir la palanca del socket.
  - Colocar el CPU (solo en orientación correcta).
  - Aplicar pasta térmica (opcional: modo realista vs. automático).
  - Montar el disipador o cooler (con distintos tipos: stock, torre, AIO).

#### 📌 **3.3.4 Fijación de los módulos de memoria RAM**
- **Interacción**:
  - Seleccionar ranuras (dual channel sugerido).
  - Insertar módulos con ángulo correcto → clic para encajar.
  - Sonido/animación de “click” al bloquearse.

#### 📌 **3.3.5 Fijación y conexión de las unidades de disco**
- **Tipos soportados**: SSD 2.5", HDD 3.5", M.2 NVMe.
- **Acciones**:
  - Montar en bahías o soportes.
  - Conectar SATA + alimentación (o solo PCIe para M.2).
  - Validación automática de conexiones.

#### 📌 **3.3.6 Fijación y conexión del resto de adaptadores**
- Tarjetas gráficas, Wi-Fi, captura, etc.
- Inserción en ranuras PCIe.
- Conexión de cables de alimentación (6/8-pin).
- Gestión de espacio y clearance.

#### 📌 **3.3.7 Sistemas de refrigeración líquida**
- Opción avanzada.
- Montaje de bomba/reservorio, radiador, ventiladores.
- Rutas de mangueras personalizables (con advertencias de torsión excesiva).
- Simulación de fugas si se monta mal (modo “error” educativo).

#### 📌 **3.3.8 Instalación de elementos de modding**
- RGB, paneles acrílicos, cableado personalizado.
- Modo creativo: colores, rutas de cables, iluminación sincronizada.
- Galería para compartir diseños.

---

### 3. **Características Adicionales**

- ✅ **Sistema de logros**: desbloquear badges al completar pasos sin errores.
- ✅ **Modo examen**: evaluación final donde el usuario ensambla todo en tiempo limitado.
- ✅ **Soporte multilenguaje**.
- ✅ **Compatibilidad de componentes**: la app avisa si intentas montar un CPU incompatible con la placa.
- ✅ **Exportar lista de materiales**: genera una lista de compra real con enlaces afiliados (opcional).

---

## 🚀 Cómo ejecutar la aplicación

### Requisitos
- Navegador web moderno (recomendado: Chrome, Firefox, Edge).

### Instrucciones

1. Descomprime el archivo `pc-builder-simulator.7z`.
2. Navega a la carpeta `public`.
3. Abre `index.html` con tu navegador (preferentemente Chrome).

---

## 📁 Estructura de archivos

```
pc-builder-simulator/
├── public/
│   ├── index.html
│   └── images/ (imágenes de componentes)
├── src/
│   └── main.js
└── README.md
```

---

## 🧩 Funcionalidades actuales

- ✅ Visualización de componentes reales (imágenes).
- ✅ Interacción por arrastrar y soltar.
- ✅ Paso a paso con validación de acciones.
- ✅ Tema oscuro.
- ✅ Pasos: Introducción, CPU, RAM, GPU, Fuente, Almacenamiento, Panel frontal, Alimentación, y más.

---

## 🚧 Futuras mejoras

- [ ] Interfaz 3D con Three.js.
- [ ] Modo examen.
- [ ] Soporte multilenguaje.
- [ ] Compatibilidad de componentes.
- [ ] Exportar lista de compra.

---

## 📝 Notas

- Esta es una **versión de prototipo**.
- La aplicación está diseñada para **uso educativo**.
- El proyecto está **en desarrollo activo**.

---

## 📞 Contacto

ricardo.instructor.formacion@gmail.com

---

**© 2025 PC Builder Simulator** — Proyecto educativo en desarrollo.
