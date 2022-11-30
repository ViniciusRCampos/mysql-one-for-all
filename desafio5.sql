SELECT 
    song AS cancao, COUNT(b.song_id) AS reproducoes
FROM
    songs a
        INNER JOIN
    reproduction_history b ON (a.song_id = b.song_id)
GROUP BY song
ORDER BY reproducoes DESC , cancao
LIMIT 2;
