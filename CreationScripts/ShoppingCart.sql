USE ComicStore;
CREATE TABLE ShoppingCart (
ID INT not null IDENTITY (1,1),
customer_id char(50) NOT NULL,
stock_id char(50) NOT NULL,
stock_qty INT
)

ALTER TABLE ShoppingCart
add constraint pk_ShoppingCart
primary key (ID)

ALTER TABLE SupplierQuote
add constraint fk_SupplierQuote_Supplier
foreign key (SupplierID) references Supplier(ID)
