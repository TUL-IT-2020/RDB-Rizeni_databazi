# Návrh DB - Zaměstnanci
Na schématu níže je návrh databáze pro evidenci zaměstnanců, oddělení, ve kterých pracují a projektů, na nichž pracují. 

Každý zaměstnanec má svůj identifikátor (primární klíč), jméno, může mít datum narození, telefon a e-mail. Chceme rovněž znát, ve kterém pracuje oddělení, což zajistíme vazbou (referencí) do tabulky, kde evidujeme oddělení, která mají jako primární klíč svou zkratku a dále název. 

Každý zaměstnanec pracuje v právě jednom oddělení a v každém oddělení mže pracovat libovolné množství zaměstnanců. Každé oddělení musí mít svého vedoucího a může mít také zástupce, což jsou rovněž zaměstnanci. V tabulce oddělení jsou tedy dva cizí klíče, které odkazují do tabulky zaměstnanců.

Každý zaměstnanec může pracovat na libovolném počtu projektů. U projektu evidujeme jeho identifikátor, název a rozpočet. Na každém projektu může pracovat libovolný počet zaměstnanců. Vzniká nám tak mezi tabulkami zaměstnanců a projektů vazba M:N, kterou musíme řešit rozkladem na dvě vazby (1:M a N:1). Vznikne vazební tabulka (link table) a její primární klíč vznikne složením cizích klíčů tabulky se zaměstnanci a projekty. Můžeme také říci, že může existovat zaměstnanec, který nepracuje na žádném projektu a zároveň může existovat projekt, na kterém nepracuje žádný zaměstnanec.

Chceme-li, aby šlo sledovat, který zaměstnanec v daném období právě pracoval na nějakém projektu a s jakým úvazkem, přidáme atributy od, do a úvazek. Aby šlo zachytit situaci, kdy nějaký zaměstnanec na daném projektu pracoval v různá časová období, musíme přidat atribut od k primárnímu klíči. Takový složený primární klíč opět jednoznačně identifikuje řádek v tabulce ZamestnanciProjekty.

Kdybychom potřebovali zachytit obdobnou historii v případě, že daný zaměstnanec pracoval v různých odděleních, bylo by potřeba mezi zaměstnance a oddělení opět vložit vazební tabulku. Stejně tak v případě, pokud bychom měli uložit informace o tom, kdo byl v určitém období vedoucím či zástupcem.

![[Zamestnanci.jpg]]