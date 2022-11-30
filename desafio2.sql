SELECT
	COUNT(DISTINCT a.song_id) AS cancoes,
    COUNT(DISTINCT b.artist_id) AS artistas,
    COUNT(DISTINCT c.album_id) AS albuns

FROM songs a
INNER JOIN artists AS b
ON a.artist_id = b.artist_id
INNER JOIN albuns AS c
ON a.album_id = c.album_id;