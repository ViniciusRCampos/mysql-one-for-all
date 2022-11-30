SELECT 
    user_name AS usuario,
    CASE
        WHEN YEAR(MAX(b.reproduction_date)) >= '2021' THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS status_usuario
FROM
    users a
        INNER JOIN
    reproduction_history b ON (a.id = b.user_id)
GROUP BY user_name
ORDER BY user_name
