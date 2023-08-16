USE base_de_dados;

-- SELECT u.id, p.bio
UPDATE users AS u 
JOIN profiles AS p
ON u.id = p.user_id 
SET p.bio = 'Beautiful'
WHERE u.first_name = 'Isa';


SELECT u.id, u.first_name, p.bio
FROM users AS u 
JOIN profiles AS p 
ON u.id = p.user_id; 