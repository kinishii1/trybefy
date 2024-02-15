SELECT
    name AS Artista,
    COUNT(a.artist_id) AS 'Quantidade de álbuns'
FROM artists ar
JOIN albums a
ON ar.id = a.artist_id
GROUP BY name
ORDER BY COUNT(a.artist_id) DESC, name;