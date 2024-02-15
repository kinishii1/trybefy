SELECT a.name AS Artista,
  COUNT(af.user_id) AS "Total de seguidores"
FROM artists a
JOIN artists_followers af ON af.artist_id = a.id
GROUP BY a.name
HAVING COUNT(af.user_id) < 5;