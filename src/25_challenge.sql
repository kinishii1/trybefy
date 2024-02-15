-- Escreva uma query que retorne o nome dos álbuns e a quantidade de músicas reproduzidas daquele álbum, mas exiba apenas os cinco primeiros resultados. Ordene o resultado pela maior quantidade de reprodução e em caso de empate, ordene pelo nome do álbum, em ordem alfabética

--     A coluna title com o alias Álbum.
--     A coluna com a soma das reproduções com o alias Quantidade de músicas reproduzidas;

SELECT
  a.title AS Álbum,
  COUNT(hps.id) AS "Quantidade de músicas reproduzidas"
FROM albums a
JOIN songs s ON s.album_id = a.id
JOIN history_play_songs hps ON hps.song_id = s.id
GROUP BY a.title
ORDER BY COUNT(hps.id) DESC, a.title
LIMIT 5;