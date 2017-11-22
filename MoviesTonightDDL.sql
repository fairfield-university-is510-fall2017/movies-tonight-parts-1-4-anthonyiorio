CREATE DATABASE MoviesTonight;

USE MoviesTonight;

CREATE TABLE Artist (
	ID int(11) NOT NULL auto_increment,
    TName varchar(50) default NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE Credit (
	ID int(11) NOT NULL auto_increment,
    CCode varchar(1) default NULL,
    ArtistID int(11) default NULL,
    MovieID int(11) default NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE Movie (
	ID int(11) NOT NULL auto_increment,
    Title varchar(50) default NULL,
    Rating varchar(5) default NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE ShowTime (
	ID int(11) NOT NULL auto_increment,
    ShowTime time default NULL,
    MovieID int(11) default NULL,
	TheaterID int(11) default NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Theater (
	ID int(11) NOT NULL auto_increment,
    TName varchar(50) default NULL,
    Location varchar(50) default NULL,
    Phone int(10) default NULL,
    PRIMARY KEY (ID)
);
    
ALTER TABLE Credit
  ADD FOREIGN KEY (ArtistID)
    REFERENCES Artist (ID);

ALTER TABLE Credit
  ADD FOREIGN KEY (MovieID)
    REFERENCES Movie (ID);

ALTER TABLE ShowTime
  ADD FOREIGN KEY (MovieID)
    REFERENCES Movie (ID);
    
ALTER TABLE ShowTime
  ADD FOREIGN KEY (TheaterID)
    REFERENCES Theater (ID);