-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-03-12 16:13:15.48

-- tables
-- Table: Oddeleni
CREATE TABLE Oddeleni (
    zkratka char(3)  NOT NULL,
    nazev nvarchar(100)  NOT NULL,
    id_vedouci int  NOT NULL,
    id_zastupce int  NULL,
    CONSTRAINT Oddeleni_pk PRIMARY KEY  (zkratka)
);

-- Table: Projekty
CREATE TABLE Projekty (
    id_projekt int  NOT NULL,
    nazev nvarchar(100)  NOT NULL,
    rozpocet money  NOT NULL,
    CONSTRAINT PK_Projekty PRIMARY KEY  (id_projekt)
);

-- Table: Zamestnanci
CREATE TABLE Zamestnanci (
    id_zamestnanec int  NOT NULL IDENTITY(1, 1),
    jmeno nvarchar(50)  NOT NULL,
    datum_narozeni datetime  NULL,
    telefon char(13)  NOT NULL,
    email nvarchar(100)  NOT NULL,
    oddeleni char(3)  NOT NULL,
    CONSTRAINT UQ_Email UNIQUE (email),
    CONSTRAINT CK_Data CHECK (od < do),
    CONSTRAINT PK_Zamestnanci PRIMARY KEY  (id_zamestnanec)
);

-- Table: ZamestnanciProjekty
CREATE TABLE ZamestnanciProjekty (
    id_projekt int  NOT NULL,
    id_zamestnanec int  NOT NULL,
    od datetime  NOT NULL,
    do datetime  NULL,
    uvazek int  NOT NULL,
    CONSTRAINT PK_ZamestnanciProjekty PRIMARY KEY  (id_projekt,id_zamestnanec,od)
);

-- foreign keys
-- Reference: FK_Oddeleni (table: Zamestnanci)
ALTER TABLE Zamestnanci ADD CONSTRAINT FK_Oddeleni
    FOREIGN KEY (oddeleni)
    REFERENCES Oddeleni (zkratka);

-- Reference: FK_Projekty (table: ZamestnanciProjekty)
ALTER TABLE ZamestnanciProjekty ADD CONSTRAINT FK_Projekty
    FOREIGN KEY (id_projekt)
    REFERENCES Projekty (id_projekt);

-- Reference: FK_Vedouci (table: Oddeleni)
ALTER TABLE Oddeleni ADD CONSTRAINT FK_Vedouci
    FOREIGN KEY (id_vedouci)
    REFERENCES Zamestnanci (id_zamestnanec);

-- Reference: FK_Zamestnanci (table: ZamestnanciProjekty)
ALTER TABLE ZamestnanciProjekty ADD CONSTRAINT FK_Zamestnanci
    FOREIGN KEY (id_zamestnanec)
    REFERENCES Zamestnanci (id_zamestnanec);

-- Reference: FK_Zastupce (table: Oddeleni)
ALTER TABLE Oddeleni ADD CONSTRAINT FK_Zastupce
    FOREIGN KEY (id_zastupce)
    REFERENCES Zamestnanci (id_zamestnanec)
    ON DELETE  SET NULL;

-- End of file.

