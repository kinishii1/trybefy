SELECT
  u.full_name AS Nome,
  COUNT(hps.id) AS "Quantidade de músicas reproduzidas"
FROM users u
JOIN history_play_songs hps ON u.id = hps.user_id
GROUP BY u.full_name
ORDER BY COUNT(hps.id) DESC, u.full_name;
