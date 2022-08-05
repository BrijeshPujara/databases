TRUNCATE TABLE user_account, posts RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO user_account (username, email) VALUES ('Brijesh', 'brijesh7@hotmail.co.uk');
INSERT INTO user_account (username, email) VALUES ('Joe', 'j.bloggs@gmail.com');
INSERT INTO user_account (username, email) VALUES ('Bloggs', '1234@gmail.com');

INSERT INTO posts (views, title, content, user_account_id) VALUES (5, 'Football', 'Arsenal vs Crystal Palace 20.00pm', 1);
INSERT INTO posts (views, title, content, user_account_id) VALUES (2, 'Food', 'Best Pasta restaurant in London', 1);
INSERT INTO posts (views, title, content, user_account_id) VALUES (4, 'Movie', 'Fast and Furious spoilers', 2)