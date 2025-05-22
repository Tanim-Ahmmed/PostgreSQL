-- Database : postgres
CREATE TABLE person (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);
 SELECT * FROM person;

 ALTER TABLE person
 ADD COLUMN email VARCHAR(25) DEFAULT 'default@email.com' NOT NULL;
 INSERT into person values(7, 'test', 45);

ALTER TABLE person
 RENAME COLUMN age to user_age;

 ALTER TABLE person
    ALTER COLUMN name type VARCHAR(50);

 ALTER TABLE person
    ALTER COLUMN user_age set NOT NULL;

 ALTER TABLE person
    ALTER COLUMN user_age DROP NOT NULL;

TRUNCATE TABLE person;

