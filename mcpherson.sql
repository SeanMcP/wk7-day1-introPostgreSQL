-- Sean McPherson
-- Use a PostgreSQL database

CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at timestamp NOT NULL,
  completed_at timestamp NULL
);

INSERT INTO todos (title, created_at) VALUES ('Get the girl', TIMESTAMP '1985-09-14 21:52:12');

INSERT INTO todos (title, created_at) VALUES ('Sand the floor', TIMESTAMP '1985-09-15 16:44:23');

INSERT INTO todos (title, details, created_at) VALUES ('Paint the fence', 'Up and down', TIMESTAMP '1985-09-17 18:41:07');

INSERT INTO todos (title, details, created_at) VALUES ('Wax the floor', 'Wax on; wax off', TIMESTAMP '1985-09-21 19:23:16');

INSERT INTO todos (title, details, created_at, completed_at) VALUES ('Catch a fly with chopsticks', 'Concentration', TIMESTAMP '1985-09-22 17:36:23', TIMESTAMP '1985-09-15 17:37:12');

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority = 1;

UPDATE todos SET completed_at = NOW() WHERE id = 3;

DELETE FROM todos WHERE completed_at IS NOT NULL;
