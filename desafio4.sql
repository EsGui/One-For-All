SELECT 
	DISTINCT users.usuario AS usuario,
    IF(MAX(YEAR(reproducoes.reproduz)) = 2021, 'Usuário Ativo', 'Usuário Inativo') AS condicao_usuario
FROM 
	SpotifyClone.reproduz_uni AS reproduz_uni
INNER JOIN
	SpotifyClone.users AS users
ON 
	users.usuario_id = reproduz_uni.usuario_id
INNER JOIN
	SpotifyClone.reproducoes AS reproducoes
ON
	reproducoes.rep_id = reproduz_uni.reproduz_id
GROUP BY
	users.usuario
ORDER BY
	users.usuario ASC;