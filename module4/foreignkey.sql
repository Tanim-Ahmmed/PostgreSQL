--foreign key

CREATE Table "users"(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) NOT NULL
);

CREATE Table post( 
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "users"(id) on delete cascade
);

INSERT into "users" (user_name) VALUES ('Mike'),('Jane'),('Alice'),('Bob');
INSERT into post (title, user_id) VALUES ('My first post', 1),('My 2nd post', 1),('My 3rd post', 3),('My 4th post', 1);

drop TABLE users;
drop TABLE post;

DELETE FROM users WHERE id = 3;