SELECT
	COUNT(cancoes_id) AS 'quantidade_musicas_no_historico'
FROM
	SpotifyClone.reproduz_uni AS reproduz_uni
INNER JOIN
	SpotifyClone.users AS users
ON
	users.usuario_id = reproduz_uni.usuario_id
WHERE
	users.usuario = 'Bill';