SELECT 
    a.song AS nome, COUNT(a.song_id) AS reproducoes
FROM
    songs AS a
        INNER JOIN
	reproduction_history b ON a.song_id = b.song_id
        INNER JOIN
    users c ON c.id = b.user_id
        INNER JOIN
    subscriptions d ON d.subscription_id = c.subscription_id
WHERE
    d.subscription IN ('gratuito' , 'pessoal')
GROUP BY a.song
ORDER BY a.song ASC;