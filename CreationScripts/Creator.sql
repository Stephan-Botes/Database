CREATE TABLE Creator (
ID INT not null IDENTITY (1,1),
[Name] VARCHAR (100),
CountryOfResidence VARCHAR (100),
TaxReferenceNumber VARCHAR (200),
EmailAddress VARCHAR (100))

ALTER TABLE Creator
add constraint pk_Creator
primary key (Id)

ALTER TABLE Creator
ALTER COLUMN TaxReferenceNumber NVARCHAR (250);