## Pivovary
Pivovar vaří Piva
Pivo čepují v Hospodách
Adresa

> [!note] Pivovary
```mermaid
erDiagram
    Pivovar {
	    ICO INT PK
        nazev VARCHAR(100)
        adresa Adresa FK
    }
    Pivo {
        nazev VARCHAR(100) PK
        pivovar_ID INT PK, FK
        stupen INT
        typ VARCHAR(20) "N | světlé | polotmavé | tmavé"
        cena_pro_hospodu INT
    }
    Hospoda {
	    ICO INT PK
        nazev VARCHAR(100)
        adresa Adresa FK
    }

	Prodavana_Piva {
		Pivo INT PK, FK
		Hospoda INT PK, FK
		cena_pro_zakaznika INT
	}

	Adresa {
        VARCHAR(100) Ulice  PK
        VARCHAR(100) Mesto PK
        INT PSC PK
        VARCHAR(50) Zeme PK
    }

    Pivovar ||--o{ Pivo : vyrabi
    Pivo ||--o{ Prodavana_Piva : se_prodava
    Prodavana_Piva }o--|| Hospoda : prodava
    Pivovar ||--|| Adresa : sidli_na
    Hospoda ||--|| Adresa : sidli_na
```



