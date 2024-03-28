# Součástky - zadání SQL

Mějme relace o součástkách dodávaných dodavateli:

**Dodavatel** (cisdod, jmeno, adresa, mesto)  
**Dodává** (cisdod, cissou)  
**Součástka** (cissou, cena, barva)

## Pomocí SQL vyberte:

1. Seznam dodavatelů (jmeno, mesto), z nichž každý něco dodává.
2. Seznam dodavatelů (jmeno, mesto), kteří nic nedodávají.
3. Čísla dodavatelů, kteří dodávají součástku číslo 15.
4. Čísla dodavatelů, kteří dodávají něco, co není součástka číslo 15.
5. Čísla dodavatelů, kteří nedodávají součástku číslo 15.
6. Čísla dodavatelů, kteří dodávají něco i mimo součástky číslo 15.
7. Čísla dodavatelů, kteří dodávají pouze součástku číslo 15.
8. Čísla dodavatelů, kteří dodávají něco, ale nedodávají součástku číslo 15.
9. Čísla dodavatelů, kteří dodávají alespoň součástky 12, 13, 15.
10. Čísla dodavatelů, kteří dodávají všechny dodávané součástky.
11. Seznam měst, ze kterých je dodávána alespoň jedna červená součástka.
12. Průměrnou cenu součástky.
13. Čísla součástek s minimální cenou (_cissou_, _min_cena_). Může jich být více.
14. Minimální cenu součástky pro každého dodavatele (_cisdod_, _min_cena_). Může jich být více.
15. Součet cen dodávaných součástek dodavatele z Jablonce nad Nisou, který dodává alespoň 2 součástky.