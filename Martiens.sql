USE master;  
GO
IF DB_ID ( N'MarsDB' ) IS NOT NULL
DROP DATABASE MarsDB;
GO
CREATE DATABASE MarsDB;
GO
use StocksDB;
IF OBJECT_ID(N'dbo.Martiens', N'U') IS NOT NULL  
   DROP TABLE [dbo].[Martiens];  
GO
IF OBJECT_ID(N'dbo.Terriens', N'U') IS NOT NULL  
   DROP TABLE [dbo].[Terriens];  
GO

CREATE TABLE Martiens(Id INT PRIMARY KEY IDENTITY (1, 1),Martien_Name nchar(150) , Base nchar(150), Superieur nchar(150), Referent_Terrien nchar(150));
Create Table Terriens(Id INT PRIMARY KEY IDENTITY (1, 1), Terrien_Name nchar(150) , Continent nchar (150));

INSERT INTO Martiens(Martien_Name,Base,Superieur,Referent_Terrien ) Values('Empereur','Glotz','Empereur','Joe Biden');
INSERT INTO Martiens(Martien_Name,Base,Superieur,Referent_Terrien ) Values('Spock','Glotz','Empereur','Capitaine Kirk');
INSERT INTO Martiens(Martien_Name,Base,Superieur,Referent_Terrien ) Values('Grutz','Glotz','Spock','John Doe');

INSERT into Terriens(Terrien_Name, Continent) values ('Joe Biden','America');
Insert into Terriens(Terrien_Name, Continent) values ('Capitaine Kirk','America');
Insert into Terriens(Terrien_Name, Continent) values ('John Doe','Europe');


Select Martien_Name,Base,Terrien_Name,Continent FROM Martiens INNER JOIN Terriens ON  Martiens.Referent_Terrien = Terriens.Terrien_Name