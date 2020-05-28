# Kocsi
[ ] teljes újjáépítés
[ ] kisebb függőleges kotyogás
[x] saját tervezésű alaplemez
[x] kormányszervók alaplemezre
[ ] duct tape a kerekekre? talán jobb tapadás - Tesla talált valami rohadt jó gumilabdát, aminek levágták a végeit
[ ] nagyobb pinion gear? 13T -> 15T

# Áramkörök
## motor-controller
[ ] CAN
[ ] 7V-os DC-DC konverterek - legyenek pontosan belőve 7.2V-ra (idén 6.7V-osak lettek)
[ ] méretcsökkentés
[ ] csatik áthelyezése
[ ] fordulatszámmérő csati megváltoztatása?
[ ] távirányító többi csatornájának a figyelése
[ ] RPi 5V-os tápja erre a NYÁK-ra (@see circuit/voltage-converter)
[ ] Debug UART + soros ellenállások (kb 20 Ohm)
[ ] 3V3 vagy 5V a CAN csatlakozón?

## line-detector
[x] CAN
[x] 48 szenzor olyan sűrűn, amennyire csak lehet (mérjük le 32 szenzorral!), a szélükről a kis műanyagok simán letörhetők, no para
[x] STM32F446RE menjen rá
[x] indicator LED-ek az optoszenzorok furatai között
[x] lekerekített sarkok (árnyékoló miatt)
[ ] Debug UART + soros ellenállások (kb 20 Ohm)
[ ] 3V3 vagy 5V a CAN csatlakozón?

## control-panel
[x] CAN
[x] ne vigyünk fel rá más feszültséget, csak 3V3-at
[x] MPU9250 (I2C) és STEVAL-MKI196V1 (SPI) támogatás
[x] distance sensor I2C helyett UART + RS422
[x] RPi UART soros ellenállások (kb 20 Ohm)
[ ] 3V3 vagy 5V a CAN csatlakozón?

## distance-sensor-panel (új)

Elég para volt idén, hogy egy 20cm-es I2C kötötte össze a control-panel-t a távolságszenzorral, és ahogy a szenzort forgattuk, volt, hogy megszakadt a kommunikáció.
Úgyhogy kéne egy KICSI panel, amit rászerelnénk a szenzorra, lenne rajta egy minimál mikrokontroller, ami tud I2C-t, meg egy RS422, és máris minden király.

[x] milyen MCU? STM32F030
[x] a szenzor (ST VL53L1X) törhető, nekünk elég a kisebb rész (maradt a nagy)

# Firmware
## motor-controller
[x] C++
[x] távirányító többi csatornájának a figyelése, remote control option

## line-detector
[x] C++
[x] 48 szenzor
[x] limitált szélességű olvasás? van értelme?
[x] STM32F446RE menjen rá
[x] LinePattern: junction minta felismerés limitjeit lehet update-elni a jobb vonalfelbontás és a szélesebb vonalszenzor miatt
[ ] line-tracking javítása

## control-panel
[x] MPU9250 (I2C) és STEVAL-MKI196V1 (SPI) támogatás
[x] distance sensor I2C helyett UART + RS422

## micro-utils
[x] trajectory: hátrafelé útvonalkövetés

## distance-sensor-panel (új)
[x] szenzor olvasása, panelLink-en keresztüli továbbítás (UART + RS422)

# Weboldal

[ ] Légyszi működjön Firefox-ban is :D

## Generic form
[ ] mentse ki egy fájlba a beérkező JSON-okat (egy JSON array-be) - az oldal betöltésekor új fájl
[ ] hibák javítása (éppen szerkesztés alatt álló mező felülírása; eltűnik az egész form, ha kiveszek pár változót a JSON-ból...)
[ ] 'View in Chart' checkbox, amivel grafikonon lehet nézegetni real-time, hogyan változik egy érték

## Map
[ ] térkép: canvas scale-elése a térképhez
[ ] junction-ök korrekt megjelenítése (low-prio - működik az algoritmus)
[ ] route átszínezése (low-prio - működik az algoritmus)

## logViewer
[ ] mentse ki egy fájlba a beérkező log-okat - az oldal betöltésekor új fájl
[ ] a log ablak legyen méretezhető (balra-jobbra csúszka)
