-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'George R.R. Martin';
id |                title                | publication_date | author_id | id |        name        |       nationality        | birth_year
----+-------------------------------------+------------------+-----------+----+--------------------+--------------------------+------------
63 | A Game of Thrones                   |             1996 |         8 |  8 | George R.R. Martin | United States of America |       1945
64 | A Clash of Kings                    |             1998 |         8 |  8 | George R.R. Martin | United States of America |       1945
65 | A Storm of Swords                   |             2000 |         8 |  8 | George R.R. Martin | United States of America |       1945
66 | A Feast for Crows                   |             2005 |         8 |  8 | George R.R. Martin | United States of America |       1945
67 | A Dance with Dragons                |             2011 |         8 |  8 | George R.R. Martin | United States of America |       1945
68 | I Swear the Dragons are Coming Soon |             2014 |         8 |  8 | George R.R. Martin | United States of America |       1945
(6 rows)

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'Milan Kundera';
id |                title                | publication_date | author_id | id |     name      |  nationality   | birth_year
----+-------------------------------------+------------------+-----------+----+---------------+----------------+------------
49 | The Joke                            |             1967 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
50 | The Farewell Waltz                  |             1972 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
51 | Life Is Elsewhere                   |             1973 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
52 | The Book of Laughter and Forgetting |             1978 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
53 | The Unbearable Lightness of Being   |             1984 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
54 | Immortality                         |             1990 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
55 | Slowness                            |             1995 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
56 | Identity                            |             1998 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
57 | Ignorance                           |             2000 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
(9 rows)

-- Find all books written by an author from China or the UK.
SELECT FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'China' OR authors.nationality = 'United Kingdom';

-- Find out how many books Albert Camus wrote.
Perhaps use JOIN and COUNT here, but not sure how...exactly...

-- Find out how many books were written by US authors.

-- Find all books written after 1930 by authors from Argentina.

-- Find all books written before 1980 by authors not from the US.

-- Find all authors whose names start with 'J'.

-- Find all books whose titles contain 'the'.

-- Find all authors who have written books with that start with the letter 'N'.
