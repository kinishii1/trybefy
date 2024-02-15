SELECT
    name AS Artista,
    COUNT(albums.artist_id) AS 'Quantidade de álbuns'
FROM artists
JOIN albums
ON artists.id = albums.artist_id
GROUP BY name
ORDER BY COUNT(albums.artist_id) DESC, name;