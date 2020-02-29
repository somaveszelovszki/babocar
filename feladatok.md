# Kocsi
- teljes újjáépítés
- kisebb függőleges kotyogás
- saját tervezésű alaplemez
- kocsi gyári alaplemezének kidobása
- kormányszervók alaplemezre
- duct tape a kerekekre? talán jobb tapadás - Tesla talált valami rohadt jó gumilabdát, aminek levágták a végeit
- nagyobb pinion gear? 13T -> 15T
- impeller?...

# Áramkörök
## motor-controller
- UART + RS422
- 7V-os DC-DC konverter NYÁK-ok a szervóknak külön vagy ezen a NYÁK-on? legyenek pontosan belőve 7.2V-ra (idén 6.7V-osak lettek)
- méretcsökkentés
- csatik áthelyezése
- fordulatszámmérő csati megváltoztatása?
- valami normális, egyszerűen összerakható megoldás a kábelezésre (4, 6, esetleg 8 kábel) pl. szalagkábel ilyen csatival: https://lomex.hu/hu/webshop/#/search,43-00-12/stype,1
- távirányító többi csatornájának a figyelése

## line-detector
- UART + RS422
- 48 szenzor olyan sűrűn, amennyire csak lehet (mérjük le 32 szenzorral!), a szélükről a kis műanyagok simán letörhetők, no para
- STM32F446RE menjen rá
- minden smd alkatrész a BOTTOM layer-en, kivéve az indicator LED-ek (azok beférnek az optoszenzorok furatai közé?)
- rögzítőfuratok ott, ahol a bumper szivacsot is rögzítjük (van modell)
- UART csati (pl. szalagkábel, lásd feljebb) TOP/BOTTOM oldalon?
- lekerekített sarkok (árnyékoló miatt)

## control-panel
- UART + RS422
- ne vigyünk fel rá más feszültséget, csak 3V3-at
- MPU9250 (I2C) helyett STEVAL-MKI196V1 (SPI)
- distance sensor I2C helyett UART + RS422
- RPi UART soros ellenállások (kb 20 Ohm)

## distance-sensor-panel (új)

Elég para volt idén, hogy egy 20cm-es I2C kötötte össze a control-panel-t a távolságszenzorral, és ahogy a szenzort forgattuk, volt, hogy megszakadt a kommunikáció.
Úgyhogy kéne egy KICSI panel, amit rászerelnénk a szenzorra, lenne rajta egy minimál mikrokontroller (valami 8-lábú STM8, ami tud I2C-t), meg egy RS422, és máris minden király.

- milyen MCU?
- milyen csati?
- a szenzor (ST VL53L1X) törhető, nekünk elég a kisebb rész
- rögzítés a szervóra? a mostanihoz van 3D-nyomtatott tok, ha megtartjuk a dimenziókat, azt is használhatjuk

# Firmware
## motor-controller
- C++
- 3F Brushless DC motor? (ehhez valószínűleg STM32F446RE kell erre a NYÁK-ra is)
- távirányító többi csatornájának a figyelése, remote control option

## line-detector
- C++
- 48 szenzor
- limitált szélességű olvasás? van értelme?
- STM32F446RE menjen rá
- line-tracking javítása

## control-panel
- MPU9250 (I2C) helyett STEVAL-MKI196V1 (SPI)
- distance sensor I2C helyett UART + RS422
- LinePattern: junction minta felismerés limitjeit lehet update-elni a jobb vonalfelbontás és a szélesebb vonalszenzor miatt

## micro-utils
- trajectory: hátrafelé útvonalkövetés

## distance-sensor-panel (új)
- valami STM8
- szeonzor olvasása, panelLink-en keresztüli továbbítás (UART + RS422)

# Weboldal

Légyszi működjön Firefox-ban is :D

## Generic form
- mentse ki egy fájlba a beérkező JSON-okat (egy JSON array-be) - az oldal betöltésekor új fájl
- hibák javítása (éppen szerkesztés alatt álló mező felülírása; eltűnik az egész form, ha kiveszek pár változót a JSON-ból...)
- 'View in Chart' checkbox, amivel grafikonon lehet nézegetni real-time, hogyan változik egy érték

## Map
- térkép: canvas scale-elése a térképhez
- junction-ök korrekt megjelenítése (low-prio - működik az algoritmus)
- route átszínezése (low-prio - működik az algoritmus)

## logViewer
- mentse ki egy fájlba a beérkező log-okat - az oldal betöltésekor új fájl
- a log ablak legyen méretezhető (balra-jobbra csúszka)