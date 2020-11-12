USE ComicStore;
CREATE TABLE SupplierOrder (
Id INT not null IDENTITY (1,1),
OrderDate DATETIME,
StockReferenceID INT not null,
QtyOrdered INt not null,
Total DECIMAL(38,2),
ShipmentRef VARCHAR(100),
ShipmentDate DATETIME,
DeliveryStatus VARCHAR(100),
SupplierID INT not null,
Comments VARCHAR(100)
)

ALTER TABLE SupplierOrder
add constraint pk_SupplierOrder
primary key (Id)