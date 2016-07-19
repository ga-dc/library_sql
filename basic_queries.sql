-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;
id |        name        |       nationality        | birth_year
----+--------------------+--------------------------+------------
 1 | Cao Xueqin         | China                    |       1715
 2 | J.K. Rowling       | United Kingdom           |       1965
 3 | James Baldwin      | United States of America |       1924
 4 | Jorge Luis Borges  | Argentina                |       1899
 5 | Haruki Murakami    | Japan                    |       1949
 6 | Milan Kundera      | Czechoslovakia           |       1929
 7 | Albert Camus       | France                   |       1913
 8 | George R.R. Martin | United States of America |       1945
(8 rows)

-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;
        name        | birth_year
--------------------+------------
 Cao Xueqin         |       1715
 J.K. Rowling       |       1965
 James Baldwin      |       1924
 Jorge Luis Borges  |       1899
 Haruki Murakami    |       1949
 Milan Kundera      |       1929
 Albert Camus       |       1913
 George R.R. Martin |       1945
(8 rows)

-- Get all authors born in the 20th centruy or later
SELECT * FROM authors WHERE birth_year > 1900;
 id |        name        |       nationality        | birth_year
----+--------------------+--------------------------+------------
  2 | J.K. Rowling       | United Kingdom           |       1965
  3 | James Baldwin      | United States of America |       1924
  5 | Haruki Murakami    | Japan                    |       1949
  6 | Milan Kundera      | Czechoslovakia           |       1929
  7 | Albert Camus       | France                   |       1913
  8 | George R.R. Martin | United States of America |       1945
(6 rows)

-- Get all authors born in the USA
SELECT * FROM authors WHERE nationality = 'United States of America';
 id |        name        |       nationality        | birth_year
----+--------------------+--------------------------+------------
  3 | James Baldwin      | United States of America |       1924
  8 | George R.R. Martin | United States of America |       1945
(2 rows)

-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;
 id |              title              | publication_date | author_id
----+---------------------------------+------------------+-----------
 26 | The Evidence of Things Not Seen |             1985 |         3
 27 | The Price of the Ticket         |             1985 |         3
(2 rows)

-- Get all books published before 1989
SELECT * FROM books WHERE publication_date < 1989;
 id |                      title                       | publication_date | author_id
----+--------------------------------------------------+------------------+-----------
  1 | Dream of the Red Chamber                         |             1750 |         1
 10 | Go Tell It on the Mountain                       |             1953 |         3
 11 | The Amen Corner                                  |             1954 |         3
 12 | Notes of a Native Son                            |             1955 |         3
 13 | Giovannis Room                                   |             1956 |         3
 14 | Nobody Knows My Name: More Notes of a Native Son |             1961 |         3
 15 | Another Country                                  |             1962 |         3
 16 | A Talk to Teachers                               |             1963 |         3
 17 | The Fire Next Time                               |             1963 |         3
 18 | Blues for Mister Charlie                         |             1964 |         3
 19 | Going to Meet the Man                            |             1965 |         3
 20 | Tell Me How Long the Trains Been Gone            |             1968 |         3
 21 | No Name in the Street                            |             1972 |         3
 22 | If Beale Street Could Talk                       |             1974 |         3
 23 | The Devil Finds Work                             |             1976 |         3
 24 | Just Above My Head                               |             1979 |         3
 25 | Jimmys Blues                                     |             1983 |         3
 26 | The Evidence of Things Not Seen                  |             1985 |         3
 27 | The Price of the Ticket                          |             1985 |         3
 30 | Fervor de Buenos Aires                           |             1923 |         4
 31 | Inquisiciones                                    |             1925 |         4
 32 | Luna de Enfrente                                 |             1925 |         4
 33 | El idioma de los argentinos                      |             1928 |         4
 34 | Cuaderno San Martín                              |             1929 |         4
 35 | Discusión                                        |             1957 |         4
 36 | Historia de la eternidad                         |             1936 |         4
 37 | El jardín de senderos que se bifurcan            |             1941 |         4
 38 | Seis problemas para don Isidro Parodi            |             1942 |         4
 39 | Hear the Wind Sing                               |             1987 |         5
 49 | The Joke                                         |             1967 |         6
 50 | The Farewell Waltz                               |             1972 |         6
 51 | Life Is Elsewhere                                |             1973 |         6
 52 | The Book of Laughter and Forgetting              |             1978 |         6
 53 | The Unbearable Lightness of Being                |             1984 |         6
 58 | The Stranger                                     |             1942 |         7
 59 | The Plague                                       |             1947 |         7
 60 | The Fall                                         |             1956 |         7
 61 | A Happy Death                                    |             1971 |         7
(38 rows)

-- Get just the title of all books.
SELECT title FROM books; #this query brought back too much data to paste here, trust me, it worked.

-- Get just the year that 'A Dance with Dragons' was published
SELECT publication_date FROM books WHERE title = 'A Dance with Dragons';
 publication_date
------------------
             2011
(1 row)
  -- Cry when you realize how long it's been
  sniff-sniff whyyyyyyyyyyyyy???

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT * FROM books WHERE title LIKE '%the%';
 id |                   title                   | publication_date | author_id
----+-------------------------------------------+------------------+-----------
  1 | Dream of the Red Chamber                  |             1750 |         1
  2 | Harry Potter and the Philosophers Stone   |             1997 |         2
  3 | Harry Potter and the Chamber of Secrets   |             1998 |         2
  4 | Harry Potter and the Prisoner of Azkaban  |             1998 |         2
  5 | Harry Potter and the Goblet of Fire       |             2000 |         2
  6 | Harry Potter and the Order of the Phoenix |             2003 |         2
  7 | Harry Potter and the Half-Blood Prince    |             2005 |         2
  8 | Harry Potter and the Deathly Hallows      |             2007 |         2
 10 | Go Tell It on the Mountain                |             1953 |         3
 15 | Another Country                           |             1962 |         3
 19 | Going to Meet the Man                     |             1965 |         3
 20 | Tell Me How Long the Trains Been Gone     |             1968 |         3
 21 | No Name in the Street                     |             1972 |         3
 27 | The Price of the Ticket                   |             1985 |         3
 29 | Jimmys Blues and Other Poems              |             2014 |         3
 39 | Hear the Wind Sing                        |             1987 |         5
 43 | South of the Border, West of the Sun      |             2000 |         5
 45 | Sputnik Sweetheart                        |             2001 |         5
 46 | Kafka on the Shore                        |             2005 |         5
 68 | I Swear the Dragons are Coming Soon       |             2014 |         8
(20 rows)

-- Add yourself as an author
INSERT INTO authors(name, nationality, birth_year) VALUES('Courtney Seitz', 'American', 1974);
INSERT 0 1
 id |        name        |       nationality        | birth_year
----+--------------------+--------------------------+------------
  1 | Cao Xueqin         | China                    |       1715
  2 | J.K. Rowling       | United Kingdom           |       1965
  3 | James Baldwin      | United States of America |       1924
  4 | Jorge Luis Borges  | Argentina                |       1899
  5 | Haruki Murakami    | Japan                    |       1949
  6 | Milan Kundera      | Czechoslovakia           |       1929
  7 | Albert Camus       | France                   |       1913
  8 | George R.R. Martin | United States of America |       1945
  9 | Courtney Seitz     | American                 |       1974
(9 rows)

-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books(title, publication_date, author_id) VALUES('Sad Pandas', 2017, 9);
INSERT 0 1
 id |   title    | publication_date | author_id
----+------------+------------------+-----------
 69 | Sad Pandas |             2017 |         9
(1 row)
INSERT INTO books(title, publication_date, author_id) VALUES('Sad Pandas 2', 2018, 9);
INSERT 0 1
 id |    title     | publication_date | author_id
----+--------------+------------------+-----------
 70 | Sad Pandas 2 |             2018 |         9
(1 row)

-- Update one of your books to have a new title
UPDATE books SET title = 'SP2' WHERE title = 'Sad Pandas 2';
UPDATE 1
id | title | publication_date | author_id
----+-------+------------------+-----------
70 | SP2   |             2018 |         9
(1 row)
-- Delete your books
DELETE FROM books WHERE title = 'Sad Pandas';
DELETE 1
DELETE FROM books WHERE title = 'SP2';
DELETE 1

-- Delete your author entry
DELETE FROM authors WHERE name = 'Courtney Seitz';
DELETE 1
