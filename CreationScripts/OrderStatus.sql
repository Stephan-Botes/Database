USE ComicStore;
CREATE TABLE OrderStatus (
ID INT not null IDENTITY (1,1),
[status] char(50) NOT NULL,
)

ALTER TABLE OrderStatus
add constraint pk_OrderStatus
primary key (ID)
