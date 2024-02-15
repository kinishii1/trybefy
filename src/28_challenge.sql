-- Escreva uma query que retorne o nome das pessoas usuárias e o total das pessoas artistas que ela segue. Ordene o resultado pelo nome das pessoas usuárias, em ordem alfabética


--     A coluna full_name com o alias Pessoa usuária;
--     A coluna com o total de pessoas artistas seguidas com o alias Artistas que segue.

SELECT
  u.full_name AS "Pessoa usuária",
  COUNT(af.user_id) AS "Artistas que segue"
FROM users u
JOIN artists_followers af ON af.user_id = u.id
GROUP BY u.full_name
ORDER BY u.full_name;