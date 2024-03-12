# Zadání semestrální práce

Prezentace a demonstrace aplikace: 12. týden.
- Prezentace 5. slidů, 10 minut max.
- Co a jak funguje

Odevzdání na našem počítači. Nasazení je jedno. 


Podle počtu ujetých kilometrů jsme schopni určit zůstatek na účtu.
- Berou se aktuální hodnoty po všech změnách

Update záznamů podle dat v JASON. 

Export z JASON do "reportu" čitelného pro člověka `.txt`. 

Emisní třída a kilometrová sazba musí nějak dávat smysl, nesmí se lišit.
- aktualizace všech záznamů!

Hodnoty číselníků:
Nová hmotnost auta se přidá do číselníku (triger).

Firma může mít více vozidel.
Vozidlo má jen jednu firmu.

Vygenerovat 1000ce záznamů

Systémová data
Chodí nám všechny správné atributy?
- špatné zahodit, zalogovat

Platby konzistetní:
Týkají se vždy vozidla.

Jak udělat tabulku, která se liší v atributech?

## DBs
2 databáze:
- SQL, 
- NoSQL.

Do NoSQL ukládáme všechna zdrojová data (JSON). 
- Ujeté kilometry počítáme z NoSQL. 
Do SQL ukládáme strukturovaná data. 
- Registrace. 

liquibase - git pro relační databáze. Použít při návrhu. Přidávat tabulky postupně. Dá se použít jako plugin do Javy.
### SQL:
- MySQL
- MSSQL
- Postgre

Firmy a Auta v konzistentním stavu.

`spz` : CHAR()
typ vozidla: osobní/nákladní, enum
adresa: formát je na nás
- Enum na města dle seznamu?
- Vyhledávání v seznamu statistické dtb

Omezit všechny možné domény atributů.
- ENUM pomocí pomocné tabulky pouze s klíčí. 
- On update cascade 
	- cascading reference integrity

Emisní třída určuje tarif na kilometr.
- `km_sazba` určuje koef tarifu

hmotnost : číslo

Testování korektnosti dat na vstupu
### NoSQL:
- MongoDB

Dovedeme dotaz mezi dvě dokumentama?