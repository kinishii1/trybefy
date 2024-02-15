-- Escreva uma query que retorne o nome das pessoas usuárias e a quantidade de músicas reproduzidas por ela. Ordene o resultado pela maior quantidade de reprodução e em caso de empate, ordene pelo nome da pessoa, em ordem alfabética


--     A coluna name com o alias Nome.
--     A coluna com a soma das reproduções com o alias Quantidade de músicas reproduzidas;


SELECT
  u.full_name AS Nome,
  COUNT(hps.id) AS "Quantidade de músicas reproduzidas"
FROM users u
JOIN history_play_songs hps ON u.id = hps.user_id
GROUP BY u.full_name
ORDER BY COUNT(hps.id) DESC, u.full_name;
