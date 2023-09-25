--SOAL 1

CREATE DATABASE books_store;

CREATE TABLE books (
    Id_Buku INT AUTO_INCREMENT PRIMARY KEY,
    Judul_Buku VARCHAR(255),
    Pengarang VARCHAR(255),
    Tahun_Terbit INT,
    Penerbit VARCHAR(255),
    Tanggal_Dibuat DATE,
    Tanggal_Diupdate DATE
);

CREATE TABLE category (
    Id_Category INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Category VARCHAR(255),
    Tanggal_Dibuat DATE,
    Tanggal_Diupdate DATE
);


--SOAL 2

INSERT INTO books (Id_Buku, Judul_Buku, Pengarang, Tahun_Terbit, Penerbit, Tanggal_Dibuat, Tanggal_Diupdate)
VALUES
    (1, 'Building Microservices', 'Sam Newman', 2014, 'O''Reilly Media', '2023-09-18', '2023-09-18'),
    (2, 'Clean Code', 'Robert C. Martin', 2008, 'Prentice Hall', '2023-09-18', '2023-09-18'),
    (3, 'The Pragmatic Programmer', 'Andrew Hunt', 1999, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (4, 'Design Patterns', 'Erich Gamma', 1994, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (5, 'Introduction to Algorithms', 'Thomas H. Cormen', 1990, 'MIT Press', '2023-09-18', '2023-09-18'),
    (6, 'The Art of Computer Programming', 'Donald E. Knuth', 1968, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (7, 'Clean Architecture', 'Robert C. Martin', 2017, 'Prentice Hall', '2023-09-18', '2023-09-18'),
    (8, 'Refactoring', 'Martin Fowler', 1999, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (9, 'Domain-Driven Design', 'Eric Evans', 2003, 'Addison-Wesley', '2023-09-18', '2023-09-18'),
    (10, 'The Mythical Man-Month', 'Frederick Brooks', 1975, 'Addison-Wesley', '2023-09-18', '2023-09-18');

INSERT INTO category (Id_Category, Nama_Category, Tanggal_Dibuat, Tanggal_Diupdate)
VALUES
    (1, 'Pemrograman', '2023-09-18', '2023-09-18'),
    (2, 'Fiksi', '2023-09-18', '2023-09-18'),
    (3, 'Nonfiksi', '2023-09-18', '2023-09-18'),
    (4, 'Bisnis', '2023-09-18', '2023-09-18'),
    (5, 'Teknologi', '2023-09-18', '2023-09-18'),
    (6, 'Seni', '2023-09-18', '2023-09-18'),
    (7, 'Sejarah', '2023-09-18', '2023-09-18'),
    (8, 'Sains', '2023-09-18', '2023-09-18'),
    (9, 'Hukum', '2023-09-18', '2023-09-18'),
    (10, 'Kesehatan', '2023-09-18', '2023-09-18');


--SOAL 3
SELECT * FROM books;
SELECT * FROM category;


--SOAL 4
UPDATE books
SET Judul_Buku = 'Building Microservices: Designing Fine-Grained Systems 1st',
    Tahun_Terbit = 2015,
    Tanggal_Diupdate = '2023-09-20'
WHERE Id_Buku = 1;


--SOAL 5
DELETE FROM books WHERE Id_Buku = 10;
DELETE FROM category WHERE Id_Category = 10;


--SOAL 6
SELECT * FROM books WHERE penerbit = 'Addison-Wesley';
SELECT * FROM books WHERE tahun_terbit >= 2003 AND tahun_terbit <= 2023;
SELECT * FROM books WHERE judul_buku LIKE '%design%';


--SOAL 7
CREATE TABLE book_categories (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Id_Category INT,
    Id_Buku INT,
    Tanggal_Dibuat DATE,
    Tanggal_Diupdate DATE,
    FOREIGN KEY (Id_Category) REFERENCES category(Id_Category),
    FOREIGN KEY (Id_Buku) REFERENCES books(Id_Buku)
);


--SOAL 8
INSERT INTO book_categories (Id, Id_Category, Id_Buku, tanggal_dibuat, tanggal_diupdate)
VALUES
(1, 1, 2, '2023-09-18', '2023-09-18'),
(2, 5, 3, '2023-09-18', '2023-09-18'),
(3, 1, 1, '2023-09-18', '2023-09-18');


-- SOAL 9
SELECT books.Id_Buku AS id, books.judul_buku AS judul_buku, category.Nama_Category AS nama_category
FROM books
JOIN book_categories ON books.Id_Buku = book_categories.Id_Buku
JOIN category ON book_categories.Id_Category = category.Id_Category;


--SOAL 10
ALTER TABLE books ADD jumlah_halaman INT;



