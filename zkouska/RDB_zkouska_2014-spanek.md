# Lékař
> RDB 2014 ZK - Špánek - 2. termín

1) Normalizujte databázi pro ukládání návštěv u lékaře.
Máme uchovávat:
pacient_rč, pacient_jmeno, pacient_prijmeni, pacient_adresa, lekar_jmeno, lekar_prijmeni, lekar_specializace, kod_diagnozy, diagnoza, typ_vysetreni, datum_navstevy

každý pacient může navštěvovat, více doktorů
budeme v budoucnu chtit vyhledavat pacienty dle města atd...
každá návštěva má jednu diagnozu a jeden typ vyšetření...koukne do krku => chřipka
každý doktor má jednu specializaci
kazda diagnoza je jedinecna, mela by mit jedinecny kod
do relace pro uchovani navstev je zadavan kod diagnozy a vysetreni, ktery doktor, komu a kdy ji diagnostikoval

Vtvořte ERD diagram s tabulkami v optimální NF

2) SQL příkaz, který vybere pacienty, kterým byla dagnostikovana chřipka nebo diabetes, a kteří nikdy nebyli u ortopeda nebo u doktora se specializací ORL.
3) Trigger pro automatické ukládání kódu nemoci u návštěv.
doktor vloží do záznamu název nemoce (třeba chřipka). je zkontrolováno zda je tato nemoc v tabulce s nemocema a má definovaný kód, pokud ano tak využije její kod.
Pokud ne, nejdríve ji přidá k nemocem a vytvoří kód pak tento kód využije.
kód může být řešen přes autoincrement..nemusíme řešit jeho strukturu
4) Jaký index byste použili při urychlení práce s tabulkou uchovávající pohlaví.
5) U čeho řešíme IZOLACE a jaké známe.