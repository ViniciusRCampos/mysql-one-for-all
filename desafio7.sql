SELECT 
    a.artist AS artista,
    b.album AS album,
    COUNT(c.artist_id) AS seguidores
FROM
    artists a
        INNER JOIN
    albuns b ON b.artist_id = a.artist_id
        INNER JOIN
    follow c ON c.artist_id = a.artist_id
GROUP BY b.album_id
ORDER BY seguidores DESC , artista , album;
