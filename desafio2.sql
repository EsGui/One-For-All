SELECT 
	COUNT(cancoes.musics) AS cancoes,
    COUNT(DISTINCT artistas.seguindo) AS artistas,
    COUNT(DISTINCT albuns.album) AS albuns
FROM 
	SpotifyClone.cancoes As cancoes
INNER JOIN
	SpotifyClone.albuns As albuns
ON
	albuns.album_id = cancoes.album_ref
INNER JOIN
	SpotifyClone.artistas As artistas
ON
	artistas.artista_id = albuns.artist_id;