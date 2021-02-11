USE ComicStore;
CREATE TABLE Shipment (
ID INT not null IDENTITY (1,1),
order_id INT NOT NULL,
date_shipped DATE NOT NULL,
date_arrived DATE NOT NULL
)

ALTER TABLE Shipment
add constraint pk_Shipment
primary key (ID)
