SELECT 
	users.usuario AS usuario,
    COUNT(DISTINCT cancoes.musics) AS qtde_musicas_ouvidas,
    ROUND(SUM(cancoes.temp_music) / 60, 2) AS total_minutos
FROM 
	SpotifyClone.users AS users
INNER JOIN
	SpotifyClone.reproduz_uni AS reproduz_uni
ON
	reproduz_uni.usuario_id = users.usuario_id
INNER JOIN
	SpotifyClone.cancoes As cancoes
ON
	cancoes.cancoes_id = reproduz_uni.cancoes_id
GROUP BY
	users.usuario;