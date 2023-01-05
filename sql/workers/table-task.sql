CREATE TABLE workers (
  id serial PRIMARY KEY,
  birthday date NOT NULL CHECK (birthday < current_date),
  name varchar(20) NOT NULL CHECK (name != ''),
  salary numeric (6, 2) NOT NULL CHECK (salary >= 0) DEFAULT 0,
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  updated_at timestamp NOT NULL DEFAULT current_timestamp
);
--
ALTER TABLE workers
ADD COLUMN is_male boolean,
ADD COLUMN email varchar(256) CHECK (email != ''),
ADD COLUMN department varchar(256) NOT NULL CHECK (department != '');
--
ALTER TABLE workers
DROP COLUMN department;
--
ALTER TABLE workers
ALTER COLUMN salary SET DEFAULT 150;




