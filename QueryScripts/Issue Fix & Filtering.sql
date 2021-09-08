USE ComicStore

SELECT REPLACE(Title, '"', '') AS Title, SeriesNumber FROM Issues 
GROUP BY Title, SeriesNumber ORDER BY Title

SELECT
    Title AS Title, 
    STRING_AGG(SeriesNumber,',') AS Series
FROM Issues
--WHERE Title = '52'
GROUP BY Title

SELECT TOP 10 * FROM Issues

SELECT DISTINCT SeriesNumber FROM Issues

SELECT * FROM Issues WHERE Title='"Sins of Youth: Superman'

UPDATE Issues 
SET		
	PublicationDate = SeriesNumber, 
	Publisher = Description,
	Description = LEFT (CoverImage, 100)
WHERE
	TITLE IN (
	'"Sins of Youth: Superman')
	--'"All-New',
	--'"Francis',
	--'"Frankenstein',
	--'"Green Lantern: Brightest Day',
	--'"I',
	--'"Marvel Zombies The Book of Angels',
	--'"Models',
	--'"Superman',
	--'"Superman')

UPDATE Issues
SET
	SeriesNumber = 1
WHERE 
	Title = '"Sins of Youth: Superman'

UPDATE I
SET
	Title = REPLACE(Title, '"','')
--SELECT * 
FROM Issues I
WHERE
	Title LIKE '"%'
	