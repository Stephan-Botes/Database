USE ComicStore;
CREATE TABLE Stock (
ID INT not null,
IssueID INT not null,
Condition VARCHAR (100),
AvailableQty INT,
Price DECIMAL(38,2),
Comments VARCHAR (100)
)

ALTER TABLE Stock
add constraint pk_Stock
primary key (ID)

ALTER TABLE Stock
ALTER COLUMN Comments VARCHAR (max);

DELETE FROM Stock;

SET IDENTITY_INSERT Stock ON;
UPDATE Stock SET ID=StockReferenceID
SET IDENTITY_INSERT Stock OFF;