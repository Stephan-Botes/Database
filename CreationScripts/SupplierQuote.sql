USE ComicStore;
CREATE TABLE SupplierQuote (
ID INT not null IDENTITY (1,1),
StockReferenceID INT not null,
SupplierID INT not null,
Price DECIMAL(38,2),
EffectiveDate DATETIME
)

ALTER TABLE SupplierQuote
add constraint pk_SupplierQuote
primary key (ID)