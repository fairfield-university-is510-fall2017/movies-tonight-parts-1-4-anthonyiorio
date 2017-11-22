USE `MOVIESTONIGHT`;

INSERT INTO Movie (Title, Rating)
SELECT DISTINCT MTitle, Rating
FROM datasheet;

INSERT INTO Theater (TName, Location, Phone)
SELECT DISTINCT TName, Location, Phone
FROM datasheet;

INSERT INTO Artist (TName)
SELECT DISTINCT TName
FROM datasheet;

SELECT * FROM Theater;

INSERT INTO `ShowTime` (`ShowTime`, `MovieID`, `TheaterID`)
	SELECT DISTINCT ShowTime, MOVIE.ID,THEATER.ID
    FROM MOVIE JOIN DATASHEET ON (Movie.Title = DATASHEET.MTitle)
				JOIN THEATER ON (`DATASHEET`. `TName` = `THEATER`. `TName`);
                
SELECT * FROM `ShowTime`;

INSERT INTO `CREDITS` (`CCode`, `MID`, `AID`)
	SELECT DISTINCT CCode, Movies.ID, Artists.ID
    FROM MOVIE JOIN DATASHEET ON (Movies.Title = DATASHEET.MTitle)
				JOIN ARTISTS ON (DATASHEET.CName = Artists.`Name`);
                
SELECT * FROM `Credits`;

-- Check for duplicate rows
SELECT TName, MTitle, ShowTime, CName, CCode,count(*) as RowCount
FROM DATASHEET
GROUP BY TName, MTitle, ShowTime, CName,CCode
HAVING RowCount >1;
    