USE ComicStore;
CREATE TABLE Customer (
ID INT not null IDENTITY (1,1),
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
email varchar(50) NOT NULL,
[password] varchar(50) NOT NULL
)

ALTER TABLE Customer
add constraint pk_Customer
primary key (ID)

ALTER TABLE SupplierQuote
add constraint fk_SupplierQuote_Supplier
foreign key (SupplierID) references Supplier(ID)
