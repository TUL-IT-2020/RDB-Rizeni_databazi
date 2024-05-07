CREATE TABLE Objednavka (
    cisob int PRIMARY KEY,
    cissou int NOT NULL,
    pocet int not NULL,
    cena money NULL
)
go

ALTER TABLE Objednavka ADD CONSTRAINT FK_cissou
FOREIGN KEY (cissou) REFERENCES Soucastka(cissou)
go

SELECT * FROM Soucastka, Dodava, Dodavatel
WHERE Soucastka.cissou = Dodava.cissou AND Dodava.cisdod = Dodavatel.cisdod
go


SELECT cena FROM Soucastka
WHERE Soucastka.cissou = cissou
go

CREATE TRIGGER Objednavka_after
ON Objednavka
AFTER INSERT
AS
BEGIN
    DECLARE @pocet int;
    DECLARE @cena money;
    DECLARE @cissou int;

    SELECT @pocet = pocet, @cissou = cissou FROM inserted;

    SELECT @cena = cena FROM Soucastka
    WHERE Soucastka.cissou = @cissou;

    UPDATE Objednavka
    SET cena = @pocet * @cena
    FROM Objednavka o, inserted i
    WHERE o.cisob = i.cisob;
END;
go

CREATE TRIGGER Objednavka_instead
ON Objednavka
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO Objednavka (cisob, cissou, pocet, cena) 
    SELECT cisob, i.cissou, i.pocet, i.pocet*s.cena
    FROM inserted i, Soucastka s
    WHERE s.cissou = i.cissou
END;
go

insert into Objednavka(cisob, cissou, pocet) values('1', '2', '15')

-- kontrola vystupu
SELECT * FROM Objednavka

-- dummy
SELECT * INTO Soucastka2 FROM Soucastka
go
-- nicime soucastka2

-- logovaci trigger
-- insert/update/delete, sloupec, user
-- procedura, kdo me vola?

CREATE TRIGGER Objednavka_insert_update_delete
ON Soucastka2
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @action varchar(10);
    SET @action = 
        CASE
            WHEN EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) THEN 'UPDATE'
            WHEN EXISTS(SELECT * FROM inserted) THEN 'INSERT'
            WHEN EXISTS(SELECT * FROM deleted) THEN 'DELETE'
            ELSE 'UNKNOWN'
        END;

    PRINT 'Byla provedena operace ' + @action + '.';

    -- Další akce mohou být prováděny v závislosti na @action

END;
go

-- otestovani našho noveho triggeru:
UPDATE Soucastka2 set cena = 1000 WHERE cissou = 16;
DELETE FROM Soucastka2 WHERE cissou = 16;
INSERT INTO Soucastka2 VALUES (16, 100, 'ruda');
go