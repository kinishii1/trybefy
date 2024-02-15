SELECT 
  name AS 'Plano',
  COUNT(u.plan_id) AS 'Quantidade de usuários'
FROM users u
JOIN plans p
ON u.plan_id = p.id
GROUP BY name
ORDER BY name;
