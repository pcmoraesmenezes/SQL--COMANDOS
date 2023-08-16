USE base_de_dados;
SELECT 
u.id as uid, u.first_name, p.bio, r.name
FROM users as u
LEFT JOIN profiles as p ON u.id = p.user_id 
INNER JOIN users_roles AS ur ON u.id = ur.user_id 
INNER JOIN roles AS r ON ur.role_id = r.id;