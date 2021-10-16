CREATE DATABASE Project_DB
GO
USE Project_DB
GO

CREATE TABLE [User] (
  UserID CHAR(6) CHECK (UserID LIKE 'USR[0-9][0-9][0-9]') PRIMARY KEY,
  Nickname VARCHAR(MAX) CHECK (LEN(Nickname) > 5),
  FullName VARCHAR(MAX),
  Email VARCHAR(MAX) CHECK(Email LIKE '%@%'),
  City VARCHAR(MAX),
  Description VARCHAR(MAX),
)

CREATE TABLE Genre(
  GenreID CHAR(6) CHECK (GenreID LIKE 'GEN[0-9][0-9][0-9]') PRIMARY KEY,
  Name VARCHAR(MAX),
)

CREATE TABLE Director(
  [DirectorID] CHAR(6) CHECK (DirectorID LIKE 'DIR[0-9][0-9][0-9]') PRIMARY KEY,
  [Name] VARCHAR(MAX),
  [Email] VARCHAR(MAX) CHECK(Email LIKE '%@%'),
  [City] VARCHAR(MAX),
  [Address] VARCHAR(MAX),
  [Phone] NUMERIC(15),
)

CREATE TABLE Publisher(
  [PublisherID] CHAR(6) CHECK (PublisherID LIKE 'PUB[0-9][0-9][0-9]') PRIMARY KEY,
  [Name] VARCHAR(MAX),
  [Email] VARCHAR(MAX),
  [City] VARCHAR(MAX),
  [Address] VARCHAR(MAX) CHECK (LEN(Address) > 15),
  [Phone] NUMERIC(15), 
)

CREATE TABLE Movie ( 
  [MovieID] CHAR(6) CHECK (MovieID LIKE 'MOV[0-9][0-9][0-9]') PRIMARY KEY,
  [DirectorID] CHAR(6) FOREIGN KEY
    REFERENCES [Director](DirectorID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  [PublisherID] CHAR(6) FOREIGN KEY
    REFERENCES [Publisher](PublisherID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  [Title] VARCHAR(MAX),
  [Description] VARCHAR(MAX) CHECK (LEN(Description) > 20),
  [ReleaseDate] DATE CHECK(YEAR(ReleaseDate) BETWEEN 2000 AND 2016),
  [Price] INT
)

CREATE TABLE MovieReview (
	UserID CHAR(6) FOREIGN KEY References [User] (UserID),
	MovieID CHAR(6)  FOREIGN KEY References Movie (MovieID),
	RecommendationStatus VARCHAR(MAX) Check (RecommendationStatus LIKE 'Recommended' OR RecommendationStatus LIKE 'Not Recommended'),
	ReviewContent VARCHAR(MAX) CHECK (LEN(ReviewContent) > 20),
	ReviewDate DATE

	PRIMARY KEY(UserID, MovieID)
)

CREATE TABLE MovieDetail (
  [MovieID] CHAR(6) CHECK (MovieID LIKE 'MOV[0-9][0-9][0-9]'),
  [GenreID] CHAR(6) CHECK (GenreID LIKE 'GEN[0-9][0-9][0-9]'),

  PRIMARY KEY(MovieID,GenreID),
  FOREIGN KEY(MovieID) REFERENCES Movie(MovieID),
  FOREIGN KEY(GenreID) REFERENCES Genre(GenreID)
)

CREATE TABLE SalesTransaction (
  [SalesTransactionID] CHAR(6) CHECK (SalesTransactionID LIKE 'SAL[0-9][0-9][0-9]') PRIMARY KEY,
  [UserID] CHAR(6) FOREIGN KEY
    REFERENCES [User](UserID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  [MovieID] CHAR(6) FOREIGN KEY
    REFERENCES [Movie](MovieID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  [TransactionDate] DATE NOT NULL,
  [Quantity] INT,

  CONSTRAINT checkUserID CHECK (UserID LIKE 'USR[0-9][0-9][0-9]'),
  CONSTRAINT checkMovieID CHECK (MovieID LIKE 'MOV[0-9][0-9][0-9]')
)