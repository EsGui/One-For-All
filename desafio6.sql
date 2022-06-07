SELECT
	MIN(planos.valor_plano) AS faturamento_minimo,
    MAX(planos.valor_plano) AS faturamento_maximo,
    ROUND(SUM(planos.valor_plano) / COUNT(planos.valor_plano), 2) AS faturamento_medio,
    SUM(planos.valor_plano) AS faturamento_total
FROM 
	SpotifyClone.users
INNER JOIN
	SpotifyClone.planos AS planos
ON 
	users.plano_id = planos.p_id;