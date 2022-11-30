SELECT 
    COUNT(b.song_id) AS quantidade_musicas_no_historico
FROM
    users a
        INNER JOIN
    reproduction_history b ON (a.id = b.user_id)
WHERE
    user_name = 'Barbara Liskov';

