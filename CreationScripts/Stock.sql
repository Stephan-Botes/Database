CREATE TABLE Stock (
Id INT not null IDENTITY (1,1),
StockReferenceID INT not null,
IssueID INT not null,
Condition VARCHAR (100),
AvailableQty INT,
Price DECIMAL(38,2),
Comments VARCHAR (100)
)

ALTER TABLE Stock
add constraint pk_Stock
primary key (Id)

ALTER TABLE Stock
ALTER COLUMN Comments VARCHAR (max);

DELETE FROM Stock;