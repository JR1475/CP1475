/*
 * ═══════════════════════════════════════════════════════════════
 *            SEMÁFORO CON ARDUINO MEGA - VERSIÓN AVANZADA
 * ═══════════════════════════════════════════════════════════════
 * Esta versión usa funciones para código más organizado
 */

// Definición de pines
#define LED_ROJO     13
#define LED_AMARILLO 12
#define LED_VERDE    11

// Tiempos en milisegundos
#define TIEMPO_ROJO     5000
#define TIEMPO_VERDE    5000
#define TIEMPO_AMARILLO 2000
#define PARPADEOS_VERDE 5      // Número de parpadeos antes del amarillo


void setup() {
  // Configurar pines como salida
  pinMode(LED_ROJO, OUTPUT);
  pinMode(LED_AMARILLO, OUTPUT);
  pinMode(LED_VERDE, OUTPUT);
  
  // Apagar todos los LEDs
  apagarTodosLosLEDs();
  
  // Iniciar comunicación serial
  Serial.begin(9600);
  Serial.println("=== SEMÁFORO AVANZADO INICIADO ===");
}


void loop() {
  // Secuencia del semáforo
  faseRoja();
  faseVerde();
  parpadeoVerde();  // El verde parpadea antes de cambiar
  faseAmarilla();
}


// ═══════════════════════════════════════════════════════════════
// FUNCIONES PERSONALIZADAS
// ═══════════════════════════════════════════════════════════════

// Función: Fase Roja
void faseRoja() {
  Serial.println("🔴 FASE ROJA - ALTO");
  apagarTodosLosLEDs();
  digitalWrite(LED_ROJO, HIGH);
  delay(TIEMPO_ROJO);
}

// Función: Fase Verde
void faseVerde() {
  Serial.println("🟢 FASE VERDE - AVANCE");
  apagarTodosLosLEDs();
  digitalWrite(LED_VERDE, HIGH);
  delay(TIEMPO_VERDE);
}

// Función: Parpadeo Verde (advertencia de cambio)
void parpadeoVerde() {
  Serial.println("🟢 VERDE PARPADEANDO...");
  
  for (int i = 0; i < PARPADEOS_VERDE; i++) {
    digitalWrite(LED_VERDE, LOW);   // Apagar
    delay(200);                      // Esperar 200ms
    digitalWrite(LED_VERDE, HIGH);  // Encender
    delay(200);                      // Esperar 200ms
  }
  
  digitalWrite(LED_VERDE, LOW);  // Dejar apagado al final
}

// Función: Fase Amarilla
void faseAmarilla() {
  Serial.println("🟡 FASE AMARILLA - PRECAUCIÓN");
  apagarTodosLosLEDs();
  digitalWrite(LED_AMARILLO, HIGH);
  delay(TIEMPO_AMARILLO);
}

// Función auxiliar: Apagar todos los LEDs
void apagarTodosLosLEDs() {
  digitalWrite(LED_ROJO, LOW);
  digitalWrite(LED_AMARILLO, LOW);
  digitalWrite(LED_VERDE, LOW);
}
