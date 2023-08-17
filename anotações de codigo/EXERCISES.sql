-- EXERCICIOS -- 
-- 1) Insira 5 usuários
INSERT INTO users (first_name, last_name, email, password_hash, salary)
VALUES ('Isa1', 'Dora', 'isaadora@email', 'senha', RAND() * 1000),
		('Paulin', 'Moraes', 'emailPaulin@email', 'senha1', 100000),
		('FElipe', 'Dylon', 'felipedilon@email', 'senhadilon', 100000),
		('rafabla', 'STER', 'EMAILRAFABLASTER@EMAIL.COM', 'senhabla', 1000000),
		('RU', 'b', 'rub', 'RUBAGINO', 10000000);
	
SELECT id, first_name  FROM users
ORDER BY id DESC ;

-- 2) Insira 5 perfís para os usuários inseridos
	INSERT INTO profiles(bio, description, user_id)
	VALUES ('bio do rubbbaaa', 'rubatino', 116),
			('raf', 'ablaster', 115),
			('dylon', 'lipe', 114),
			('paulin', 'bacana', 113),
			('my love', 'a dora', 112);
-- 3) Insira permissões (roles) para os usuários inseridos
		INSERT INTO users_roles (user_id, role_id)
		VALUES (116, 5),
			   (115, 6),
			   (114 , 5),
			   (113, 7),
			   (112, 5);
				
		
-- 4) Selecione os últimos 5 usuários por ordem decrescente
		SELECT * FROM users
		ORDER BY id DESC LIMIT 5;
-- 5) Atualize o último usuário inserido
	UPDATE users SET 
	first_name =  'RUBATINO', 
	last_name  = 'RUBATINO TAMBEM', 
	email = 'RUBATINOTEM@EMAIL',
	password_hash = 'RUBATINO123',
	salary  = 100000
	WHERE id = 116;
-- 6) Remova uma permissão de algum usuário
	DELETE FROM users_roles 
	WHERE user_id  = 116;
-- 7) Remova um usuário que tem a permissão "PUT"
	DELETE FROM users_roles 
	WHERE role_id = 5 AND user_id = 105;
-- 8) Selecione usuários com perfís e permissões (obrigatório)

	SELECT u.id AS uid, u.first_name, u.last_name, p.bio, p.description, r.name  FROM users u
	INNER JOIN profiles p
	ON u.id = p.user_id 
	LEFT JOIN roles r 
	ON u.id = p.user_id;
	
-- 9) Selecione usuários com perfís e permissões (opcional)
	SELECT u.id AS uid, u.first_name, u.last_name, p.bio, p.description, r.name  FROM users u
	LEFT JOIN users_roles ur ON u.id = ur.user_id 
	LEFT JOIN roles r ON ur.role_id = r.id
	LEFT JOIN profiles p ON p.user_id = u.id;
-- 10) Selecione usuários com perfís e permissões ordenando por salário
	SELECT u.id AS uid, u.first_name, u.last_name, u.salary , p.bio, p.description, r.name  FROM users u
	INNER JOIN profiles p
	ON u.id = p.user_id 
	LEFT JOIN roles r 
	ON u.id = p.user_id
	ORDER BY u.salary DESC;
