SELECT name AS Artista
  FROM artists ar
  JOIN albums a ON ar.id = a.artist_id
  GROUP BY name
  HAVING COUNT(a.id) >= 3
  ORDER BY name;
