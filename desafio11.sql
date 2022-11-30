SELECT song AS nome_musica,
CASE
	WHEN song LIKE '%Bard%' THEN REPLACE(song, 'Bard', 'QA')
	WHEN song LIKE '%Amar%' THEN REPLACE(song, 'Amar', 'Code Review')
	WHEN song LIKE '%Pais%' THEN REPLACE(song, 'Pais', 'Pull Requests') 
	WHEN song LIKE '%SOUL%' THEN REPLACE(song, 'SOUL', 'CODE')
	WHEN song LIKE '%SUPERSTAR%' THEN REPLACE(song, 'SUPERSTAR', 'SUPERDEV')
	END AS novo_nome
FROM songs
	WHERE
song_id in ('9', '7', '6', '1', '3')
ORDER BY novo_nome DESC;