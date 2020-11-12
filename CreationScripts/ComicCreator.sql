CREATE TABLE ComicCreator (
Id INT not null IDENTITY (1,1),
IssueID INT not null,
CreatorID INT not null,
CreatorRole VARCHAR(100))

ALTER TABLE ComicCreator
add constraint pk_ComicCreator
primary key (Id)