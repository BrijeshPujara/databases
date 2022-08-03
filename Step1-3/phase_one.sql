SELECT id, title, release_year
  FROM albums
  WHERE title = 'Doolittle';

  -- Primary Key (usually ID value, unique identifier)
  -- Foreign Key (usually used to link similar values from different tables)

  
  -- 03. Querying data - Challenge
SELECT title 
  FROM albums 
  WHERE artist_id = '1' AND release_year >= 1980 AND release_year <= 1990;

-- 04. Updating and deleting

UPDATE albums SET release_year = '1972'
  WHERE id = '3';

DELETE FROM albums WHERE id = '12';

-- 05. Creating new data

INSERT INTO albums 
  (title, release_year)
  VALUES('Mezzanine', '1998');

UPDATE albums SET artist_id = '5' WHERE id = '13';

-- New artist
INSERT INTO artists
  (name, genre)
  VALUES('Drake', 'Hip-Hop');
-- New album
INSERT INTO albums 
  (title, release_year, artist_id)
  VALUES('Certified Lover Boy', '2021', '5');




