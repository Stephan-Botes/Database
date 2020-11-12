USE ComicStore;
CREATE TABLE Supplier (
ID INT not null IDENTITY (1,1),
[Name] VARCHAR(100),
City VARCHAR(100),
ReferenceNumber VARCHAR(100)
)

ALTER TABLE Supplier
add constraint pk_Supplier
primary key (ID)