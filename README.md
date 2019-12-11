# JóIngatlan

Specifikáció

Felkeresett minket egy kis ingatlan iroda, aki szeretne egy olyan weboldalt, ahol bárki tud ingatlant hírdetni.
Az oldalt úgy képzeltk el mint az ingatlan.com-ot

Követelmények

Az induláshoz a következőket szeretnék:
* Lehessen regisztrálni az oldalon, belépéni és kijelentkezni
* Lehessen ingatlant feltölteni/közzéteni
* Legyenek rajta informatív oldalak ( ÁSZF, GYIK, Stb )
* Városonként lehessen szűrni az ingatlanokat
* Gyors indulás

Retrospektív

| Retrospektív | Mészáros László | Guth Károly |
| --- | --- | --- |
| Timeline | * | * |
| Went well | * | Áttekinthető projekt, könnyen ment a becsatlakozás |
| Could be impoved | Csapattag megtalálása | ráfordítható idő |

Rendszerterv

A weboldal gyors fejlesztési igénye miatt a Ruby On Rails rendszer melett döntöttünk
amiben gyorsan lehet MVP / prototípust készíteni.
Rendszer üzemeltetését szolgáltatásként képzeltük el, úgy, hogy ne rajtunk keresztül történtjen,
 így a heroku mellett döntöttünk, ami képes arra, hogy az általunk feltöltött kódot működtesse a felhőben.
 A heroku szolgáltatás része, a folyamatos szolgáltatás, szerver karbantartás, stb.
 Az adatokat a heroku által biztosított Postgres adatbázisban tároljuk, ennek mentéseit, karbantartását szintén a heroku végzi.
 
A backend szerver csak az API szerver, aminek nem része a frontend.

A szerverhez a következő endpointokon keresztül lehet komminukálni:

Bejelentkezés:
POST https://ingatlan-app.herokuapp.com/authenticate

User adatok lekérdezése:
GET https://ingatlan-app.herokuapp.com/user

User adatok módosítása:
PUT https://ingatlan-app.herokuapp.com/user

Szöveges oldalak listázása:
GET https://ingatlan-app.herokuapp.com/cms

Szöveges oldalak tartalmi lekérdezése:
GET https://ingatlan-app.herokuapp.com/cms/ID

Szótárlekérdezés:
GET https://ingatlan-app.herokuapp.com/dictionaries?lang=HU

Menüpontok lekérdezése:
GET https://ingatlan-app.herokuapp.com/menus

Ingatlanok lekérdezése
GET https://ingatlan-app.herokuapp.com/properties

Ingatlanok létrehozása
POST https://ingatlan-app.herokuapp.com/properties

Ingatlanok módosítása
PUT https://ingatlan-app.herokuapp.com/properties

Városok lekérdezése:
GET http://ingatlan-app.herokuapp.com/cities
