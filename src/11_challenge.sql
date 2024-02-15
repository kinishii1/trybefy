SELECT 
  title AS Album,
  release_year AS 'Ano de lançamento',
  ar.name AS Artista
FROM albums a
JOIN artists ar
ON a.artist_id = ar.id
WHERE title LIKE '%you%'
ORDER BY release_year;
