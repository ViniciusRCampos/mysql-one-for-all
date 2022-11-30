SELECT 
    user_name as usuario,
    COUNT(user_name) AS qt_de_musicas_ouvidas,
    ROUND(SUM(b.duration) / 60, 2) AS total_minutos
FROM
    reproduction_history AS a
        INNER JOIN
    songs AS b ON (a.song_id = b.song_id)
        INNER JOIN
    users AS c ON (a.user_id = c.id)
GROUP BY user_name
ORDER BY user_name;