USE Project_DB

INSERT INTO [User]
VALUES
  ('USR000','Itoppp','Christophe Pratihata','chrissekuy@gmail.com','Jakarta','Anak keren'),
  ('USR001','Leoooo','Leonardo Ignatius','leoashiap@gmail.com','Jakarta','Anak panutan'),
  ('USR002','Reiiii','Reynaldy Sukamto','reyswag@gmail.com', 'Bandung', 'Anak front-end'),
  ('USR003','Fachryy','Fachry Bin Ladin','fachryganteng@gmail.com','Purwakarta', 'Orang berpendidikan'),
  ('USR004','Udinooo','Udin Blek','udinblek@yahoo.com','Jakarta',  'Memiliki hobi nonton'),
  ('USR005','Brunoss','Bruno Fernandes','brunofernandes@gmail.com','Surabaya', 'Pemain sepakbola'),
  ('USR006','Melise','Meliska Susanti','meliskasusanti@yahoo.com', 'Solo', 'Berstatus single'),
  ('USR007','Torress','Ferran Torres','ferrantorres@sunib.ca.id', 'Malang', 'Model majalah SinarIndah'),
  ('USR008','Jemsss','James Suhardi','jameshardi@gmail.com', 'Semarang', 'Mahasiswa Binus University'),
  ('USR009','Fikons','Fico Odley','ficoodley@yahoo.com','Bogor','Bodybuilder')

INSERT INTO Genre 
VALUES 
  ('GEN000','Drama'),
  ('GEN001','Horror'),
  ('GEN002','Mistery'),
  ('GEN003','Comedy'),
  ('GEN004','Romance'),
  ('GEN005','Documentary'),
  ('GEN006','Thriller'),
  ('GEN007','Action'),
  ('GEN008','Crime'),
  ('GEN009','History')

INSERT INTO Director 
VALUES
  ('DIR000', 'Jesse', 'Jesse@binus.ac.id', 'Tangsel', 'Jl. Rumahnya', 0215556969),
  ('DIR001', 'Boerhan', 'Boerhan@gmail.com', 'Ciledoek', 'Sebelah Tetangganya', 0865888777),
  ('DIR002', 'Burhan Jr', 'BoerhanJr@gmail.com', 'Ciledoek', 'Sebelah Tetangganya', 0865888777),
  ('DIR003','Ronaldo Messi','ronaldo.messi@yahoo.com','Paris','Jl. duitbanyak',08123456988),
  ('DIR004', 'Reinaldy Sins', 'Reinaldy@sunib.ca.di', 'Jakarta', 'Jl. Anggur', 081988217654),
  ('DIR005', 'SayaLupa', 'LupaSaya@sunib.ca.di', 'Dubai', 'Dubai Street', 036333444),
  ('DIR006', 'Cak Lontong', 'Lontong@gmail.com', 'Tangsel', 'BDS City', 0215544969),
  ('DIR007', 'Wadesdes', 'wades@steam.com', 'Bandung', 'Jl. Jalan', 021222222),
  ('DIR008', 'Udine', 'Ud@gmail.com', 'Pekalongan', 'Jl. Longan', 021232323),
  ('DIR009', 'Leo Adhitya', 'Letya@gmail.com', 'Jakarta Timur', 'Jl.Timoer', 021242443)

INSERT INTO Publisher
VALUES
  ('PUB000','Talitha Broughton','talitha.broughton@gmail.com','Jakarta','Jl. Abadi Indah No 20/16',0812121213),
  ('PUB001','Ahmad Mclean','ahmad.mclean@gmail.com','Brussels','Jl. Amal Makmur No 10/18',083111554),
  ('PUB002','Bayley Robbins','bayley.robbins@gmail.com','Jakarta','Jl. Amel Makmur No 20/29',087456312),
  ('PUB003','Sanjay Jaramillo','sanjay.jaramillo@gmail.com','Seoul','Jl. Imel Yahoo No 20/12',0851236455),
  ('PUB004','Brooklyn Schroeder','brooklyn.schroeder@gmail.com','Jakarta','Jl.Bagus Banget No 90/80',08425624),
  ('PUB005','Leopold Jenkins','leopold.jenkins@gmail.com','Brussels','Jl.Bahagia Sekali No 10/10',0831315105),
  ('PUB006','Haaris Haworth','haaris.haworth@gmail.com','Jakarta','Jl. Benda Mati No 20/25',0874154515),
  ('PUB007','Mohsin Trejo','mohsin.trejo@gmail.com','Brussels','Jl. Berlayar Dipantai No 13/16',08226614559),
  ('PUB008','Haidar Shannon','haidar.shannon@gmail.com','Jakarta','Jl. Cacing Tanah Kepanasan No 10/10',08435696332),
  ('PUB009','Ritchie Salter','ritchie.salter@gmail.com','Jakarta','Jl. Cicak Didinding No 11/13',08332132524)

INSERT INTO Movie
VALUES
	('MOV000', 'DIR000', 'PUB000', 'Pirates', 'Film ini menceritakan tentang petualangan bajak laut', '2012-09-10', 20000),
	('MOV001', 'DIR001', 'PUB001', 'Enoli', 'Film ini menceritakan tentang petualangan dari adik detektif shareloc home', '2012-09-09', 21000),
    ('MOV002', 'DIR002', 'PUB002', 'Spongebob', 'Film ini menceritakan tentang petualangan spongebob', '2010-02-18', 50000),
    ('MOV003', 'DIR003', 'PUB003', 'IronMan', 'Film ini menceritakan tentang perjuangan sebuah manusia baja', '2008-09-30', 35000),
    ('MOV004', 'DIR004', 'PUB004', 'Batman', 'Batman adalah superhero yang sangat baik', '2000-02-01', 90000),
    ('MOV005', 'DIR005', 'PUB005', 'CicakMan', 'Film ini menceritakan tentang perjuangan manusia cicak', '2006-12-07', 20000),
    ('MOV006', 'DIR006', 'PUB006', 'AntWoman', 'Film ini menceritakan tentang petualangan semut', '2001-07-10', 10000),
    ('MOV007', 'DIR007', 'PUB007', 'Wonder Woman 1984', 'Wonder Woman squares off against Maxwell Lord and the Cheetah, a villainess who possesses superhuman strength and agility.', '2008-12-16', 20000),
    ('MOV008', 'DIR008', 'PUB008', 'Robin', 'Film ini menceritakan tentang superhero', '2002-02-22', 100000),
    ('MOV009', 'DIR009', 'PUB009', 'Cari Nemi', 'Film ini menceritakan tentang petualangan seorang ayah yang mencari anaknya bernama nemi', '2011-02-27', 25000),
    ('MOV010', 'DIR000', 'PUB000', 'Find Shark', 'Film ini menceritakan tentang petualangan hiu', '2010-04-01', 85000),
    ('MOV011', 'DIR001', 'PUB001', 'Monster Hunter the Movie', 'Behind our world, there is another -- a world of dangerous and powerful monsters that rule their domain with deadly ferocity.', '2001-12-03', 22000),
    ('MOV012', 'DIR002', 'PUB002', 'HxH', 'The show features the protagonist Gon, on a mission to train himself as a hunter. He reunites with his father, who is alive and an accomplished hunter too.', '2011-10-02', 20000),
    ('MOV013', 'DIR003', 'PUB003', 'Catwoman', 'Film ini menceritakan tentang petualangan kucing', '2007-01-20', 10000),
    ('MOV014', 'DIR004', 'PUB004', 'The dog of wallriver', 'Film ini menceritakan tentang petualangan seseorang menjadi kaya', '2004-09-08', 27000)

SELECT * FROM Movie

INSERT INTO MovieDetail
VALUES 
    ('MOV000', 'GEN000'),
    ('MOV001', 'GEN001'),
    ('MOV002', 'GEN002'),
    ('MOV003', 'GEN003'),
    ('MOV004', 'GEN004'),
    ('MOV005', 'GEN005'),
    ('MOV006', 'GEN006'),
    ('MOV007', 'GEN007'),
    ('MOV008', 'GEN008'),
    ('MOV009', 'GEN009'),
    ('MOV010', 'GEN000'),
    ('MOV011', 'GEN001'),
    ('MOV012', 'GEN002'),
    ('MOV013', 'GEN003'),
    ('MOV014', 'GEN004'),
    ('MOV000', 'GEN005'),
    ('MOV001', 'GEN006'),
    ('MOV002', 'GEN007'),
    ('MOV003', 'GEN008'),
    ('MOV004', 'GEN009'),
    ('MOV005', 'GEN000'),
    ('MOV006', 'GEN001'),
    ('MOV007', 'GEN002'),
    ('MOV008', 'GEN003'),
    ('MOV009', 'GEN004')

INSERT INTO SalesTransaction
VALUES
('SAL000', 'USR000', 'MOV000', '2013-09-10', 8),
('SAL001', 'USR001', 'MOV001', '2010-10-10', 50),
('SAL002', 'USR002', 'MOV002', '2011-06-10', 4),
('SAL003', 'USR003', 'MOV003', '2013-09-19', 3),
('SAL004', 'USR004', 'MOV004', '2013-05-22', 2),
('SAL005', 'USR005', 'MOV005', '2013-09-10', 1),
('SAL006', 'USR006', 'MOV006', '2002-09-11', 5),
('SAL007', 'USR007', 'MOV007', '2009-07-12', 2),
('SAL008', 'USR008', 'MOV008', '2013-09-13', 2),
('SAL009', 'USR009', 'MOV009', '2012-09-16', 1),
('SAL010', 'USR000', 'MOV010', '2013-07-17', 2),
('SAL011', 'USR001', 'MOV011', '2014-05-13', 7),
('SAL012', 'USR002', 'MOV012', '2012-12-15', 6),
('SAL013', 'USR003', 'MOV013', '2009-08-16', 4),
('SAL014', 'USR004', 'MOV014', '2006-09-18', 3),
('SAL015', 'USR005', 'MOV000', '2014-04-19', 1),
('SAL016', 'USR006', 'MOV001', '2004-04-22', 5),
('SAL017', 'USR007', 'MOV002', '2013-03-09', 2),
('SAL018', 'USR008', 'MOV003', '2009-02-09', 2),
('SAL019', 'USR009', 'MOV004', '2005-03-07', 4),
('SAL020', 'USR000', 'MOV005', '2007-10-07', 4),
('SAL021', 'USR001', 'MOV006', '2003-09-20', 7),
('SAL022', 'USR002', 'MOV007', '2013-08-03', 8),
('SAL023', 'USR003', 'MOV008', '2015-07-18', 1),
('SAL024', 'USR004', 'MOV009', '2014-06-22', 1)

SELECT * FROM SalesTransaction

INSERT INTO MovieReview
VALUES
('USR000', 'MOV000', 'Recommended', 'Film ini gak terlalu bagus, ceritanya biasa.', '2013-09-10'),
('USR001', 'MOV001', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2010-10-10'),
('USR002', 'MOV002', 'Not Recommended', 'Film ini gak terlalu bagus, ceritanya biasa.', '2011-06-10'),
('USR003', 'MOV003', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2013-09-24'),
('USR004', 'MOV004', 'Not Recommended', 'Film ini gak terlalu bagus, ceritanya biasa.', '2013-05-10'),

('USR005', 'MOV005', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2013-09-10'),
('USR006', 'MOV006', 'Not Recommended', 'Film ini gak terlalu bagus, ceritanya biasa.', '2002-09-11'),
('USR007', 'MOV007', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2009-07-12'),
('USR008', 'MOV008', 'Not Recommended', 'Film ini gak terlalu bagus, ceritanya biasa.', '2013-09-13'),
('USR009', 'MOV009', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2012-09-16'),

('USR000', 'MOV010', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2013-07-17'),
('USR001', 'MOV011', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2014-05-13'),
('USR002', 'MOV012', 'Not Recommended', 'Film ini gak terlalu bagus, ceritanya biasa.', '2012-12-15'),
('USR003', 'MOV013', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2009-08-16'),
('USR004', 'MOV014', 'Not Recommended', 'Film ini gak terlalu bagus, ceritanya biasa.', '2006-09-18'),

('USR005', 'MOV000', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2014-04-19'),
('USR006', 'MOV001', 'Not Recommended', 'Film ini gak terlalu bagus, ceritanya biasa.', '2004-04-09'),
('USR007', 'MOV002', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2013-03-09'),
('USR008', 'MOV003', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2009-02-09'),
('USR009', 'MOV004', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2005-03-07'),

('USR000', 'MOV005', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2007-10-07'),
('USR001', 'MOV006', 'Not Recommended', 'Film ini gak terlalu bagus, ceritanya biasa.', '2003-09-04'),
('USR002', 'MOV007', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2013-08-03'),
('USR003', 'MOV008', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2015-07-18'),
('USR004', 'MOV009', 'Recommended', 'Film ini bagus, ceritanya menarik.', '2014-06-18')
	
SELECT * FROM MovieReview