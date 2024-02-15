SELECT
  u.full_name AS "Pessoa usuária",
  COUNT(af.user_id) AS "Artistas que segue"
FROM users u
JOIN artists_followers af ON af.user_id = u.id
GROUP BY u.full_name
ORDER BY u.full_name;