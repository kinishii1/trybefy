SELECT
  ar.name AS Artista,
  COUNT(s.id) AS "Quantidade de músicas"
FROM artists ar
JOIN albums a ON ar.id = a.artist_id
JOIN songs s ON a.id = s.album_id
GROUP BY ar.name
ORDER BY COUNT(s.id) DESC, ar.name
LIMIT 3;
