# Pivo - zadání SQL
Návrh: [[cv03_Pivovary|Pivovary]]

**Pivovar** (id_pivovar, nazev, adresa, majitel)
**Pivo** (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do)
**Hospoda** (id_hospoda, nazev, adresa)
**Odebira** (id_pivo, id_hospoda, kupni_cena, prodejni_cena)

## Vyberte ze databáze:
1. Vypište názvy hospod, které neodebírají žádné pivo od pivovaru Svijany. Do výsledku zahrňte i hospody, které vůbec neodebírají pivo.
2. Vypište názvy pivovarů, které nedodávají pivo do žádné hospody s názvem Formanka. 
3. Vypište názvy pivovarů, které dodávají pivo do tří a více hospod (nazev, pocet).
4. Vypište názvy hospod, do kterých dodává dva a více pivovarů (nazev, pocet).
5. Vypište jména piv, jejichž výroba se v určitém pivovaru (pivo stejného jména se ve stejném pivovaru vyrábělo/vyrábí v různá časová období, tedy více než jednou).  
6. Vypište dvojice názvů (pivo_1, pivo_2) podobných piv. Podobná piva mají stejný obsah alkoholu a stejnou hořkost. Pokud jsou však zároveň ze stejného pivovaru a jmenují se stejně, ve výpisu nebudou.
7. Vypište názvy hospod, do nichž dodává pivo pouze pivovar Svijany.
8. Vypište názvy hospod, do nichž dodává pivo zároveň pivovar Svijany i Plzeňský Prazdroj.
9. Vypište jména piv, které čepuje pouze jedna hospoda. 
10. Vypište jména piv, které neodebírají hospody s názvem Formanka.
11. Vypište názvy hospod, které nečepují piva se jménem 'Pilsner Urquell'.
12. Vypište pro jednotlivé hospody taková jména piv, z jejichž prodeje má hospoda maximální zisk (hospoda, pivo, zisk). POZOR: Název hospody není unikátní! Piv s maximálním ziskem (prodejni_cena – kupni_cena) může být v hospodě více!  
13. Vypište pro jednotlivá odebíraná piva takové hospody, které z jejich prodeje mají největší zisk (pivo, hospoda, zisk). POZOR: Název piva není unikátní! Hospod s maximálním ziskem z daného piva (prodejni_cena – kupni_cena) může být více!
14. Vypište názvy pivovarů a u každého uveďte počet hospod, které od nich odebírají pivo (nazev, pocet). Do výpisu zahrňte i ty pivovary, od nichž neodebírá pivo žádná hospoda (0 nebo NULL ve výpisu).
15. Vypište názvy hospod a u každé uveďte počet pivovarů, které do nich dodávají pivo (nazev, pocet). Do výpisu zahrňte i ty hospody, které pivo nečepují (0 nebo NULL ve výpisu).
16. Vypište průměrné prodejní ceny piv v libereckých hospodách (adresa LIKE '%Liberec%'), které čepují alespoň 2 různá piva (nazev, prumerna_cena). POZOR: Název hospody není unikátní!
17. Vypište průměrné kupní ceny piv v libereckých hospodách (adresa LIKE '%Liberec%'), které jsou dodávány alespoň do 2 různých hospod (jmeno, prumerna_cena). POZOR: Jméno piva není unikátní!  
18. Vypište názvy hospod, ve kterých čepují jedno a více piv od pivovaru Svijany. POZOR: Název hospody není unikátní!  
19. Vypište názvy hospod, kde nečepují pivo Pilsner Urquell, ale čepují jakékoli pivo od pivovaru Svijany.
20. Vypište názvy piv, která nečepují v hospodě U Medvěda, ale čepují v hospodě U Kalicha.
