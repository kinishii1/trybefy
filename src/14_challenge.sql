SELECT
    artists.name AS Artista,
    GROUP_CONCAT(albums.title) AS 'Álbuns'
FROM albums
JOIN artists
ON albums.artist_id = artists.id
GROUP BY artists.name
ORDER BY artists.name;