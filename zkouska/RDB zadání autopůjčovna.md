# Autopůjčovna
## Zadání
Navrhněte schéma pro databázi podnikové autopůjčovny. 

Uživatelé, u nichž evidujeme jméno, telefon, zaměstnanecké číslo, e-mail a číslo zaměstnanecké karty, si v určitý časový interval, který předem zadají, půjčují auta. 
U aut potřebujeme znát značku, model, obsah, registrační značku (SPZ), vin, spotřebu, druh paliva, aktuální najeté kilometry (ODO) a stav (aktivní / neaktivní / vyřazené). 

Auto si uživatel půjčí na vybraném parkovišti a na jakémkoli z možných parkovišť auto vrátí (na tom samém nebo na jiném). Parkoviště má svůj název, GPS souřadnice vjezdu, adresu a stav (aktivní / neaktivní). O dané výpůjčce musíme vědět, v jakém je aktuálně stavu (schválená / neschválená / probíhající / zrušená / propadlá / ukončená). Pokud v zadání chybí nějaká informace, napište do zadání věty, které ho o tuto informaci doplní, a pak upravte schéma.

## Řešení
Obsah motoru nebo kufru?
### Schéma DB
```mermaid
---
title: Autopůjčovna
---
erDiagram 
USER {
        int worker_number PK
        int id_card_number
        nvarchar(60) name
        nvarchar(128) email
        nvarchar(10) phone
    }

    CAR {
        nvarchar(10) SPZ PK
        nvarchar(60) brand
        nvarchar(60) model
        nvarchar(60) VIN
        int volume "objem kufru v l"
        int ODO "najeté kilometry"
        type fuel_type FK 
        float fuel_per_100km "l/100km"
        type status FK
        type parked FK "parkoviste, kde ted stoji"
    }
    CAR_STATUS {
        nvarchar(10) status PK "aktivní / neaktivní / vyřazené"
    }
    FUEL_TYPE {
        nvarchar(10) type PK "diesel, benzin, LNG, elektric"
    }
    CAR }o--|| CAR_STATUS : is_in_state
    CAR }o--|| FUEL_TYPE : fuel_type
    CAR }o--o| PARKING : is_parked

    PARKING {
        nvarchar(60) name PK
        nvarchar(60) GPS PK
        nvarchar(60) Address
        type status FK
    }
    PARKING_STATUS {
        nvarchar(10) status PK "aktivní / neaktivní"
    }
    PARKING }o--|| PARKING_STATUS : is_in_state
    
    CAR_BOOKING {
        type car PK, FK
        type user PK, FK
        date from_time PK
        date to_time PK
        type status FK
        type from_parking FK
        type to_parking FK
    }
    BOOKING_STATE {
        nvarchar(10) status PK "schválená / neschválená / probíhající / zrušená / propadlá / ukončená"
    }
    CAR_BOOKING }o--|| BOOKING_STATE : is_in_state
    USER ||--o{ CAR_BOOKING : booked_a_car
    CAR ||--o{ CAR_BOOKING : is_booked
    CAR_BOOKING }o--|| PARKING : from_place
    CAR_BOOKING }o--o| PARKING : to_place
```

Z posledního bookingu by bylo možné zjistit kde auto stojí, ale pro snadnější hledání aut na parkovištích a servisní převoz aut je u každého auta uložené na kterém parkovišti je zrovna zaparkované.

Adresa parkoviště je jen doplňková informace, očekává se že zákazník použije GPS souřadnice pro přesnou lokalizaci. Proto je adresa uložené jako jeden atribut.