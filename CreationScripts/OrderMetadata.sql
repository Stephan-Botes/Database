USE ComicStore;
CREATE TABLE OrderMetadata (
ID INT not null IDENTITY (1,1),
customer_id INT NOT NULL,
issue_id INT NOT NULL
)

ALTER TABLE OrderMetadata
add constraint pk_OrderMetadata
primary key (ID)
