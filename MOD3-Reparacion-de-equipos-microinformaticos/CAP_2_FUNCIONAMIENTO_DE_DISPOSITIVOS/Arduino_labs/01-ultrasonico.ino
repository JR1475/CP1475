/* 
 * PROYECTO: ALARMA DE PROXIMIDAD STAR WARS
 * PLACA: Arduino Mega 2560
 * SENSOR: HC-SR04
 */

// 1. DEFINICIÓN DE PINES
const int pinTrig = 9;
const int pinEcho = 10;
const int pinBuzzer = 8;

// Variables para cálculos
long duracion;
int distancia;

// 2. DEFINICIÓN DE NOTAS MUSICALES (Frecuencias en Hz)
#define NOTE_A3  220
#define NOTE_AS3 233
#define NOTE_B3  247
#define NOTE_C4  261
#define NOTE_CS4 277
#define NOTE_D4  294
#define NOTE_DS4 311
#define NOTE_E4  330
#define NOTE_F4  349
#define NOTE_FS4 370
#define NOTE_G4  392
#define NOTE_GS4 415
#define NOTE_A4  440
#define NOTE_AS4 466
#define NOTE_B4  494
#define NOTE_C5  523
#define NOTE_CS5 554
#define NOTE_D5  587
#define NOTE_DS5 622
#define NOTE_E5  659
#define NOTE_F5  698
#define NOTE_FS5 740
#define NOTE_G5  784
#define NOTE_GS5 831
#define NOTE_A5  880

// 3. CONFIGURACIÓN INICIAL
void setup() {
  pinMode(pinTrig, OUTPUT); // El pin Trig emite sonido
  pinMode(pinEcho, INPUT);  // El pin Echo escucha
  pinMode(pinBuzzer, OUTPUT);
  
  Serial.begin(9600); // Para ver la distancia en el monitor serie
  Serial.println("=== SISTEMA INICIADO: ACERQUE SU MANO ===");
}

// 4. BUCLE PRINCIPAL
void loop() {
  // --- A. LIMPIAR EL SENSOR ---
  digitalWrite(pinTrig, LOW);
  delayMicroseconds(2);
  
  // --- B. EMITIR PULSO (DISPARO) ---
  digitalWrite(pinTrig, HIGH);
  delayMicroseconds(10);
  digitalWrite(pinTrig, LOW);
  
  // --- C. LEER EL TIEMPO DE REBOTE ---
  duracion = pulseIn(pinEcho, HIGH);
  
  // --- D. CALCULAR DISTANCIA (cm) ---
  distancia = duracion * 0.034 / 2;
  
  // Mostrar en monitor serie para calibrar
  Serial.print("Distancia: ");
  Serial.print(distancia);
  Serial.println(" cm");
  
  // --- E. CONDICIÓN DE ACTIVACIÓN ---
  // Si la distancia es menor o igual a 15 cm (para dar margen, 
  // aunque el ejercicio pide 4cm, 15cm es más fácil de probar sin tocar el sensor)
  // Si quieres estrictamente 4cm, cambia el 15 por un 4.
  
  if (distancia > 0 && distancia <= 10) { 
    Serial.println("¡INTRUSO DETECTADO! - Ejecutando Marcha Imperial");
    tocarMarchaImperial();
    delay(2000); // Esperar 2 segundos antes de volver a medir
  }
  
  delay(100); // Pequeña pausa para estabilidad
}

// 5. FUNCIÓN DE LA MARCHA IMPERIAL
void tocarMarchaImperial() {
    // Primera sección
    tone(pinBuzzer, NOTE_A4); delay(500); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_A4); delay(500); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_A4); delay(500); noTone(pinBuzzer); delay(50);
    
    tone(pinBuzzer, NOTE_F4); delay(350); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_C5); delay(150); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_A4); delay(500); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_F4); delay(350); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_C5); delay(150); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_A4); delay(650); noTone(pinBuzzer); delay(50);

    delay(500); // Pausa breve

    // Segunda sección (Agudos)
    tone(pinBuzzer, NOTE_E5); delay(500); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_E5); delay(500); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_E5); delay(500); noTone(pinBuzzer); delay(50);
    
    tone(pinBuzzer, NOTE_F5); delay(350); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_C5); delay(150); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_GS4); delay(500); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_F4); delay(350); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_C5); delay(150); noTone(pinBuzzer); delay(50);
    tone(pinBuzzer, NOTE_A4); delay(650); noTone(pinBuzzer); delay(50);
}
