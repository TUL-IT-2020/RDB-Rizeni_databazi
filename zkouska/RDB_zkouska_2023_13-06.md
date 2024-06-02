# Videopůjčovna
1) Normalizujte relaci pro následující zadání, aby nedocházelo k anomáliím kvůli funkčním závislostem = udělejte 3NF nebo BCNF. U každé tabulky napište, v jaké normální formě je, každá musí mít primární klíč, integritní omezení (not null atd.), chce (ale nepotřebuje nutně) datový typ atributů:

Videopůjčovna půjčuje filmy. Film má název (na dotaz jsme zjistili, že unikátní), hrají v něm nějací herci, obecně více než jeden a může být několik herců se stejným jménem a film má jazyk dabingu (vždy jen jeden, jeden jazyk ale může být i několika filmů). Dále může film mít jazyk titulků, nemusí mít žádný, ale může jich taky mít spoustu.

Dále videopůjčovna eviduje informace o zákaznících, konkrétně číslo průkazu, kontakt, jméno a příjmení. Kontakt znamená adresa a budu potřebovat mít možnost zacílit na konkrétní lokalitu, např. chci poslat reklamu jenom zákazníkům z Liberce 5.

Nakonec chci evidovat výpůjčky = co (který film) si kdo (zákazník) zapůjčil, do kdy ho má vrátit

!!!Pozor, další požadavky můžou vyplynout z dalších bodů zadání!!!

2) Navrhněte trigger, aby nikdo neměl najednou půjčených víc než 5 filmů (5 mít může, ale 6 už ne). Počítám filmy, které má půjčené plus ty, co si půjčit chce. Stačí jenom vrátit exception

3) Napište SQL dotaz, který najde zákazníky, kdo si půjčili drama a současně i komedii (někdy v historii, ne nutně zároveň), ale nikdy neměli půjčený film ve slovenském jazyce nebo se slovenskými titulky. Film může mít několik žánrů zároveň

4) Napište, jaké znáte typy škálování + co to je CAP teorém.