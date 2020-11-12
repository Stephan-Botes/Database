USE ComicStore;
CREATE TABLE SupplierPayment (
ID INT not null IDENTITY (1,1),
OrderID INT not null,
Total DECIMAL(38,2),
ProcessedDate DATE
)

ALTER TABLE SupplierPayment
add constraint pk_SupplierPayment
primary key (Id)