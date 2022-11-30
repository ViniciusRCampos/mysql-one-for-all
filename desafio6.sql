SELECT 
    FORMAT(MIN(a.price), 2) AS faturamento_minimo,
    FORMAT(MAX(a.price), 2) AS faturamento_maximo,
    FORMAT(AVG(a.price), 2) AS faturamento_medio,
    FORMAT(SUM(a.price), 2) AS faturamento_total
FROM
    subscriptions a
        INNER JOIN
    users b ON (b.subscription_id = a.subscription_id);

