USE ComicStore;
CREATE TABLE Wishlist (
ID INT not null IDENTITY (1,1),
customer_id char(50) NOT NULL,
stock_id char(50) NOT NULL
)

ALTER TABLE Wishlist
add constraint pk_Wishlist
primary key (ID)

ALTER TABLE SupplierQuote
add constraint fk_SupplierQuote_Supplier
foreign key (SupplierID) references Supplier(ID)
