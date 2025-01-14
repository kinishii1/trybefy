SELECT a.name AS Artista
  FROM artists a
  JOIN artists_followers af ON af.artist_id = a.id
  GROUP BY a.name
  ORDER BY COUNT(af.user_id) DESC
  LIMIT 1;