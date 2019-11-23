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

Rendszerterv

A weboldal gyors fejlesztési igénye miatt a Ruby On Rails rendszer melett döntöttünk
amiben gyorsan lehet MVP / prototípust készíteni.
Rendszer üzemeltetését szolgáltatásként képzeltük el, úgy, hogy ne rajtunk keresztül történtjen,
 így a heroku mellett döntöttünk, ami képes arra, hogy az általunk feltöltött kódot működtesse a felhőben.
 A heroku szolgáltatás része, a folyamatos szolgáltatás, szerver karbantartás, stb.
 Az adatokat a heroku által biztosított Postgres adatbázisban tároljuk, ennek mentéseit, karbantartását szintén a heroku végzi.
 