-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books INNER JOIN authors ON books.author_id = authors.id WHERE name = 'Milan Kundera';
-- Find all books written by an author from China or the UK.
SELECT * FROM books INNER JOIN authors ON books.author_id = authors.id WHERE nationality = 'United Kingdom' OR nationality = 'China';
-- Find out how many books Albert Camus wrote.
SELECT COUNT(*) FROM books INNER JOIN authors ON books.author_id = authors.id WHERE name = 'Albert Camus';
-- Find out how many books were written by US authors.
SELECT COUNT(*) FROM books INNER JOIN authors ON books.author_id = authors.id WHERE nationality = 'United States of America';
-- Find all books written after 1930 by authors from Argentina.
SELECT * FROM books INNER JOIN authors ON books.author_id = authors.id WHERE nationality = 'Argentina' AND publication_date > 1930;
-- Find all books written before 1980 by authors not from the US.
SELECT * FROM books INNER JOIN authors ON books.author_id = authors.id WHERE nationality != 'United States of America' AND publication_date < 1980;
-- Find all authors whose names start with 'J'.
SELECT * FROM books INNER JOIN authors ON books.author_id = authors.id WHERE name LIKE 'J%';
-- Find all books whose titles contain 'the'.
SELECT * FROM books INNER JOIN authors ON books.author_id = authors.id WHERE title LIKE '%the%';
-- Find all authors who have written books with that start with the letter 'N'.
SELECT authors FROM books INNER JOIN authors ON books.author_id = authors.id WHERE title LIKE 'N%';
