USE ComicStore;
CREATE TABLE [Order] (
ID INT not null IDENTITY (1,1),
customer_id INT NOT NULL,
order_date char(50) NOT NULL,
ordermetadata_id INT NOT NULL,
shipment_id INT NOT NULL,
order_status_id INT NOT NULL
)

ALTER TABLE [Order]
add constraint pk_Order
primary key (ID)