SELECT
  a.title AS Álbum,
  SUM(s.duration_in_seconds) AS Duração
FROM albums a
JOIN songs s ON a.id = s.album_id
GROUP BY a.title
ORDER BY Duração DESC;