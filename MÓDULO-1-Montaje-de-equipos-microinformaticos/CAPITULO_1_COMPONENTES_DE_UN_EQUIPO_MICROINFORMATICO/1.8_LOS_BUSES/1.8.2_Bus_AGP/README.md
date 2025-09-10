# Resumen generado por IA

Este documento contiene un resumen del punto [1.8.2], generado con inteligencia artificial.

# 1.8.2 Bus AGP

## Introducción

El bus AGP (Accelerated Graphics Port - Puerto de Gráficos Acelerado) fue una interfaz de expansión dedicada exclusivamente para tarjetas gráficas, desarrollada por Intel en 1997 como evolución de la especificación PCI 2.1. Como señala el documento original: "Esta ranura solo está dedicada a conectar tarjetas de vídeo. AGP es Accelerated Graphics Port (puerto de gráficos acelerado). Es una evolución de la especificación PCI 2.1 desarrollada por Intel® provocada por las necesidades en el aspecto gráfico."

## Características Principales

- **Dedicación exclusiva:** Diseñado específicamente para tarjetas gráficas (a diferencia del bus PCI general)
- **Color distintivo:** Suele ser de color marrón, mientras que los slots PCI son generalmente blancos
- **Ubicación:** Se encuentra más lejos del borde de la placa base y más cerca del microprocesador que los slots PCI
- **Versiones:** AGP 1x, 2x, 4x y 8x, con velocidades que iban desde 266 MB/s hasta 2.1 GB/s
- **Ancho de banda:** Hasta 3.5 veces superior al PCI estándar en su versión 8x

## Evolución y Estado Actual

**Situación histórica:**
- Dominó el mercado de tarjetas gráficas desde finales de los 90 hasta mediados de los 2000
- Permitió avances significativos en el rendimiento gráfico para aplicaciones 3D y juegos

**Obsolescencia:**
- **A partir de 2006:** Con la salida del puerto PCI Express, "el puerto AGP ha pasado a un segundo plano tendiendo a desaparecer en las placas actuales" (Documento original)
- **Razones del reemplazo:**
  - Mayor ancho de banda (PCIe proporciona "una velocidad superior a 4 GB por segundo en las transferencias de datos en ambas direcciones")
  - Arquitectura punto a punto vs. bus compartido
  - Mayor flexibilidad (PCIe sirve para múltiples tipos de dispositivos)
  - Mejor escalabilidad

## Conclusión

El bus AGP fue un estándar importante en su época que permitió avances significativos en el rendimiento gráfico, pero actualmente es completamente obsoleto. Como señala el documento: "Las tarjetas de vídeo más recientes son las PCI Express (PCIe) aunque también se pueden encontrar en el mercado tarjetas AGP o PCI." Para sistemas nuevos o actualizaciones, siempre se recomienda elegir tecnología PCIe, ya que "el ancho de banda es 3.5 veces superior a AGP8X y PCI." Hoy en día, el AGP solo tiene interés histórico o para mantenimiento de sistemas antiguos.
