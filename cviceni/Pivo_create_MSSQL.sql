/*
Created		14.01.2021
Database	MS SQL 2005 
*/


Create table [Pivovar]
(
	[id_pivovar] Integer Identity NOT NULL,
	[nazev] Nvarchar(50) NOT NULL, UNIQUE ([nazev]),
	[adresa] Nvarchar(100) NOT NULL, UNIQUE ([adresa]),
	[majitel] Nvarchar(50) NOT NULL,
Primary Key ([id_pivovar])
) 
go

Create table [Pivo]
(
	[id_pivo] Integer Identity NOT NULL,
	[id_pivovar] Integer NOT NULL,
	[jmeno] Nvarchar(50) NOT NULL,
	[alkohol] Real NOT NULL,
	[horkost] Integer NOT NULL,
	[vyroba_od] Datetime NOT NULL,
	[vyroba_do] Datetime NULL,
Primary Key ([id_pivo])
) 
go

Create table [Hospoda]
(
	[id_hospoda] Integer Identity NOT NULL,
	[nazev] Nvarchar(50) NOT NULL,
	[adresa] Nvarchar(100) NOT NULL, UNIQUE ([adresa]),
Primary Key ([id_hospoda])
) 
go

Create table [Odebira]
(
	[id_pivo] Integer NOT NULL,
	[id_hospoda] Integer NOT NULL,
	[kupni_cena] Money NOT NULL,
	[prodejni_cena] Money NOT NULL,
Primary Key ([id_pivo],[id_hospoda])
) 
go


Alter table [Pivo] add  foreign key([id_pivovar]) references [Pivovar] ([id_pivovar])  on update no action on delete no action 
go
Alter table [Odebira] add  foreign key([id_pivo]) references [Pivo] ([id_pivo])  on update no action on delete cascade 
go
Alter table [Odebira] add  foreign key([id_hospoda]) references [Hospoda] ([id_hospoda])  on update no action on delete cascade 
go