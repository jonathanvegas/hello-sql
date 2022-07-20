CREATE TABLE Books_javv(
    Id INT PRIMARY KEY,
    Title TEXT,
    Genre TEXT,
    Author TEXT,
    Qty INTEGER
)

CREATE TABLE Users_javv(
    Id INT PRIMARY KEY,
    F_name TEXT,
    L_name TEXT,
    Email VARCHAR(200) UNIQUE NOT NULL
)

ALTER TABLE Users_javv
MODIFY COLUMN Email VARCHAR(200) NOT NULL;

CREATE TABLE Checkout_javv(
    Id INT PRIMARY KEY,
    Book_Id INT,
    Users_Id INT,
    Checkout_date TEXT,
    Return_date DATETIME,
    FOREIGN KEY (Book_Id) REFERENCES
    Books_javv(Id),
    FOREIGN KEY (Users_Id) REFERENCES
    Users_javv(Id)
)

INSERT INTO Books_javv 
VALUES(1,"Cronica de una muerte anunciada", "Drama", "Gabriel Garcia Marques", 5)
INSERT INTO Books_javv (Id, Title, Genre, Author)
VALUES(2,"El mago de la cara de vidrio", "Ficcion", "Eduardo Liendo")
INSERT INTO Books_javv 
VALUES(3,"The old man and the sea", "Ficcion", "Ernest Heminway", 15)

INSERT INTO Books_javv
VALUES
(4,"Tuesday with Maury", "Fiction", "Mitch Albom", 9),
(5,"Rich dad poor dad", "Self Help", "Robert Kiyosaki", 19),
(6,"Tale of 2 cities", "Fiction", "Charles Dickens", 1)



UPDATE Books_javv
SET Qty = 10
WHERE Id = 2

UPDATE Books_javv
SET Genre = "Fiction"
WHERE Id <> 1

select * from Books_javv

SELECT Title
FROM Books_javv
WHERE Genre IN ('Fiction', 'Self Help')