SET IDENTITY_INSERT Pivovar ON
GO
INSERT INTO Pivovar (id_pivovar, nazev, adresa, majitel) VALUES (1, 'Svijany', 'Svijanský Újezd', 'LIF Group');
INSERT INTO Pivovar (id_pivovar, nazev, adresa, majitel) VALUES (2, 'Plzeòský Prazdroj', 'Plzeò', 'Asahi Group Holdings');
INSERT INTO Pivovar (id_pivovar, nazev, adresa, majitel) VALUES (3, 'Budìjovický Budvar', 'Èeské Budìjovice', 'Státní podnik');
INSERT INTO Pivovar (id_pivovar, nazev, adresa, majitel) VALUES (4, 'Staropramen', 'Praha', 'MolsonCoors Brewing Co.');
SET IDENTITY_INSERT Pivovar OFF
GO

SET IDENTITY_INSERT Pivo ON
GO
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (1, 1, 'Svijanský Kníže', 4.5, 20, '2000-10-10', NULL);
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (2, 1, 'Svijanská Knìžna', 4.7, 15, '2000-10-20', NULL);
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (3, 1, 'Svijanský Vozka', 0, 10, '2020-10-10', NULL);
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (4, 2, 'Pilsner Urquell', 4.2, 10, '1900-10-10', NULL);
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (5, 2, 'Gambrinus 10', 4.0, 8, '1980-10-20', NULL);
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (6, 3, 'Desítka', 4.2, 10, '1999-10-10', NULL);
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (7, 4, 'Desítka', 4.0, 8, '1989-10-20', '1999-10-09');
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (8, 3, 'Desítka', 4.25, 11, '1966-10-10', NULL);
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (9, 1, 'Baron', 6.5, 15, '2010-11-11', '2010-12-11');
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (10, 1, 'Baron', 6.5, 15, '2020-11-11', '2020-12-11');
INSERT INTO Pivo (id_pivo, id_pivovar, jmeno, alkohol, horkost, vyroba_od, vyroba_do) VALUES (11, 1, 'Svijanský Máz', 4.5, 22, '2019-10-10', NULL);
SET IDENTITY_INSERT Pivo OFF
GO

SET IDENTITY_INSERT Hospoda ON
GO
INSERT INTO Hospoda (id_hospoda, nazev, adresa) VALUES (1, 'U Balcarù', 'Husova 20, Liberec');
INSERT INTO Hospoda (id_hospoda, nazev, adresa) VALUES (2, 'U Kalicha', 'Žižkova 10, Liberec');
INSERT INTO Hospoda (id_hospoda, nazev, adresa) VALUES (3, 'Formanka', 'Nusle 5, Praha');
INSERT INTO Hospoda (id_hospoda, nazev, adresa) VALUES (4, 'Formanka', 'Brnìnská 15, Brno');
INSERT INTO Hospoda (id_hospoda, nazev, adresa) VALUES (5, 'U Medvìda', 'Kateøinská 8, Liberec');
INSERT INTO Hospoda (id_hospoda, nazev, adresa) VALUES (6, 'U Tetøeva', 'Ferdinandov 50');
INSERT INTO Hospoda (id_hospoda, nazev, adresa) VALUES (7, 'Øízkárna Kopretina', 'Tøeboò 1122')
INSERT INTO Hospoda (id_hospoda, nazev, adresa) VALUES (8, 'Assen', 'U Hrùbkù 3060, Ostrava-jih')
INSERT INTO Hospoda (id_hospoda, nazev, adresa) VALUES (9, 'U Hrocha', 'Hrochova 69, Liberec')
SET IDENTITY_INSERT Hospoda OFF
GO

INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (1, 1, 25.50, 35);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (2, 1, 27.50, 37);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (1, 2, 25.50, 35);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (3, 2, 35.50, 45);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (3, 3, 35.50, 45);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (4, 3, 28.50, 38);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (1, 5, 25.50, 35);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (2, 5, 25.50, 35);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (5, 5, 25.50, 35);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (4, 7, 28.50, 40);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (4, 8, 28.50, 40);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (5, 8, 28.50, 40);
INSERT INTO Odebira (id_pivo, id_hospoda, kupni_cena, prodejni_cena) VALUES (11, 9, 20.00, 30);

UPDATE Odebira SET prodejni_cena = prodejni_cena + 0.5 WHERE id_hospoda = 1 AND id_pivo = 2
UPDATE Odebira SET prodejni_cena = prodejni_cena + 1.0 WHERE id_hospoda = 2 AND id_pivo = 3
UPDATE Odebira SET prodejni_cena = prodejni_cena + 1.5 WHERE id_hospoda = 3 AND id_pivo = 4
UPDATE Odebira SET prodejni_cena = prodejni_cena - 0.5 WHERE id_hospoda = 5 AND id_pivo = 5
