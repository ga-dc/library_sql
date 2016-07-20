-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;
-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;
-- Get all authors born in the 20th centruy or later
SELECT * FROM authors WHERE birth_year > 1899;
-- Get all authors born in the USA
SELECT * FROM authors WHERE nationality = 'USA';

-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;
-- Get all books published before 1989
SELECT * FROM books WHERE publication_date < 1989;

-- Get just the title of all books.
SELECT title FROM books;
-- Get just the year that 'A Dance with Dragons' was published
-- Cry when you realize how long it's been
SELECT publication_date FROM books WHERE title = 'A Dance with Dragons';

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT * FROM books WHERE title LIKE '%the%';
-- Add yourself as an author
INSERT INTO authors(name) VALUES('Rasheeda Alexander');
-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books(title, author_id) VALUES ('How To Learn Ruby in 10 Steps', 9), ('Sardines, Hey and Pork and Beans!', 9);

-- Update one of your books to have a new title
INSERT INTO books(title, author_id) VALUES ('How To Learn Ruby in 10 Steps', 9), ('Sardines, Hey! And Pork and Beans!', 9);
-- Delete your books
DELETE FROM books WHERE author_id = 9;
-- Delete your author entry
DELETE FROM author WHERE name = 'Rasheeda Alexander'
