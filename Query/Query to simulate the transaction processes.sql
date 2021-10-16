USE Project_DB

--Pada saat user membeli ticket, user akan mengisi data diri dan memilih movie apa yang ingin dibeli. Pada saat ini table User dan SalesTransaction akan terisi sebuah data baru.
INSERT INTO [User]
VALUES ('USR010','Adrien','Adrien Rianha','DrienHa@gmail.com','Jakarta','Anak Pertama')

INSERT INTO [SalesTransaction]
VALUES ('SAL025', 'USR010', 'MOV009', '2014-07-20', 2)

--Setelah user selesai menonton sebuah movie, user akan diminta untuk memberikan sebuah review kepada movie tersebut.
INSERT INTO [MovieReview]
VALUES ('USR010', 'MOV009', 'Recommended', 'Ceritanya menarik dan layak untuk ditonton bersama keluarga ataupun kekasih', '2013-09-10')