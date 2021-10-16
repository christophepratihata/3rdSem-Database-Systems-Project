USE Project_DB

-- Jawaban soal Bagian E -- 
--1
SELECT 
	MovieReview.MovieID,
	Movie.Title,
	Movie.Description,
	[Reviews Movie] = CAST ( COUNT(MovieReview.MovieID) AS VARCHAR)+ ' review(s)' 
FROM 
	Movie, MovieReview, [User]
WHERE
	Movie.MovieID = MovieReview.MovieID AND 
	[User].UserID = MovieReview.UserID AND
	([User].City = 'Bandung' OR MovieReview.RecommendationStatus = 'Not Recommended')
GROUP BY
	MovieReview.MovieID,
	Movie.Title,
	Movie.Description


--2
SELECT
  Genre.GenreID,
  Genre.Name,
  [TotalMovie] = COUNT(Title)

FROM Genre, Movie, MovieDetail, Director
WHERE 
  Movie.MovieID = MovieDetail.MovieID AND
  Genre.GenreID = MovieDetail.GenreID AND
  Director.DirectorID = Movie.DirectorID AND
  Director.DirectorID BETWEEN 'DIR004' AND 'DIR008' AND
  MONTH(Movie.ReleaseDate) = '02'
GROUP BY Genre.GenreID, Genre.Name


--3 
SELECT
	Director.DirectorID,
	[DirectorName] = Director.Name,
	[Local Phone] = '+62' + CAST(Director.Phone AS VARCHAR),
	[MovieSold] = SUM(Quantity),
	[Total Transaction] = COUNT(SalesTransactionID)
FROM 
	Director,SalesTransaction,Movie
WHERE
	Director.DirectorID = Movie.DirectorID AND
	Movie.MovieID = SalesTransaction.MovieID
GROUP BY
	Director.DirectorID,Director.Name,Director.Phone
HAVING
	SUM(Quantity) >= 20


--4
SELECT 
	[UserNickname] = [User].Nickname,
	[User City] = UPPER([User].City),
	[Total Movie Purchased] = SUM(Quantity),
	[Movie Owned] = COUNT(Title)
FROM	
	[User],SalesTransaction,Movie
WHERE
	[User].UserID = SalesTransaction.UserID AND
	Movie.MovieID = SalesTransaction.MovieID AND
	([User].UserID = 'USR002' OR [User].UserID = 'USR003') AND
	MONTH(TransactionDate) % 2 = 1
GROUP BY
	[User].Nickname,[User].City


--5
SELECT
	[Numeric User Id] = RIGHT([User].UserID,3),
	[Nickname] = UPPER([User].Nickname),
	[UserCity] = [User].City
FROM
	[User],
	(
		SELECT
			average = AVG(Quantity)
		FROM 
			SalesTransaction
	) AS AvgCol,
	SalesTransaction
WHERE 
	[User].Nickname LIKE '%I%' AND
	[User].UserID = SalesTransaction.UserID
GROUP BY
	[User].UserID,[User].Nickname,[User].City,average
HAVING	
	SUM(Quantity) >= AvgCol.average


--6
SELECT
	Movie.MovieID,
	[MovieTitle] = Title,
	[PublisherName] = Publisher.Name,
	[Publisher Email] = LEFT(Publisher.Email, CHARINDEX('@',Publisher.Email) - 1)

FROM
	Movie, Publisher, SalesTransaction,
	(
		SELECT
			maxquantity = MAX(Quantity)
		FROM
			SalesTransaction
		WHERE 
			DAY(TransactionDate) = 22
	) AS QCol
WHERE
	Movie.MovieID = SalesTransaction.MovieID AND
	Movie.PublisherID = Publisher.PublisherID 
	
GROUP BY
	Movie.MovieID, Title, Publisher.Name, Email, Quantity,maxquantity
HAVING
	Quantity > QCol.maxquantity


--7
SELECT
	Director.DirectorID,
	[DirectorName] = Director.Name,
	[Movie Title] = LOWER(Movie.Title),
	[Total Genre] = CAST(COUNT(Genre.GenreID) AS VARCHAR) + ' genre(s)'
FROM
	Director,Movie,MovieDetail,Genre,
	(
		SELECT
			MaxReleaseSept = MAX(ReleaseDate)
		FROM
			Movie,Director
		WHERE
			Director.DirectorID = Movie.DirectorID AND
			MONTH(ReleaseDate) = 9
	) AS MaxReleaseCol
WHERE
	Director.DirectorID = Movie.DirectorID AND
	Movie.MovieID = MovieDetail.MovieID AND
	Genre.GenreID = MovieDetail.GenreID AND
	ReleaseDate = DATEADD(DD,-1,MaxReleaseCol.MaxReleaseSept)
GROUP BY
	Director.DirectorID,
	Director.Name,
	Movie.Title,
	MaxReleaseCol.MaxReleaseSept


--8
SELECT
	[User].Nickname,
	[User First Name] = LEFT([User].FullName, CHARINDEX(' ', [User].FullName) - 1),
	[Total Quantity] = SUM(Quantity)
FROM
	[User],
	SalesTransaction,
	(
		SELECT
			[MaxQuantity] =MAX(Quantity) 
		FROM
			SalesTransaction 
		WHERE 
			DAY(TransactionDate) = 20 
		GROUP BY SalesTransaction.SalesTransactionID
	)AS MaxCol
WHERE
	[User].UserID = SalesTransaction.UserID 
GROUP BY
	[User].Nickname, [User].FullName,MaxQuantity
HAVING 
	SUM(Quantity) >= MaxCol.MaxQuantity


--9
CREATE VIEW CustomUserViewer
AS
SELECT
	[User].UserID,
	[User].Nickname,
	[Max Quantity] = MAX(Quantity),
	[Min Quantity] = MIN(Quantity),
	TransactionDate

FROM
	[User],
	SalesTransaction
WHERE	
	[User].UserID = SalesTransaction.UserID AND
	DAY(TransactionDate) = '19' AND 
	[User].Nickname LIKE '%h%'
GROUP BY
	[User].UserID, [User].Nickname, TransactionDate

SELECT * FROM CustomUserViewer


--10
CREATE VIEW CustomPublisherViewer
	AS

SELECT
	[Publisher Name] = Publisher.Name,
	Title,
	[Release Date] = CONVERT(VARCHAR, ReleaseDate, 106),
	[Total Purchase] = SUM(Quantity),
	[Minimum Purchase] = MIN(Quantity)
FROM
	Publisher,
	Movie,
	SalesTransaction
WHERE
	Movie.PublisherID = Publisher.PublisherID AND
	Movie.MovieID = SalesTransaction.MovieID AND
	Publisher.City LIKE 'Jakarta' AND
	MONTH(ReleaseDate) = '07'
GROUP BY
	Publisher.Name, Title, ReleaseDate

	SELECT * FROM CustomPublisherViewer