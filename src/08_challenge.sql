SELECT 
  full_name AS 'Nome completo',
  email AS 'E-mail',
  name AS 'Plano'
FROM users u
JOIN plans p
ON u.plan_id = p.id
ORDER BY full_name;

