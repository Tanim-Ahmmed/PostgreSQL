drop TABLE users;
drop TABLE post;

SELECT title, user_name FROM post
JOIN "users" ON post.user_id = users.id

SELECT * FROM post as p
JOIN "users" as u ON p.user_id = u.

SELECT * FROM post as p 
 RIGHT JOIN "users" as u ON p.user_id = u.id;

 SELECT * FROM post as p 
 LEFT JOIN "users" as u ON p.user_id = u.id;

  SELECT * FROM post as p 
   FULL JOIN "users" as u ON p.user_id = u.id;

SELECT * FROM post 
CROSS JOIN "users";

SELECT * FROM post 
NATURAL JOIN "users";