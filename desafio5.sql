SELECT
	cancoes.musics AS cancao,
    COUNT(users.usuario) AS reproducoes
FROM
	SpotifyClone.reproduz_uni AS reproduz_uni
INNER JOIN
	SpotifyClone.users AS users
ON 
	reproduz_uni.usuario_id = users.usuario_id
INNER JOIN
	SpotifyClone.cancoes AS cancoes
ON 
	cancoes.cancoes_id = reproduz_uni.cancoes_id
GROUP BY
	cancoes.musics
ORDER BY
	COUNT(users.usuario) DESC,
    cancoes.musics ASC;