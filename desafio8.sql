SELECT 
	artistas.seguindo AS artista,
    albuns.album AS album
FROM 
	SpotifyClone.artistas AS artistas
INNER JOIN
	SpotifyClone.albuns AS albuns
ON
	albuns.artist_id = artistas.artista_id
LIMIT 2;