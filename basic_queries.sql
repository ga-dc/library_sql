-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns


-- Get all information about all authors
SELECT * FROM authors;

-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;

-- Get all authors born in the 20th centruy or later
SELECT * FROM authors WHERE birth_year > 1900;

-- Get all authors born in the USA
SELECT * FROM authors WHERE nationality = 'United States of America';

-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;

-- Get all books published before 1989
SELECT * FROM books WHERE publication_date<1989;

-- Get just the title of all books.
SELECT title FROM books;

-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
SELECT year FROM books WHERE title = 'A Dance with Dragons'; 2011 =(

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT * FROM books WHERE title ILIKE '%the%';

-- Add yourself as an author
INSERT INTO authors (name, nationality, birth_year) VALUES ('Christopher Phillips', 'United States of America', 1990);

-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books (title, publication_date, author_id) VALUES ('I hate RUBY and you can too!', 2016, 9);
INSERT INTO books (title, publication_date, author_id) VALUES ('JS for dayzzzz!', 2016, 9);

-- Update one of your books to have a new title
UPDATE books SET title = 'Just Kidding RUBY is awesome' where title = 'I hate RUBY and you can too!';
-- Delete your books
DELETE FROM books WHERE publication_date = 2016;

-- Delete your author entry
DELETE FROM authors WHERE name = 'Christopher Phillips';
