# Evolución técnica de las GUI de Windows
## (Windows Classic → Luna → Aero → Metro → Fluent → Windows 11)

&gt; Cheat-sheet en Markdown listo para copiar-pegar en documentación, blogs o apuntes.

---

## 1. Windows Classic (3.11 → 2000)
**Motor gráfico**  
- GDI (Graphics Device Interface) 16 bit → 32 bit  
- No hay compositor; cada ventana pinta directamente en el framebuffer.  

**Elementos clave**  
- Diseño “recto”: biseles planos, 2 px de borde.  
- Colores fijos del sistema (`COLOR_WINDOW`, `COLOR_BTNFACE`).  
- Métricas fijas: `SM_CXFRAME = 4 px`, `SM_CYCAPTION = 18 px`.  

**Archivos de recursos**  
- `.msstyles` aún no existe; look&feel embebido en `user32.dll` / `system.ini`.  

---

## 2. Windows XP “Luna” (2001)
**Motor**  
- GDI+ (gradientes, alpha de 8 bit).  
- Theming API (`uxtheme.dll`) + `.msstyles` por primera vez.  

**Luna style (luna.msstyles)**  
- Esquinas redondeadas `RoundRect(cx=6, cy=6)`.  
- Gradientes verticales en title-bar: `GradientFill()` con `GRADIENT_FILL_RECT_V`.  
- Bitmap de 4 estados (`normal`, `hot`, `pressed`, `disabled`) para cada botón.  
- Metricas ajustables vía `SM_CXPADDEDBORDER`, `iBorderWidth` en registro.  

**Colores**  
- Az Luna: `#3F8CCF` → `#7EB0DF` (gradiente 2 paradas).  

---

## 3. Windows Vista/7 “Aero” (2006-2012)
**Compositor DWM**  
- Escena 3D (DirectX 9) → cada ventana es una textura.  
- Pixel-shader `Blur.fx` (Gauss σ ≈ 5 px).  

**Aero Glass**  
- `DwmExtendFrameIntoClientArea()` → margen -1 para “glass-sheet”.  
- `DwmEnableBlurBehindWindow()` para regiones arbitrarias.  
- Reflexión dinámica: textura `AeroReflection.png` parallax-scroll.  

**APIs públicas**  
- `DwmSetWindowAttribute(hWnd, DWMWA_TRANSITIONS_FORCEDISABLED, …)`.  
- `DwmGetColorizationColor()` → ARGB post-mezcla.  

**Temas visuales**  
- Aero.msstyles → 8 estados por control, 32-bit PNG con alpha.  
- Ventana mínima 104×32 px (por redondeo 8 px y sombra de 12 px).  

---

## 4. Windows 8/8.1 “Metro” (MDL)
**Compositor**  
- DWM v2, pero efectos desactivados → ventanas opacas.  
- XAML + Direct2D para Apps (WinRT).  

**Principios Metro**  
- Tipografía: Segoe UI 20 px, leading 28 px.  
- Swipe-from-edge: 20 px “edge-zone” capturado por `WM_POINTERDOWN`.  
- Tiles: 150×150 px (escala 1×), margen 10 px, color acento en `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent`.  

**Estilos**  
- Flat: sin gradientes, sombras 0 px.  
- Borders: 1 px `RGB(255,255,255,0.15)` sobre fondo.  

---

## 5. Windows 10 “Fluent” (2017-2021)
**Capa de materiales**  
- Acrylic:  
  – Fondo → `GaussianBlur(σ = 30 px) + Tint(Color, 60 %) + NoiseOverlay(α = 2 %)`  
  – API: `Windows.UI.Composition` → `Compositor.CreateHostBackdropBrush()`.  
- Reveal: light-spot sigue puntero vía `CompositionLight`.  

**APIs UWP/Win32**  
- `SetWindowCompositionAttribute()` (undoc) → `ACCENT_ENABLE_BLURBEHIND`.  
- `BackdropMaterial::ApplyToSurface()` en WinAppSDK 1.2+.  

**Esquinas**  
- 4 px radio para botones (`ControlCornerRadius=4`).  

---

## 6. Windows 11 (2021-∞)
**Motor**  
- DWM v3 → DirectX 12, HDR10, variable refresh.  

**Materiales nativos**  
| Material   | Fórmula simplificada (HLSL)                                                                 |
|------------|---------------------------------------------------------------------------------------------|
| Mica       | `lerp(BlurredDesktop, TintColor, 0.8)` + `Saturation *= 1.15`                              |
| MicaAlt    | Mica + overlay gris 5 %                                                                    |
| Acrylic    | `lerp(BlurredBackdrop, TintColor, 0.6)` + `NoiseTex * 0.02`                                |
| Smoke      | `lerp(Content, #000000, 0.35)` cuando `ModalDialog=true`                                   |

**Geometría**  
- Esquinas: radio 8 px para ventanas top-level, 4 px para controles.  
- Sombra: 2 layers (48 px blur @ 5 % + 16 px blur @ 15 %).  

**APIs recomendadas**  
```cpp
// Win32 C++
DWM_SYSTEMBACKDROP_TYPE backdrop = DWMSBT_MAINWINDOW;
DwmSetWindowAttribute(hwnd, DWMWA_SYSTEMBACKDROP_TYPE, &backdrop, sizeof(backdrop));

// C# WinUI 3
&lt;Window
    systemBackdrop="{StaticResource MicaBackdrop}"
    CornerRadius="8,8,8,8"/&gt;
