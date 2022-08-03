-- CREATE TABLE recipes (
--   id SERIAL PRIMARY KEY,
--   names text,
--   avg_time int,
--   rating int
-- );



TRUNCATE TABLE recipes RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO recipes (names, avg_time, rating) VALUES ('Pasta', '20','4');
INSERT INTO recipes (names, avg_time, rating) VALUES ('Pizza', '30','5');
INSERT INTO recipes (names, avg_time, rating) VALUES ('Burger', '15','2');
INSERT INTO recipes (names, avg_time, rating) VALUES ('Sandwich', '5','3');