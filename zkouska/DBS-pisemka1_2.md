# Správa experimentů
1. Navrhněte DB schéma, které bude zachycovat správu experimentů, na kterých pracují zaměstnanci. Každý může pracovat na libovolném počtu experimentů, na experimentu pracuje více zaměstnanců. Každý experiment vede právě jeden zaměstnanec. Experiment se skládá z více úkolů, minimálně však jednoho a za každý úkol je zodpovědný právě jeden zaměstnanec. Ke každému úkolu může patřit libovolné množství příloh (soubory) a přílohu nahraje právě jeden konkrétní zaměstnanec. Experiment navíc může mít až deset laboratorních vzorků označených A, B, C ... H, I, J. Každé tabulce přidejte mimo primární a cizí klíče další dva libovolné smysluplné atributy. Parcialitu, která nevyplývá ze zadání, zvolte sami a odůvodněte.
2. Navrhněte a odůvodněte pro jednotlivé vztahy omezení referenční integrity.
3. U vybraných dvou entit určete normální formu a pokuste se je upravit tak, abyste normální formu snížili. Uveďte, proč je nižší a odůvodněte pomocí funkčních závislostí.

## Řešení
### Schéma DB
```mermaid
---
title: Experimetny
---
erDiagram 
    WORKER {
        nvarchar(128) email PK
        nvarchar(50) name
        nvarchar(50) surname
    }
    EXPERIMENT {
        nvarchar(50) name PK
        date date PK
        type_worker leader FK
    }
    WORKER ||--|| EXPERIMENT : is_leading
    WORKERS_EXPERIMENTS {
        type worker PK, FK
        type experiment PK, FK
    }
    WORKER ||--o{ WORKERS_EXPERIMENTS : works_on
    EXPERIMENT ||--|{ WORKERS_EXPERIMENTS : done_by

    TASK {
        nvarchar(50) name PK
        type experiment PK, FK
        type_worker leader FK "NN"
    }
    WORKER ||--|| TASK : is_leading
    TASK }|--|| EXPERIMENT : is_part_of
    WORKERS_TASKS {
        type worker PK, FK
        type experiment PK, FK
    }
    WORKER ||--o{ WORKERS_TASKS : works_on
    TASK ||--|{ WORKERS_TASKS : done_by

    ATTACHMENT {
        nvarchar(125) file_path PK
        type task FK, PK
        nvarchar(64) file_name "NN"
        type by_worker FK
    }
    ATTACHMENT }o--|| TASK : attached

    LAB_SAMPLE {
        type experiment PK, FK
        char lable PK "max 10: A-J"
        nvarchar(125) file_path "NN"
        nvarchar(64) file_name "NN"
    }
    LAB_SAMPLE }o--|| EXPERIMENT : have
```
