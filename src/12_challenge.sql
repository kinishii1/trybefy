--  Escreva uma query que retorne o nome das pessoas artistas e a respectiva quantidade de álbuns que cada uma possui. Ordene o resultado pelas pessoas que possuem mais álbuns e em caso de empate, ordene pelo nome da pessoa artista, em ordem alfabética

 
--     A coluna name com o alias Artista;
--     A coluna com a contagem dos álbuns com o alias Quantidade de álbuns.

SELECT
    name AS Artista,
    COUNT(albums.artist_id) AS 'Quantidade de álbuns'
FROM artists
JOIN albums
ON artists.id = albums.artist_id
GROUP BY name
ORDER BY COUNT(albums.artist_id) DESC, name;