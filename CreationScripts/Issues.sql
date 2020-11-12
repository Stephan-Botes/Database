USE ComicStore;
CREATE TABLE Issues (
ID INT not null IDENTITY (1,1),
IssueID INT not null,
Title VARCHAR (100),
PublicationDate DATETIME,
Publisher VARCHAR (100),
SeriesNumber VARCHAR (100),
[Description] VARCHAR (100),
CoverImage VARCHAR (100)
)

ALTER TABLE Issues
add constraint pk_Issues
primary key (ID)

ALTER TABLE Issues
ALTER COLUMN CoverImage NVARCHAR (255);