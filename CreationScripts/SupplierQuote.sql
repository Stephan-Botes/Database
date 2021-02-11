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

ALTER TABLE SupplierQuote
add constraint fk_SupplierQuote_Supplier
foreign key (SupplierID) references Supplier(ID)

ALTER TABLE SupplierQuote
add constraint fk_SupplierQuote_StockReference
foreign key (StockReferenceID) references Stock(ID)	

select sq.ID, sq.StockReferenceID, s.Id, s.StockReferenceID
from SupplierQuote sq
left join Stock s
	on sq.StockReferenceID=s.StockReferenceID
WHERE s.StockReferenceID is null