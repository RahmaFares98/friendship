use friendship;
INSERT INTO users (id, first_name, last_name) VALUES
(1, 'Chris', 'Baker'),
(2, 'Diana', 'Smith'),
(3, 'James', 'Johnson'),
(4, 'Jessica', 'Davidson');

INSERT INTO friendships (user_id, friend_id) VALUES
(1, 4),
(1, 3),
(1, 2),
(2, 1),
(3, 1),
(4, 1);

SELECT u.first_name, u.last_name, f.first_name AS friend_first_name, f.last_name AS friend_last_name
FROM users u
JOIN friendships fs ON u.id = fs.user_id
JOIN users f ON fs.friend_id = f.id
ORDER BY friend_last_name;
