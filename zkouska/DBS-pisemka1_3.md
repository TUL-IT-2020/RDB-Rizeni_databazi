# Hodnocení filmů
1. Navrhněte DB schéma, které bude zachycovat hodnocení filmů uživateli. Každý uživatel hodnotí libovolné filmy a každý film může být hodnocen mnoha uživateli a dokonce několikrát tím stejným uživatelem. U filmů chceme evidovat, jací v nich hrají herci. I pro ně chceme pro jednotlivé filmy ukládat uživatelská hodnocení. Každý film může patřit do několika žánrů, ale vždy alespoň jednoho. Uživatel si může zvolit své oblíbené žánry, herce a filmy. Každé tabulce přidejte mimo primární a cizí klíče další dva libovolné smysluplné atributy. Parcialitu, která nevyplývá ze zadání, zvolte sami a odůvodněte.
2. Navrhněte a odůvodněte pro jednotlivé vztahy omezení referenční integrity.
3. U vybraných dvou entit určete normální formu a pokuste se je upravit tak, abyste normální formu snížili. Uveďte, proč je nižší a odůvodněte pomocí funkčních závislostí.

## Řešení
### Schéma DB
```mermaid
---
title: Hodnoceni filmu
---
erDiagram 
    MOVIE {
        nvarchar(50) name PK
        date relese PK
        nvarchar(50) studio PK
    }
    ACTOR {
        nvarchar(50) name PK
        nvarchar(50) surname PK
        date dob PK
    }
    MOVIES_ACTORS {
        type movie FK, PK 
        type actor FK, PK 
    }
    ACTOR ||--o{ MOVIES_ACTORS : plays
    MOVIE ||--o{ MOVIES_ACTORS : cast

    MOVIE_GENRE {
        nvarchar(50) genre PK
    }
    MOVIES_AND_GENRES {
        type movie PK, FK
        nvarchar(50) genre PK, FK
    }
    MOVIE ||--|{ MOVIES_AND_GENRES : is
    MOVIE_GENRE ||--o{ MOVIES_AND_GENRES : have

    USER {
        nvarchar(50) nickname PK
        nvarchar(50) email PK
        nvarchar(50) password "NN"
    }
    REVIEW {
        type user PK, FK
        date date PK
        int rating "NN"
        nvarchar(500) note 
    }
    USER ||--o{ REVIEW: make

    ACTORS_REVIEWS {
        type actor FK, PK 
        type review FK, PK
    }
    ACTOR ||--o{ ACTORS_REVIEWS : has
    REVIEW ||--|| ACTORS_REVIEWS : is

    MOVIE_REVIEWS {
        type movie FK, PK 
        type review FK, PK
    }
    MOVIE ||--o{ MOVIE_REVIEWS : has
    REVIEW ||--|| MOVIE_REVIEWS : is

    USER_FAVORITE_MOVIES {
        type user PK, FK
        type movie FK, PK 
    }
    USER ||--o{ USER_FAVORITE_MOVIES : favorite
    MOVIE ||--o{ USER_FAVORITE_MOVIES : favorite

    USER_FAVORITE_ACTORS {
        type user PK, FK
        type actor FK, PK
    }
    USER ||--o{ USER_FAVORITE_ACTORS : favorite
    ACTOR ||--o{ USER_FAVORITE_ACTORS : favorite

    USER_FAVORITE_GENRE {
        type user PK, FK
        nvarchar(50) genre PK, FK
    }
    USER ||--o{ USER_FAVORITE_GENRE : favorite
    MOVIE_GENRE ||--o{ USER_FAVORITE_GENRE : favorite
```

### Normální formy
