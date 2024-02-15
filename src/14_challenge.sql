SELECT
    ar.name AS Artista,
    GROUP_CONCAT(a.title) AS 'Álbuns'
FROM albums a
JOIN artists ar
ON a.artist_id = ar.id
GROUP BY ar.name
ORDER BY ar.name;