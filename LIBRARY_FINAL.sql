
USE [LIBRARY_FINAL]
CREATE DATABASE LIBRARY_FINAL
DROP DATABASE [LIBRARY_FINAL.sql]

GO
/****** Object:  StoredProcedure [dbo].[Populate_db_zoo]    Script Date: 3/27/2017 9:37:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT ON
GO
/*----------------- Creating Tables-----------------*/

CREATE TABLE Library_Branch (
BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
BranchName VARCHAR (70) NOT NULL,
Address VARCHAR (70) NOT NULL
);

CREATE TABLE Publisher (
PublishName VARCHAR (50) PRIMARY KEY NOT NULL,
Address VARCHAR (70) NOT NULL,
Phone INT NOT NULL
);

CREATE TABLE Books (
BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
Title VARCHAR (50) NOT NULL,
PublishName VARCHAR (50) NOT NULL CONSTRAINT fk_PublishName FOREIGN KEY REFERENCES Publisher (PublishName) ON UPDATE CASCADE ON DELETE CASCADE 
);

CREATE TABLE Book_Authors (
BookID INT NOT NULL CONSTRAINT fk_BookID FOREIGN KEY REFERENCES Books (BookID) ON UPDATE CASCADE ON DELETE CASCADE,
AuthorName VARCHAR (50) NOT NULL
);

CREATE TABLE Book_Copies (
BookID INT NOT NULL CONSTRAINT fk_BookID2 FOREIGN KEY REFERENCES Books (BookID) ON UPDATE CASCADE ON DELETE CASCADE,
BranchID INT NOT NULL CONSTRAINT fk_BranchID FOREIGN KEY REFERENCES Library_Branch (BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
Number_Of_Copies INT NOT NULL
);

CREATE TABLE Book_Loans (
BookID INT NOT NULL FOREIGN KEY REFERENCES Books (BookID) ON UPDATE CASCADE ON DELETE CASCADE,
BranchID INT NOT NULL FOREIGN KEY REFERENCES Library_Branch (BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
CardNo INT NOT NULL CONSTRAINT fk_CardNo FOREIGN KEY REFERENCES Borrower (CardNo) ON UPDATE CASCADE ON DELETE CASCADE,
DateOut DATE NOT NULL,
DateDue DATE NOT NULL
);

CREATE TABLE Borrower (
CardNo INT PRIMARY KEY NOT NULL IDENTITY (1,1),
Name VARCHAR (50) NOT NULL,
Address VARCHAR (70) NOT NULL,
Phone INT NOT NULL
);

INSERT INTO Library_Branch
(BranchName, Address)
VALUES
('Sharpstown', '22 elk St.'),
('Central', '13 Friday St.'),
('Hannibal', '380 Fulton St.'),
('Oswego', '55 Erie St.')
;

INSERT INTO Publisher
(PublishName, Address, Phone)
VALUES 
('Penguin', '441 17th St.', 315-200-4455),
('McGraw', '5572 21st St.', 303-762-2214),
('Shuga', '449 65th St.', 716-984-2251)
;

INSERT INTO Books 
(title, PublishName)
VALUES
('A Kid named Ghost', 'Shuga'),
('2nd Book', 'McGraw'),
('Sequal to the Greatest Book ever', 'McGraw'),
('4th Book', 'Penguin'),
('Inside the 36 Chambers', 'Shuga'),
('Raekwon the Chef', 'Penguin'),
('Killer Bs Swarm','McGraw'),
('Gravel Pitt', 'Penguin'),
('Protect ya Neck', 'Shuga'),
('RZA', 'McGraw'),
('Inspecta Deck', 'Penguin'),
('Word is Bond', 'Shuga'),
('The Lost Tribe', 'Penguin'),
('Behave', 'Penguin'),
('Powers', 'Shuga'),
('Higher Ground', 'McGraw'),
('Mothers Milk', 'Shuga'),
('Subway to Venus', 'McGraw'),
('Side 2', 'Penguin'),
('Knock me down', 'Shuga')
;

INSERT INTO Book_Authors
(BookID, AuthorName)
VALUES
(1,'John Stamos'),
(2,'Jeff LaMont'),
(3,'Billy Joel'),
(4,'Cathy Elliot'),
(5,'Russell Simmons'),
(6,'Shotgun Willie'),
(7, 'Tre Cool'),
(8, 'Stephen King'),
(9, 'Patrick Ewing'),
(10, 'Kemba Walker'),
(11, 'Joyce Manor'),
(12, 'John Starks'),
(13, 'john books')
;
SELECT * FROM Book_Copies;

INSERT INTO Book_Copies
(BookID, BranchID, Number_Of_Copies)
VALUES
(1, 1, 5),
(2, 1, 1),
(3, 1, 12),
(4, 1, 44),
(5, 1, 23),
(6, 1, 8),
(7, 1, 13),
(13, 1, 5),
(8, 1, 11),
(9, 1, 25),
(10, 1, 9),
(11, 1, 16),
(12, 1, 21),
(1, 2, 20),
(2, 2, 12),
(3, 2, 20),
(4, 2, 12),
(5, 2, 30),
(6, 2, 10),
(7, 2,2),
(8, 2, 10),
(9, 2, 9),
(10, 2, 18),
(11, 2, 9),
(12, 2, 11),
(1, 3, 9),
(2, 3, 8),
(3, 3, 11),
(4, 3, 17),
(5, 3, 22),
(6, 3, 20),
(7, 3, 15),
(8, 3, 11),
(9, 3, 19),
(10, 3, 5),
(11, 3, 9),
(12, 3, 10),
(1, 4, 12),
(2, 4, 10),
(3, 4, 9),
(4, 4, 21),
(5, 4, 22),
(6, 4, 10),
(7, 4, 9),
(8, 4, 18),
(9, 4, 5),
(10, 4, 7),
(11, 4, 22),
(12, 4, 20)
;

INSERT INTO Book_Loans
(BookID, BranchID,CardNo, DateOut, DateDue)
VALUES
(1, 3, 1, '09-12-2018', '10-12-2018'),
(2, 4, 8, '06-12-2018', '07-12-2018'),
(3, 4, 7, '09-16-2018', '10-16-2018'),
(1, 3, 5, '02-12-2018', '03-12-2018'),
(12, 3, 1, '09-12-2018', '10-12-2018'),
(10, 2, 7, '09-12-2018', '10-12-2018'),
(3, 1, 7, '02-12-2018', '03-12-2018'),
(7, 2, 7, '10-12-2018', '11-12-2018'),
(8, 4, 5, '07-12-2018', '08-12-2018'),
(9, 3, 5, '10-12-2018', '11-12-2018'),
(10, 4, 5, '03-12-2018', '04-12-2018'),
(4, 1, 5, '08-12-2018', '09-12-2018'),
(5, 3, 5, '11-12-2018', '12-12-2018'),
(6, 2, 5, '04-12-2018', '05-12-2018'),
(7, 3, 5, '02-12-2018', '03-12-2018'),
(8, 4, 4, '10-12-2018', '11-12-2018'),
(10, 4, 4, '09-22-2018', '10-22-2018'),
(11, 4, 4, '09-12-2018', '10-12-2018'),
(1, 1, 4, '09-16-2018', '10-16-2018'),
(2, 2, 4, '01-12-2018', '12-12-2018'),
(3, 2, 4, '11-12-2018', '12-12-2018'),
(4, 2, 4, '10-12-2018', '11-12-2018'),
(4, 1, 4, '08-12-2018', '09-12-2018'),
(5, 1, 4, '10-12-2018', '11-12-2018'),
(6, 3, 4, '07-12-2018', '08-12-2018'),
(7, 3, 4, '05-12-2018', '06-12-2018'),
(8, 3, 3, '07-12-2018', '08-12-2018'),
(9, 4, 3, '06-12-2018', '07-12-2018'),
(10, 4, 3, '01-12-2018', '02-12-2018'),
(11, 3, 3, '05-12-2018', '06-12-2018'),
(11, 4, 2, '09-12-2018', '10-12-2018'),
(12, 3, 2, '08-12-2018', '09-12-2018'),
(1, 4, 2, '05-12-2018', '06-12-2018'),
(2, 3, 2, '07-12-2018', '08-12-2018'),
(3, 1, 2, '09-12-2018', '10-12-2018'),
(6, 1, 2, '04-12-2018', '05-12-2018'),
(4, 1, 2, '07-12-2018', '08-12-2018'),
(7, 1, 2, '09-12-2018', '10-12-2018'),
(6, 3, 2, '01-12-2018', '02-12-2018'),
(8, 3, 1, '10-12-2018', '11-12-2018'),
(9, 4, 1, '08-12-2018', '09-12-2018'),
(10, 4, 1, '06-12-2018', '07-12-2018'),
(1, 3, 1, '03-12-2018', '02-12-2018'),
(11, 2, 7, '01-12-2018', '02-12-2018'),
(2, 3, 7, '03-12-2018', '04-12-2018'),
(3, 2, 7, '10-12-2018', '11-12-2018'),
(3, 2, 2, '02-12-2018', '01-12-2018'),
(5, 2, 1, '09-12-2011', '10-12-2011'),
(6, 2, 1, '09-12-2016', '10-12-2016'),
(7, 3, 1, '09-12-2017', '10-12-2017'),
(8, 3, 1, '09-22-2018', '10-22-2018'),
(8, 1, 8, '03-12-2018', '04-12-2018'),
(6, 4, 8, '06-12-2018', '07-12-2018'),
(7, 4, 8, '04-12-2018', '05-12-2018'),
(9, 4, 1, '10-12-2018', '11-12-2018'),
(2, 4, 1, '08-12-2018', '09-12-2018'),
(11, 1, 1, '09-12-2018', '10-12-2018'),
(12, 1, 1, '05-12-2018', '06-12-2018')
;

INSERT INTO Borrower
(Name, Address, Phone)
VALUES
('Brandan Joe','33 3rd st.', 315-200-2241),
('Harrold Hunter','32 3rd st.', 315-201-2041),
('Steve Barra','31 3rd st.', 335-201-2141),
('Tim Oconnor','30 3rd st.', 355-202-2141),
('Kerry Getz','35 3rd st.', 317-203-2141),
('Steve Williams','37 3rd st.', 215-209-2141),
('Josh Kalis','38 3rd st.', 315-219-2141),
('Brian Wenning','39 3rd st.', 318-229-2141)
;




SELECT * FROM Books;

SELECT Number_of_Copies
FROM Book_Copies
INNER JOIN Library_Branch ON Book_Copies.BranchID = Library_Branch.BranchID
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
WHERE Books.Title = 'The Lost Tribe'
AND Library_Branch.BranchName = 'Sharpstown'
;

SELECT
 Number_of_Copies, BranchName
FROM Book_Copies
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
INNER JOIN Library_Branch ON Book_Copies.BranchID = Library_Branch.BranchID
WHERE Books.Title = 'The Lost Tribe'
;

3)

SELECT COUNT (Number_of_Copies)
FROM Book_Copies
INNER JOIN Library_Branch ON Library_Branch.BranchID = Book_Copies.BookID
GROUP BY BranchName 
;

SELECT COUNT (Number_of_Copies)
FROM Book_Copies
INNER JOIN Book_Loans ON Book_Copies.BookID = Book_Loans.BookID
INNER JOIN Borrower ON Borrower.CardNo = Book_Loans.CardNo
GROUP BY Name, Address
ORDER BY  COUNT(Number_of_Copies)
;


SELECT 
Books.Title, Borrower.Name, Borrower.Address
FROM Book_Loans
INNER JOIN Borrower ON Book_Loans.CardNo = Borrower.CardNo
INNER JOIN Books ON Book_Loans.BookID = Books.Title
INNER JOIN Library_Branch ON Book_Loans.BranchID = Library_Branch.BranchID
WHERE BranchName= 'Sharpstown'
AND DateDue = convert (date, getdate())
;

7)
SELECT 
Books.title, number_of_Copies
FROM Book_Copies
INNER JOIN Book_Authors ON Books.BookID = Book_Authors.BookID
INNER JOIN Books ON Book_Copies.BookID = Books.BookID
INNER JOIN Library_Branch ON Library_Branch.BranchID = Book_Copies.BranchID
WHERE BranchName = 'Central'
;

 

SELECT Number_of_Copies
