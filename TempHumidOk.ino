#define BLYNK_PRINT Serial
#include <ESP8266_Lib.h>
#include <BlynkSimpleShieldEsp8266.h>
WidgetLCD lcd(V0);

#include "DHT.h"
#define DHTTYPE DHT11
#define DHTPIN 8
DHT dht(DHTPIN, DHTTYPE);

char auth[] = "CmMv9-KRhbBd20ZEPEVjj_RUqOuF48sX";
char ssid[] = "SENTANU BATIK";
char pass[] = "godhongpito7";
String HOST = "192.168.1.2";
String PORT = "8080";
int countTrueCommand;
int countTimeCommand;
boolean found = false;
int valSensor = 1;
const int fanPin = 6;

#include <SoftwareSerial.h>
SoftwareSerial EspSerial(2, 3); // RX, TX

#define ESP8266_BAUD 9600
ESP8266 wifi(&EspSerial);

BlynkTimer timer;

// This function sends Arduino's up time every second to Virtual Pin (5).
// In the app, Widget's reading frequency should be set to PUSH. This means
// that you define how often to send data to Blynk App.
void myTimerEvent() {
  // You can send any value at any time.
  // Please don't send more that 10 values per second.
  Blynk.virtualWrite(V5, millis() / 1000);
}
int tempAuto = 0;
int humidVal = 40;
int tempVal = 32;
BLYNK_WRITE(V1) {
  switch (param.asInt()) {
    case 1: digitalWrite(fanPin, 0); tempAuto=0;
      break;
    case 2: digitalWrite(fanPin, 102);
      break;
    case 3: digitalWrite(fanPin, 153);
      break;
    case 4: digitalWrite(fanPin, 255);
      break;
  }
}

BLYNK_WRITE(V2) {
  tempAuto = param.asInt();
}

BLYNK_WRITE(V3) {
  tempVal = param.asInt();
}

BLYNK_WRITE(V4) {
  humidVal = param.asInt();
}

void setup() {
  Serial.begin(9600);
  EspSerial.begin(ESP8266_BAUD);
  delay(10);
  Blynk.begin(auth, wifi, ssid, pass, "blynk-cloud.com", 8080);
  //  Blynk.begin(auth, wifi, ssid, pass, "192.168.1.2", 8080);

  pinMode(fanPin, OUTPUT);

  lcd.clear();
  dht.begin();
}

void loop() {
  Blynk.run();

  float h = dht.readHumidity();
  float t = dht.readTemperature();
  Blynk.virtualWrite(V2, tempAuto);
  Blynk.virtualWrite(V3, tempVal);
  Blynk.virtualWrite(V4, humidVal);
  if (isnan(h) || isnan(t) ) {
    Serial.println(F("Failed to read from DHT sensor!"));
    return;
  } else {
    Blynk.virtualWrite(V0, t);
    lcd.print(0, 0, "Temp: ");
    lcd.print(6, 0, t);
    lcd.print(10, 0, " °C");
    Blynk.virtualWrite(V0, h);
    lcd.print(0, 1, "Humidity: ");
    lcd.print(10, 1, h);
    lcd.print(14, 1, " %");
    //automatic
    if (tempAuto == 1)
      if (h < humidVal || t > tempVal) {
        digitalWrite(fanPin, 255);
      }
  }

  delay(2000);
  timer.run();
}

String getTemperature() {
  int temp = dht.readTemperature();
  delay(50);
  return String(temp);
}

String getHumidity() {
  int humidity = dht.readHumidity();
  delay(50);
  return String(humidity);

}
