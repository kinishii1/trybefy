SELECT
  a.name AS Artista,
  COUNT(hps.id) AS "Quantidade de músicas reproduzidas"
FROM artists a
JOIN albums al ON al.artist_id = a.id
JOIN songs s ON s.album_id = al.id
JOIN history_play_songs hps ON hps.song_id = s.id
GROUP BY a.name
HAVING COUNT(hps.id) > 10
ORDER BY a.name;