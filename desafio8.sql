SELECT 
    artist AS artista, album AS album
FROM
    albuns a
        INNER JOIN
    artists b ON (a.artist_id = b.artist_id)
WHERE
    b.artist = 'Elis Regina';

