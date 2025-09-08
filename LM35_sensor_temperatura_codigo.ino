//Bloco de declaração de variaveis 
const int PINO_SENSOR_TEMPERATURA = A0;
float temperaturaCelsius;

// Bloco de Comunicação
void setup() {
  Serial.begin(9600); 
}

// Bloco de execução
void loop() {
  int valorLeitura = analogRead(PINO_SENSOR_TEMPERATURA);
  temperaturaCelsius = 12 + (valorLeitura * 5.0 / 1023.0) / 0.01;

// Para declarar labels no plotter serial
  Serial.print("TempMaximo:");
  Serial.print(37.5);
  Serial.print(" ");
  Serial.print("Temperatura:");
  Serial.print(temperaturaCelsius);
  Serial.print(" ");
  Serial.print("TempMinimo:");
  Serial.println(36.5);

  delay(2000);

}

